#include <opencv2/opencv.hpp>
#include <opencv2/face.hpp>
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/objdetect.hpp>
#include <fstream>
#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <sstream>

// Function to load ID and names from a CSV file
std::map<int, std::string> loadIdNames(const std::string& csvFilePath) {
    std::map<int, std::string> idNames;
    std::ifstream file(csvFilePath);
    if (!file.is_open()) {
        std::cerr << "Error opening file: " << csvFilePath << std::endl;
        return idNames;
    }

    std::string line;
    while (std::getline(file, line)) {
        std::stringstream ss(line);
        std::string idStr, name;
        if (std::getline(ss, idStr, ',') && std::getline(ss, name)) {
            try {
                int id = std::stoi(idStr);
                if (!name.empty()) {
                    idNames[id] = name;
                } else {
                    std::cerr << "Empty name for ID: " << id << std::endl;
                }
            } catch (const std::invalid_argument&) {
                std::cerr << "Invalid ID: " << idStr << " in line: " << line << std::endl;
            } catch (const std::out_of_range&) {
                std::cerr << "ID out of range: " << idStr << " in line: " << line << std::endl;
            }
        } else {
            std::cerr << "Malformed line: " << line << std::endl;
        }
    }
    file.close();
    return idNames;
}

int main(int argc, char* argv[]) {
    // Validate arguments
    if (argc < 4) {
        std::cerr << "Usage: " << argv[0] 
                  << " <id-names.csv> <haar-cascade-path> <trained-model-path>" << std::endl;
        return -1;
    }

    std::string csvPath = argv[1];
    std::string haarCascadePath = argv[2];
    std::string trainedModelPath = argv[3];

    // Load ID names from CSV
    std::map<int, std::string> idNames = loadIdNames(csvPath);
    if (idNames.empty()) {
        std::cerr << "No valid ID-name pairs loaded from CSV." << std::endl;
        return -1;
    }

    // Load Haar Cascade Classifier
    cv::CascadeClassifier faceClassifier(haarCascadePath);
    if (faceClassifier.empty()) {
        std::cerr << "Error loading Haar Cascade Classifier from " << haarCascadePath << std::endl;
        return -1;
    }

    // Load the trained LBPH recognizer
    cv::Ptr<cv::face::LBPHFaceRecognizer> lbph = cv::face::LBPHFaceRecognizer::create();
    lbph->setThreshold(500.0);
    try {
        lbph->read(trainedModelPath);
    } catch (const cv::Exception& e) {
        std::cerr << "Error loading trained model: " << e.what() << std::endl;
        return -1;
    }

    // Open the webcam
    cv::VideoCapture camera(0);
    if (!camera.isOpened()) {
        std::cerr << "Error opening camera." << std::endl;
        return -1;
    }

    std::cout << "Press 'q' to quit." << std::endl;

    cv::Mat img, grey;
    while (cv::waitKey(1) != 'q') {
        camera >> img;
        if (img.empty()) continue;

        // Convert to grayscale
        cv::cvtColor(img, grey, cv::COLOR_BGR2GRAY);

        // Detect faces
        std::vector<cv::Rect> faces;
        faceClassifier.detectMultiScale(grey, faces, 1.1, 4);

        for (const auto& face : faces) {
            cv::Mat faceRegion = grey(face);
            cv::resize(faceRegion, faceRegion, cv::Size(220, 220));

            int label = -1;
            double trust = 0.0;
            lbph->predict(faceRegion, label, trust);

            auto it = idNames.find(label);
            if (it != idNames.end() && trust > 0) {
                const std::string& name = it->second;
                // Draw rectangle and name
                cv::rectangle(img, face, cv::Scalar(0, 255, 0), 2);
                cv::putText(img, name, cv::Point(face.x, face.y - 10),
                            cv::FONT_HERSHEY_COMPLEX, 0.8, cv::Scalar(0, 255, 0), 2);
            } else {
                cv::rectangle(img, face, cv::Scalar(0, 0, 255), 2);
                cv::putText(img, "Unknown", cv::Point(face.x, face.y - 10),
                            cv::FONT_HERSHEY_COMPLEX, 0.8, cv::Scalar(0, 0, 255), 2);
            }
        }

        // Display the video feed with detections
        cv::imshow("Recognize", img);
    }

    // Release the camera and destroy windows
    camera.release();
    cv::destroyAllWindows();

    return 0;
}


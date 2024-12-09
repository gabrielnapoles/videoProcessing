# Facial Recognition | infominds

Este projeto é composto por 3 classes .cpp principais: 

1. takephotos.cpp -> responsavel pela captura de id, nome e frame da face do usuário. Em seguida, id e nome são salvos como novas linhas dentro do  arquivo id_names.csv que, por sua vez será salvo em "/train" e "/train/Recog/Classifiers". Os frames da face serão salvos em /train/faces/{id}, onde {id} é o valor passado no campo id no momento da captura.
Executar o seguinte comando:

./takephotos

2. Train.cpp -> classe responsável pela geração de parâmentros de reconhecimentos a partir dos frames capturados. Os parâmetros serão salvos no arquivo TrainedLBPH.yml em "/train/Recog/Classifiers"
Executar o seguinte comando:

./Train

3. recognize_face.cpp -> responsável pela atribuição de rótulo ao usuário (nome) quando este for "reconhecido".
Executar o seguinte comando:

./recognize_face ./Classifiers/id-names.csv ./Classifiers/haarface.xml ./Classifiers/TrainedLBPH.yml

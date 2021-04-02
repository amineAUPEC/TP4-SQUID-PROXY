#!/bin/bash
cartes="eth0 eth1 eth2"
echo "Reset de l’interface : $cartes" 
sudo ip a flush dev $cartes &> /dev/null
if [ $? -eq 0 ] # si la valeur de retour vaut 0 donc sans erreur 
    then 
        echo "OK" #donc on affiche ok
else  
    echo "NOK" #sinon on affiche NOK
fi

#/!/bin/bash

# Entrer Hello uniquement pour avoir un message en retour
if [ $1 == Hello ]
then
  echo "Bonjour,je suis un script !"

# Entrer Bye uniquement pour avoir un message en retour
elif [ $1 == Bye ]
then 
  echo "Au revoir et bonne journée !"

# Si aucun des deux arguments saisis, message de rappel
else 
  echo "Hello or Bye only"
fi


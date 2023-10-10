#!/bin/bash

# Emplacement du fichier CSV (dans le même dossier que le script)
csv_file="Shell_Userlist.csv"

# Parcours du fichier CSV
while IFS=',' read -r id prenom nom mdp role; do 

	# Saut de la première ligne
	if [ "$id" != "Id" ]; then

		# Vérification de l existance de l utilisateur
		if id "$prenom" &>/dev/null; then

			# Modification de l'utilisateur
			usermod -m -d "/home/$prenom" -c "$prenom$nom"  "$prenom" 

			# Elévation ou suppression des privilèges administrateur
			if [ "$role" = "Admin" ]; then
				usermod -aG sudo "$prenom"
			else
				deluser "$prenom" sudo &>/dev/null
			fi

		else

			# Création de l'utilisateur
			useradd -m "$prenom" -d "/home/$prenom" -G users -c "$prenom$nom" -u "$id" --badname
			# Elévation des privilèges administrateur
			if [ "$role" == "Admin" ]; then
				useradd -aG "$prenom" sudo --badname
			fi
		fi
	fi
done < "$csv_file"

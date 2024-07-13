# RaspyDarts Installer

Le script RaspyDartsInstall.sh permet d'installer RaspyDarts sans avoir à flasher l'image complète sur un Raspberry PI dédié. Vous pouvez donc installer et lancer RaspyDarts sur un Raspberry PI déjà configuré avec vos logiciels et jeux sans devoir repartir de zéro.

## Installation

- Téléchargez le script https://github.com/samuel-tranchet/raspydarts-installer/blob/main/RaspyDartsInstall.sh et copiez-le sur votre Raspberry PI
- Ajoutez les droits d'execution à ce fichier, soit grâce au menu contextuel (clic droit) "propriétés->permissions->éxécution->tout le monde", soit avec la commande "sudo chmod a+x RaspyDartsInstall.sh"

 ![Ajoutez les droits](./Images/01-SetPermissions.gif)

- Lancez le script dans le terminal (double clic ou ligne de commande ./RaspyDartsInstall.sh dans le dossier où se trouve le script)
- Patientez le temps d'éxécution du script (environ 15-20 minutes), il va télécharger l'image officielle du jeu (environ 4Go), la monter sans remplacer votre système d'exploitation, copier tous les fichiers nécessaires au jeu sur votre Raspberry PI et installer les dépendances nécessaires.

 ![Lancez le script](./Images/02-RunScript.gif)

- Pendant l'installation un dossier "tmp" doit apparaitre dans le même dossier que le script, quand l'installation a réussi ce dossier tmp doit avoir été supprimé par le script. Une fois que cela et fait vous pouvez supprimer le script RaspyDartsInstall.sh de votre Raspberry PI.
- Lancez RaspyDarts et configurez-le comme si vous aviez flashé l'image complète.

 ![Enjoy](./Images/03-Enjoy.gif)


## Notes

Veuillez considérer le script comme une version bêta, il a été testé avec succés sur un Raspberry PI 4 mais il peu y avoir des cas particuliers sur les autres modèles. Si vous rencontrez des difficultés merci de m'en faire part avec le maximum de détails pour que je corrige le problème.
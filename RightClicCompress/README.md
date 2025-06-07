# --- RightClicCompress ---

# Ajout d'une option "Compresser avec RightClicCompress" au menu contextuel Windows

- Fonctionne pour Windows 10 et 11
- Rapide d'utilisation et efficace

# Contenu

- RightClicCompress
  - compresser_mp4.bat
  - HandBrakeCLI.exe
  - install.bat
  - uninstall.reg
  - README.md

# Installation

- placer le dossier RightClicCompress dans un dossier qui ne va pas bouger : Program Files, Desktop, Docs, etc
- executer install.bat et autoriser : ajoute l'option au menu contextuel des fichiers mp4

# Utilisation

- clic droit sur la video "<nomcible>.mp4" à compresser
- clic sur "Compresser avec RightClicCompress"
- une fenêtre de commande s'ouvre et compresse le fichier (sinon, voir Notes importantes)
- le fichier "<nomcible>_compressed.mp4" est créé au même endroit que l'original

# Désinstaller

- executer uninstall.reg : supprime l'option au menu contextuel des fichiers mp4
- supprimer le dossier RightClicCompress

# Reinstaller

- executer uninstall.reg : supprime l'option au menu contextuel des fichiers mp4
- executer install.bat et autoriser : ajoute l'option au menu contextuel des fichiers mp4

# Notes importantes

- après l'installation, éviter de déplacer ou renommer le dossier RightClicCompress (faites le avant)
- si "Compresser avec RightClicCompress" ne fonctionne plus, suivre les étapes de Reinstaller

# Auteurs et Crédits

- Technologie de compression : HandBrake ( https://handbrake.fr )
- Commandes d'installations : Bastien Isnard + ChatGPT

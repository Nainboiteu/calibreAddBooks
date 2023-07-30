<img src="Icons/CalibreAddIcon.png?raw=true" width="25%" height="25%">

# Calibre Auto Add Books
 Docker to create a image that automatically add books to a Calibre Library at start.
 
 **Notes:** 
 1. Books added to Calibre will be deleted from the ```/books_to_add``` folder
 2. If a book is not added to the Calibre Library **it will not be deleted**
 2. After the scrip execution, the container will automatically stop
 4. You can find the script responsible for adding books to Calibre in the /app/scripts folder (addBooks.sh)


## Container Mappings
| Host Folder  | Container Folder |
| ------------- | ------------- |
| Folder containing Calibre Library (incl. *.db)  | /calibreLibrary |
| Folder where you can add books to be added  | /books_to_add  |
| Folder where you can modify the script to add books directly to Calibre  | /app/scripts  |

**Note:** A full Calibre Installation with an X server and a Web VNC viewer are included since the image is based on [LinuxServer's Calibre image](https://hub.docker.com/r/linuxserver/calibre). You can find the mappings directly on LinuxServer's Calibre image Docker Hub page.
 

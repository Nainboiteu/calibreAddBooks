FROM linuxserver/calibre:latest
RUN mkdir /app/scripts /calibreLibrary /books_to_add
#COPY addBooks.sh /app/scripts/addBooks.sh
RUN wget https://raw.githubusercontent.com/Nainboiteu/calibreAddBooks/main/addBooks.sh -O /app/scripts/addBooks.sh
RUN chmod +x /app/scripts/addBooks.sh
RUN cd /books_to_add
CMD ["/app/scripts/addBooks.sh"]
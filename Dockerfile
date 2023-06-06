FROM nextcloud:25

RUN apt update && apt install smbclient cifs-utils libsmbclient-dev -y

ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2-foreground"]

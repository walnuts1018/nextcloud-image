FROM nextcloud:25.0.5-apache

RUN apt update && apt install smbclient cifs-utils libsmbclient-dev -y

ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2-foreground"]

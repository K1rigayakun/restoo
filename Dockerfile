# Gunakan PHP CLI (tanpa Apache bawaan)
FROM php:8.2-cli

# Install Apache dan PDO MySQL
RUN apt-get update && \
    apt-get install -y apache2 libapache2-mod-php && \
    docker-php-ext-install pdo pdo_mysql

# Copy semua file PHP ke web root Apache
COPY . /var/www/html/

WORKDIR /var/www/html/

# Enable mod_rewrite
RUN a2enmod rewrite

# Set port Apache
EXPOSE 8080

# Jalankan Apache di foreground
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

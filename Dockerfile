FROM nginx

# Update packages and remove default index.html
RUN apt update && rm -rf /usr/share/nginx/html/index.html

# Copy your website files into the NGINX web directory
COPY index.html  /usr/share/nginx/html/

# Expose port 80 (standard for web servers)
EXPOSE 80

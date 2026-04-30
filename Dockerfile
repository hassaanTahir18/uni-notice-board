# Use a lightweight web server (Nginx) to host the site
FROM nginx:alpine

# Copy the 'dist' folder (created by Parcel) into the web server's folder
COPY dist/ /usr/share/nginx/html/

# Expose port 80 so we can see the site
EXPOSE 80

# Start the web server
CMD ["nginx", "-g", "daemon off;"]
# Create a new image with Nginx
FROM nginx:alpine


# Copy the React.js build from the previous build stage to Nginx's web root directory
COPY --from=build /app/build /usr/share/nginx/html

# Expose port 80 for the Nginx server
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

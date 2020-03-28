FROM nginx:1.17-alpine

# copy static files
COPY dist/browser/* /usr/share/nginx/html/
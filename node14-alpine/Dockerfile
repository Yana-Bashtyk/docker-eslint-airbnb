FROM node:14-alpine
LABEL maintainer="yankabashtyk16@gmail.com" \
      version="2.0" \
      docker.cmd="docker run --rm -it -v $(pwd):/app yanabashtyk/eslint:14-alpine"

# Install required NPM packages globally
RUN npm install -g eslint eslint-config-airbnb eslint-plugin-react eslint-plugin-import

# Copy required files and set as executable
COPY ./eslint.sh /root/eslint.sh
COPY ./.eslintrc.yml /root/.eslintrc.yml
RUN chmod +x /root/eslint.sh

WORKDIR /app

# Set entrypoint for using existing .eslintrc.* or using a default
ENTRYPOINT ["/root/eslint.sh"]
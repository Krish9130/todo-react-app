FROM public.ecr.aws/library/node:18-slim AS build

WORKDIR /opt/

COPY . .

RUN npm install && npm run build

FROM nginx:latest

COPY --from=build /opt/build/ /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

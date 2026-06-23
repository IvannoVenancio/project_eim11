FROM node:22

WORkDIR /home/app

COPY --chown=node:node  package*.json ./

COPY --chown=node:node  . .
RUN npm install
CMD ["sh", "-c", "npm run dev" ]
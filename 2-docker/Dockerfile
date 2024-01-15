//é a imagem base do projeto e a versão dela, essa versão do node é uma versão mais leve
FROM node:16-alpine

//é a pasta onde o projeto será salvo no container. Cada container tem uma estrutura de pastas e aqui a gente define qual será a do projeto, caso ela não exista o docker vai criar
WORKDIR /app 

//aqui eu copio os arquivos do node para a pasta do projeto para que o docker saiba quais são as dependências do projeto
COPY package.json /app/
COPY package-lock.json /app/

//depois do docker saber as dependências ele vai instalar elas com o comando abaixo
RUN npm install

//aqui eu digo pra ele copiar todos os arquivos dessa pasta para a pasta do projeto no container (. é igual a todos)
COPY . /app/

//expondo a porta do container para poder acessá-lo
EXPOSE 3000

//comando para executar o projeto, o comando CMD é diferente do RUN pois ele pode rodar somente uma vez no arquivo do docker
//tenho que passar o comando em forma de array
CMD [ "npm", "run", "dev"]

//agora preciso criar uma imagem baseada nessa arquivo, então rodo o seguinte comando no cmd passando o caminho para o arquivo dockerfile
//normalmente vai rodar esse comando já na pasta do projeto, então é só colocar um ponto que ele acha o Dockerfile
//o -t é pra dar um nome para a imagem
docker build -t meu-app .
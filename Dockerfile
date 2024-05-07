# Use uma imagem base do Node.js com a versão desejada
FROM node:14

# Diretório de trabalho dentro do contêiner
WORKDIR /app

# Instalação do Git
RUN apt-get update && apt-get install -y git

# Clona o código da aplicação do repositório do GitHub
RUN git clone https://github.com/Kahdzi/somativa-2.git .

# Instala as dependências do projeto
RUN npm install

# Expor a porta em que a aplicação irá ser executada (se necessário)
EXPOSE 3000

# Comando para iniciar a aplicação quando o contêiner for iniciado
CMD ["npm", "start"]

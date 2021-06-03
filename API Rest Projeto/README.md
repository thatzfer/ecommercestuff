<h1 align="center">Welcome to apiproject 👋</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-1.0.0-blue.svg?cacheSeconds=2592000" />
  <a href="#" target="_blank">
    <img alt="License: ISC" src="https://img.shields.io/badge/License-ISC-yellow.svg" />
  </a>
</p>

## Install

```sh
npm install
```

## Run tests

```sh
npm run test
```
## API

Application Programming Interface (API) é um conjunto de rotinas estabelecidas por uma aplicação para que outras aplicações possam utilizar suas funcionalidades. É responsável pela comunicação entre diferentes serviços/tecnologias.

### REST

Representational State Transfer, ou seja, é feita uma transferência de dados figurativa, representativa. 
A transferência de dados geralmente utiliza o protocolo HTTP.
Dados são usualmente chamados de RESOURCES, que são entidades.
O REST determina algumas obrigações a serem observadas nessa transferência de resources: 

### RESTful

É a aplicação nos padrões REST, seguindo as 6 obrigações delimitadas pelo REST na transferência de resources:
- _Client-server_: separação do cliente e do armazenamento de dados, propiciando portabilidade do sistema (ex: React pra WEB e React Native pro smartphone).
- _Stateless_: cada requisição do cliente para o server deve conter todas as informações necessárias para que este entenda e responda (response) a requisição (request).
- _Cache_: as respostas de cada requisição devem ser explícitas ao dizer se essa requisição pode ou não ser cacheada pelo cliente.
- _Layered system_: o cliente, ao acessar o endpoint, não precisa saber quais os passos necessários para o servidor responder à requisição nem com quantas camadas o servidor tem que lidar para que a requisição seja respondida.
- _Code on Demand_: possibilita que a aplicação pegue códigos, como o javascript, e execute no cliente.
- _Uniform Interface_: seguir uma padronização nos resources para que haja a correta integração entre cliente e servidor.

## BOAS PRÁTICAS

- usar HTTP nas requisições.
- não usar / no final do endpoint.
- nunca deixar o cliente sem resposta.

### Verbos HTTP

verbos HTTP
GET: recebe dados de um resource.
POST: envia dados ou infos pra serem processados por um resource.
PUT: atualiza os dados de um resource.
DELETE: deleta um resource.

### STATUS DAS RESPOSTAS

- 1xx: Informação
- 2xx: Sucesso
    - 200: OK
    - 201: CREATED
    - 204: Não tem conteúdo PUT POST DELETE
- 3xx: Redirection
- 4xx: Client Error
    - 400: Bad Request
    - 404: Not Found
- 5xx: Server Error
    - 500: Internal Server Error

## Show your support

Give a ⭐️ if this project helped you!


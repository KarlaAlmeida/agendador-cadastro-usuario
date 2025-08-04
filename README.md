# 🧾 API de Cadastro de Usuário

API responsável pelo cadastro, autenticação e gerenciamento de usuários de um sistema de agendamento de tarefas.

## 🚀 Funcionalidades

- Cadastro de novo usuário com validação de e-mail
- Login com geração de token JWT
- Consulta de usuários por e-mail
- Exclusão de usuário por ID
- Atualização de dados do usuário
- Atualização de lista de endereço e de telefone de usuário
- Cadastro de novo endereço ou telefone de usuário nas respectivas listas
- Integração com ViaCEP para preenchimento automático de endereço

## 🔐 Segurança

- Spring Security com autenticação JWT (`JwtUtil`)
- Criptografia de senhas com SecretKey

## 🔗 Integrações

- 📡 [ViaCEP](https://viacep.com.br): consulta de dados de endereço via CEP
- 🔗 Comunicação com outros serviços via OpenFeign

## 📚 Documentação

- Swagger (Springdoc OpenAPI 3)
  - Rota: `/swagger-ui.html`

## 🛠️ Tecnologias Utilizadas

- Java 21
- Spring Boot
- Spring Security + JWT
- Spring Data JPA
- OpenFeign
- PostgreSQL
- Docker

## 🧱 Arquitetura

- Clean Architecture
- Domain-Driven Design simplificado
- Princípios SOLID

## ✅ Boas Práticas

- DTOs e validações com Bean Validation
- Padrão de desenvolvimento em camadas: Controller, Business (Service, Converters, DTOs), Infra (Entities, Repositories, Security, Interfaces FeignClient, Exceptions)
- Padrão de projeto com Builder Converter para converter objetos Entity de objetos DTO
- Tratamento global de exceções
- Uso de Swagger para testes e documentação da API

## 📦 Como Rodar

```bash
docker-compose up --build

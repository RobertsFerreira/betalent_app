# Betalent APP

 Betalent APP é um aplicativo voltado para o teste técnico fornecido pela **Betalent Tech**.
 Para sua construção foi necessário seguir o [Figma do projeto](https://www.figma.com/design/Lpdera6rS8SztMUAwzkpN0/Teste-T%C3%A9cnico-Mobile-BeTalent?node-id=1-4&node-type=canvas&t=ilyEeJ2SwabAGp0w-0). A aplicação foi construída utilizado Flutter para mobile e para obtenção dos dados foi utilizado o dart junto ao package [json_rest_server](https://pub.dev/packages/json_rest_server) para gerar uma api json baseada nos dados fornecidos no repository [desafio-mobile](https://github.com/BeMobile/desafio-mobile).

 Deverá seguir os seguintes requisitos:

- [x] Filtragem por Nome, Cargo e Telefone, utilizando o input na tela
- [x] A tabela deve conter as seguintes colunas
  - [x] imagem (thumb do/a usuário/a)
  - [x] nome
  - [x] cargo
  - [x] data de admissão
  - [x] telefone
- [x] Datas e Telefones Formatadas pelo Front-end
- [x] Dados acessados através da API
- [x] Criação de um readme

## Requirimentos

- Flutter: 3.24.5
- Dart: 3.5.4

## Rodar o projeto

1. **Instalar o pacote [json_rest_server](https://pub.dev/packages/json_rest_server) no dart**;

   ```bash
   dart pub global activate json_rest_server
   ```

2. **Clone este repositório da API no GitHub**

   ```bash
   git clone https://github.com/BeMobile/desafio-mobile
   ```

3. **Execute o comando para iniciar a API simulada**

   - Criar a pasta com a configuração do server

     ```bash
     json_rest_server create ./server
     ```

   - Copiar o arquivo database.json para a pasta server e
     substitua o existente dentro dela

   - Rode o server

     ```bash
     cd ./server
     ```

     ```bash
     json_rest_server run
     ```

4. **Clone o repository do Aplicativo**

   ```bash
   git clone https://github.com/RobertsFerreira/betalent_app.git
   ```

   ```bash
   cd betalent_app
   ```

5. **Executar testes**

   ```bash
   flutter test
   ```

6. **Executar aplicação**

   Para executar a aplicação é necessário o `json_server` rodando e com isto é necessário
   configurar o host e porta para acessa-lo.
   Para configurar essas duas opções usaremos as variáveis de ambiente, elas podem ser
   configuradas ao rodar o `Flutter release` utilizando o `dart-define`.

    ```bash
    flutter run --release --dart-define=host=<your host> --dart-define=port=<your port> 
    ```

    Exemplo:

    ```bash
    flutter run --release --dart-define=host=localhost --dart-define=port=8080 
    ```

> [!NOTE]
> Por padrão o `HOST` é **localhost** e a `PORTA` é **8080**
>
>
> Deixando de preencher os campos esses valores serão utilizados no aplicativo.

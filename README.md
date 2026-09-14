# 📱 Aplicativo Flutter — Consultas e Ferramentas

Aplicativo desenvolvido em **Flutter** utilizando a linguagem **Dart**, com o objetivo de praticar desenvolvimento de interfaces, navegação entre telas, consumo de APIs e organização de projetos.

O aplicativo possui autenticação simulada, uma tela principal com menu lateral, consultas de **CEP** e **CNPJ** através de APIs externas e uma área de trabalho com navegação inferior.

---

## 🚀 Funcionalidades

### 🏠 Tela Inicial

* Apresentação do aplicativo.
* Botão **Começar**.
* Navegação para a tela de Login.

### 🔐 Tela de Login

* Campo para e-mail.
* Campo para senha.
* Opção para visualizar/ocultar a senha.
* Validação de campos vazios.
* Botão **Entrar**.
* Navegação para a tela principal.

> O login é apenas demonstrativo e não possui autenticação em banco de dados.

### 🏡 Tela Principal

A tela principal apresenta a mensagem:

> **Sejam Bem Vindos!**

Também possui:

* Menu lateral (*Drawer*).
* Acesso à consulta de CEP.
* Acesso à consulta de CNPJ.
* Acesso à Área de Trabalho.
* Acesso ao Perfil.
* Acesso à tela Sobre.
* Opção para sair da aplicação.

### 📍 Consulta de CEP

Permite consultar informações de um endereço através do CEP informado.

Os dados são obtidos através da API **ViaCEP**.

Informações apresentadas:

* Logradouro;
* Bairro;
* Cidade;
* Estado.

### 🏢 Consulta de CNPJ

Permite consultar informações de uma empresa através do CNPJ informado.

Os dados são obtidos através da API **OpenCNPJ**.

Informações apresentadas:

* CNPJ;
* Razão Social;
* Nome Fantasia.

### 💼 Tela de Trabalho

A área de trabalho possui um menu inferior com três opções:

1. **Início**
2. **Atividades**
3. **Perfil**

A troca entre as opções acontece de forma dinâmica através do menu inferior.

### 👤 Perfil

Tela destinada à apresentação das informações do usuário.

### ℹ️ Sobre

Apresenta informações básicas sobre o aplicativo, sua tecnologia e versão.

---

## 🎨 Paleta de Cores

O projeto utiliza a paleta de cores definida para o desenvolvimento da aplicação:

| Cor             | Hexadecimal | Utilização               |
| --------------- | ----------- | ------------------------ |
| 🟢 Verde Escuro | `#064E40`   | Cor principal            |
| 🟣 Roxo         | `#40064E`   | Cor secundária           |
| 🟤 Marrom       | `#4E4006`   | Elementos de destaque    |
| 🟢 Verde        | `#117A65`   | Elementos complementares |

Além dessas cores, são utilizadas cores neutras para fundo, textos e componentes da interface.

A estilização foi centralizada através de um tema global para facilitar a manutenção e a padronização visual do aplicativo.

---

## 🧭 Navegação

O aplicativo possui navegação entre as principais telas:

```text
┌─────────────────┐
│   Tela Inicial  │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│      Login      │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│      Home       │
└────────┬────────┘
         │
    ┌────┼───────────────┐
    │    │               │
    ▼    ▼               ▼
   CEP  CNPJ          Trabalho
                         │
                    ┌────┼────┐
                    ▼    ▼    ▼
                  Início Ativ. Perfil
```

A Home também possui um **menu lateral**, permitindo acessar:

* Principal;
* Trabalho;
* Perfil;
* Sobre;
* Sair.

---

## 📁 Estrutura do Projeto

O projeto foi organizado de maneira a separar as telas, consultas e configurações de tema.

```text
lib/
│
├── main.dart
│
├── consultores/
│   ├── cep.dart
│   └── cnpj.dart
│
├── screens/
│   ├── splash_screen.dart
│   ├── login_screen.dart
│   ├── home_screen.dart
│   ├── trabalho_screen.dart
│   ├── perfil_screen.dart
│   └── sobre_screen.dart
│
└── theme/
    └── app_theme.dart
```

### `main.dart`

Responsável por iniciar o aplicativo e configurar o `MaterialApp`.

### `consultores/`

Contém as telas responsáveis pelo consumo das APIs externas.

* `cep.dart` → consulta de CEP.
* `cnpj.dart` → consulta de CNPJ.

### `screens/`

Contém as telas principais da aplicação.

### `theme/`

Contém as configurações de tema e a paleta de cores do projeto.

---

## 🌐 APIs utilizadas

### ViaCEP

Utilizada para realizar consultas de endereço através do CEP.

```text
https://viacep.com.br/
```

### OpenCNPJ

Utilizada para consultar informações relacionadas a CNPJ.

```text
https://api.opencnpj.org/
```

---

## 🛠️ Tecnologias utilizadas

* **Flutter**
* **Dart**
* **Material 3**
* **HTTP**
* **APIs REST**
* **Navigator**
* **ThemeData**
* **Widgets Stateful e Stateless**

---

## 📦 Dependências

A principal dependência externa utilizada no projeto é o pacote `http`.

No arquivo `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter

  http: ^1.5.0
```

Depois de adicionar a dependência, execute:

```bash
flutter pub get
```

---

## ▶️ Como executar o projeto

### 1. Clonar o repositório

```bash
git clone URL_DO_SEU_REPOSITORIO
```

### 2. Entrar na pasta

```bash
cd nome-do-projeto
```

### 3. Instalar as dependências

```bash
flutter pub get
```

### 4. Verificar o ambiente Flutter

```bash
flutter doctor
```

### 5. Executar o aplicativo

```bash
flutter run
```

Também é possível executar pelo **Android Studio** ou **Visual Studio Code**.

---

## 📱 Fluxo de utilização

1. O usuário inicia o aplicativo.
2. Na tela inicial, seleciona **Começar**.
3. O aplicativo apresenta a tela de Login.
4. O usuário informa e-mail e senha.
5. Ao selecionar **Entrar**, é direcionado para a Home.
6. Na Home, pode:

   * consultar um CEP;
   * consultar um CNPJ;
   * acessar a Área de Trabalho;
   * abrir o menu lateral.
7. Na Área de Trabalho, pode alternar entre as três opções do menu inferior.

---

## 🧩 Organização e boas práticas

O projeto foi desenvolvido buscando manter uma organização simples e escalável.

Entre as práticas utilizadas estão:

* Separação das telas em arquivos diferentes;
* Separação das consultas às APIs;
* Tema global para as cores da aplicação;
* Uso de `const` sempre que possível;
* Utilização de `dispose()` nos `TextEditingController`;
* Navegação utilizando `Navigator`;
* Tratamento básico de erros nas consultas;
* Componentes reutilizáveis;
* Organização por responsabilidade.

---

## 🎯 Objetivos do projeto

Este projeto tem como principais objetivos:

* Praticar desenvolvimento mobile com Flutter;
* Desenvolver interfaces utilizando Dart;
* Trabalhar com navegação entre telas;
* Aprender a utilizar menus laterais e inferiores;
* Consumir APIs externas;
* Trabalhar com requisições HTTP;
* Manipular dados JSON;
* Aplicar temas e paletas de cores;
* Melhorar a organização e estruturação de projetos Flutter.

---

## 📚 Documentação

O desenvolvimento foi baseado na documentação oficial do Flutter, principalmente nos recursos relacionados a:

* Temas e estilização;
* Navegação;
* Formulários;
* TextField;
* Material 3;
* Widgets.

Documentação oficial:

https://docs.flutter.dev/

---

## 👨‍💻 Desenvolvedor

**Henzo Eduardo**

Projeto desenvolvido para fins **educacionais e de aprendizado em Flutter e Dart**.

---

## 📌 Status do projeto

🟢 **Em desenvolvimento**

Novas funcionalidades e melhorias de interface podem ser adicionadas futuramente.

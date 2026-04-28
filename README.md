# 📱 Cadastro de Produto em Flutter

## 📌 Propósito do Projeto

Este projeto foi desenvolvido com fins educacionais para demonstrar, de forma prática, a construção de uma interface de cadastro utilizando Flutter.

O foco principal está em:

* Reaproveitamento de código
* Organização da interface
* Manipulação de dados com `TextEditingController`
* Separação entre lógica e interface

---

## 🚀 O que o projeto faz

A aplicação consiste em uma tela de cadastro de produtos contendo os seguintes campos:

* 🏷️ Nome do produto
* 💰 Preço
* 📦 Quantidade em estoque
* 🗂️ Categoria
* 🔒 Código de acesso

---

### ⚙️ Funcionalidades

O sistema possui três ações principais:

#### ➕ Calcular Total

Calcula automaticamente:

```
Total = Preço × Quantidade
```

---

#### 🧹 Limpar

* Apaga todos os campos do formulário
* Reseta o valor total

---

#### 💾 Salvar

* Simula o salvamento do produto (exibido no console)

---

## 🧠 Conceitos trabalhados

Este projeto aborda conceitos fundamentais do Flutter:

* ✔ Criação de interfaces com `Scaffold`, `AppBar`, `Column` e `Row`
* ✔ Uso de `TextField` com controllers
* ✔ Atualização de estado com `setState`
* ✔ Criação de funções que retornam widgets (sem orientação a objetos avançada)
* ✔ Separação de lógica em arquivos auxiliares

---

## 🧩 Organização do Projeto

```
lib/
 ├── main.dart
 ├── widgets/
 │    ├── textos.dart
 │    └── botoes.dart
 └── utils/
      └── funcoes.dart
```

---

## 🎨 Interface

* Interface simples e funcional
* Uso de cores para melhor experiência do usuário
* Layout organizado com espaçamentos (`Padding`)

---

## 📚 Objetivo educacional

Este projeto foi pensado para alunos iniciantes que ainda não tiveram contato com:

* Orientação a objetos no Flutter
* Arquiteturas mais avançadas

Por isso, a solução utiliza:
👉 Funções para reaproveitamento
👉 Estrutura simples e direta

---

## 👨‍🏫 Autor

Projeto desenvolvido por **Professor Alex Resende**
para fins didáticos no ensino de desenvolvimento mobile com Flutter.

---

## 📄 Licença

Este projeto é de uso educacional e pode ser reutilizado livremente para estudos.

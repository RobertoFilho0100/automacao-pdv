
# Configuração do Ambiente Virtual para execução da automação de testes do PDV

Este guia descreve como configurar o ambiente para execução da automação de testes do PDV. Inicialmente, iremos criar um ambiente virtual Python para o projeto, garantindo que todas as dependências sejam instaladas de forma isolada.

## Pré-requisitos

- **Python** (recomendado download da última versão do Python) [Link para download](https://www.python.org/downloads/)
- **Pip** (gerenciador de pacotes do Python). Normalmente, já é instalado junto ao Python. Para confirmação, basta executar o comando:

  ```bash
  pip --version
  ```

---

## Passo a Passo

### 1. Instale o Virtualenv

Instale o `virtualenv`, que será usado para criar o ambiente virtual isolado:

  ```bash
  pip install virtualenv
  ```

### 2. Crie o Ambiente Virtual

Em seguida, crie o ambiente virtual na pasta do projeto. Vamos chamá-lo de `venv`:

  ```bash
  virtualenv venv
  ```

### 3. Ative o Ambiente Virtual

Estando na raiz do projeto, ative o ambiente virtual com o comando:

  ```bash
  venv\Scripts\activate
  ```

Após a ativação, o prefixo `(venv)` deve aparecer no início da linha de comando, indicando que o ambiente virtual está ativo.

### 4. Instale as Dependências do Projeto

Com o ambiente virtual ativo, instale as dependências listadas no arquivo `requirements.txt`. Para isso, ainda na raiz do projeto, execute:

  ```bash
  pip install -r requirements.txt
  ```

---

### OBS: 
Qualquer dependência instalada deve ser instalada dentro do ambiente virtual. Além disso, o desenvolvedor deve validar se a dependência foi corretamente adicionada no arquivo `requirements.txt`, que deve estar presente no seu repositório.

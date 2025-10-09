# Trabalho de Migrações

## Stack

### Ruby on Rails

Linguagem Ruby com o framework Rails, o qual possui versionamento para migrações de banco de dados.

#### Versões utilizadas
```
- Ruby 3.4.6
- Rails 8.0.3
```

#### Links
[Framework Rails](https://rubyonrails.org/)
[Linguagem Ruby](https://www.ruby-lang.org/en/)

### SQLite

Banco de dados leve, utilizado para desenvolvimento e testes.
Utilizado por ser o padrão do Rails, não necessitando de configuração adicional.
[Site](https://sqlite.org/)

## Gitflow

Utilizado Trunk-Based Development para o controlamento de versões

### Branches

- **main**: branch principal
- **feat/create-table**: branch para criação da tabela *movies* com as colunas id e description (PASSO 1)
- **feat/add-three-movies**: branch para adicionar três sinopses de filmes na tabela *movies* (PASSO 2)
- **feat/add-10-movies**: branch para adicionar 2 migrações com 5 sinopses de filmes cada na tabela *movies* (PASSO 3)
- **feat/update-readme**: branch para atualizar o README

## Como rodar

### Instalar ASDF

#### MacOS
```
brew install asdf
```
#### Outros sistemas operacionais
Checar a [documentação oficial do ASDF](https://asdf-vm.com/guide/getting-started.html).


### Instalar ruby via ASDF
```
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install ruby 3.4.6
asdf global ruby 3.4.6
```
### Instalar gerenciador de pacotes do Ruby e dependências do projeto
```
gem install bundler
bundle install
```
### Criar o banco de dados e rodar migrações
```
rails db:create
rails db:migrate
```

## Como contribuir

1. Fazer um fork do repositório
2. Criar uma branch com a feature ou correção de bug (`git checkout -b feature/nome-da-feature`)
3. Commitar as mudanças (`git commit -m 'Adiciona uma feature'`)
4. Dar push na branch (`git push origin feature/nome-da-feature`)
5. Abrir um Pull Request
6. Esperar a revisão e aprovação do Pull Request (por Gabriel Pedot Reis)

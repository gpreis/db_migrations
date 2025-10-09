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

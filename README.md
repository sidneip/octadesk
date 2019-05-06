# OctadeskApi

Gem para comunicação com o www.octadesk.com

## Instalação

Adicionar esta linha ao seu arquivo Gemfile

```ruby
gem 'octadesk_api'
```

e então rodar o comando

    $ bundle install

Para apenas instalar

    $ gem install octadesk_api


## Configurar
Adicionar a variavel de ambiente
```ruby
ENV['OCTADESK_ACCESS_TOKEN']
```
Ou
```ruby
OctadeskApi::Client.new(access_token)
``` 
Ou
```ruby
OctadeskApi.access_token = 'token'
```
## Como Usar?

### Cliente
```ruby
client = OctadeskApi::Client.new('token')
```

### Pessoas
```ruby
client = OctadeskApi::Client.new('token')
client.persons.find(id)
client.persons.find_by_email('email@email.com.br')
client.persons.where({email: 'email@email.com.br'})
client.persons.create({name: 'Pessoa', email: 'email@email.com.br'})
client.persons.update({name: 'Pessoa Nome', email: 'email@email.com.br'})
```

### Organização
```ruby
client = OctadeskApi::Client.new('token')
client.organizations.find(id)
client.organizations.where({name: 'Name'})
client.organizations.create({name: 'Pessoa'})
client.organizations.update('id', {name: 'Pessoa Nome'})
```
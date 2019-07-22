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
OctadeskApi.env = 'production'
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

#### Cadastrando novos usuarios
```ruby
client = OctadeskApi::Client.new(ENV['OCTADESK_ACCESS_TOKEN'])
client.persons.create({
email: 'email@emailcom.br',
phoneContacts: {
    number: '99123-1234'
},
organization: {
    name: 'new client'
}
})
``` 

### Organização
```ruby
client = OctadeskApi::Client.new('token')
client.organizations.find(id)
client.organizations.where({name: 'Name'})
client.organizations.create({name: 'Pessoa'})
client.organizations.update('id', {name: 'Pessoa Nome'})
```

### Tickets
```ruby
client = OctadeskApi::Client.new
client.tickets.find(id)
client.tickets.where({idRequester: "123"})
client.tickets.create({params})
client.tickets.update(ticket_id, {params})
```

# Para saber mais sobre o body das requisições consulte a documentação
[Octadesk Api Documentação](https://api.octadesk.services/)
[RubyGems](https://rubygems.org/gems/octadesk_api)


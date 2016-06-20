# Fivily 
Fivily is the demo version of a restaurant ordering app created for Fivi Restika in Ubud, Bali. This is not the live version, so feel free to make a sample order using http://fivily.herokuapp.com/ 

### Guide
User is taken to a page showing the whole menu (items#index). They can click on each individual item using (items/:id and items#show) 

### Set up

Here's how to do the database setup yourself. Let's get this show on the road...

#### New rails app called Fivily 
```bash
rails new fivily --database=postgresql

cd fivily
```

#### Add to Gemfile

```bash
nano Gemfile 
```

```ruby
gem 'devise'
gem 'bootstrap-sass'
gem 'awesome_print'
gem 'cowsay'
```

```bash
bundle install
```

#### Create models and controllers

```ruby
rails g model type name:string

rails g model item type_id:integer is_custom:boolean price:integer name:string description:text

rails g model order customer_id:integer date:datetime total_price:integer comments:text

rails g model order_items order_id:integer item_id:integer quantity:integer subtotal:integer custom:text

rails g controller Types
rails g controller Items
rails g controller Orders
rails g controller OrderItems
```

```bash
rake db:create
rake db:migrate
```

#### Seeds

```bash
rake db:seed
```

Double-check the information went in OK by using the console:

```ruby
rails c
Item.connection
Item.all.count 

Type.connection
Type.all.count
```

There should be 13 items and 4 types.


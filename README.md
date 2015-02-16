# READ ME

```bash
rails new fivily --database=postgresql

cd fivily

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

```ruby
rails g model type name:string

rails g model item type_id:integer is_custom:boolean price:integer name:string description:text

rails g model order customer_id:integer date:datetime total_price:integer comments:text

rails g model order_items order_id:integer item_id:integer quantity:integer subtotal:integer custom:text


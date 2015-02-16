# READ ME

### Check list

#### Tuesday, 17 Feb 2015:

* to-do:
  * model relationships (has_many etc)
  * place an order form (2 models, 1 controller)
    * figure out subtotals and pricing

#### Monday, 16 Feb 2015:

* initial project proposal
  * read through user stories
  * scoped out project
  * data modelling -- how to set up using databases/tables (MVP MVP MVP)
* created a rails app
  * generated models (leaving out customer info for MVP)
  * generated controllers
  * generated data for seeds
  * created a basic view for front-end debugging clarity (and general prettiness)
  * worked out how to present the menu from the db
    * used a helper for currency conversion (items_helper)
    * used a helper to grab the name from the `Type` table (types_helper)
    * used groups and loops for DRY (items#index)

### Set up

Let's get this show on the road...

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

### Resources

For grouping items in types:
http://apidock.com/rails/Enumerable/group_by
http://stackoverflow.com/questions/8046138/how-to-group-collection-by-columns-with-rails


For changing the locale and setting currency conversion to IDR:
http://stackoverflow.com/questions/7237592/number-to-currency-locale-converting

For multiple models (in our case, two) in one form/controller:
http://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-fields_for


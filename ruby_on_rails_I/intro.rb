# Ruby On Rails

# gem install rails
# rails new my_app
# cd my_app
# rails server


# Los 5 componentes mas importantes del framework son los sgtes.

- Enrutador.
- Vistas.
- ActiveRecord (la capa de acceso a los datos).
- Migraciones.
- Aplicacion de consola.

# http://localhost:3000
# config/routes

Rails.application.routes.draw do
  get 'products', to: 'products#index'
end

# http://localhost:3000/products/

class ProductsController < ApplicationController
  def index
    render html: "<h1>Hola Mundo</h1>".html_safe
  end
end


# app/views/products/index.html.erb
#
<% 3.times do %>
 #<p>Hola Mundo</p>
<% end %>

class ProductsController < ApplicationController
  def index
    render 'products/index'
  end
end

# http://localhost:3000/products/


class ProductsController < ApplicationController
  def index
    @greeting = "Hola Mundo"
  end
end

# <h1><%= @greeting %></h1>


# ActiveRecord
# ActiveRecord es la capa que nos permite acceder y manipular la información de la base de datos sin necesidad de escribir SQL (Structured Query Language).

class Product < ActiveRecord::Base

end

class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
end

# Tabla HTML

# Product
# id name description
# 1  zapato tatata

<table>
  <% @products.each do |product| %>
    <tr>
      <td><%= product.name %></td>
      <td><%= product.description %></td>
      <td><%= product.price %></td>
    </tr>
  <% end %>
</table>



# bundle exec rails console
# Product.all
# Muestra todos los productos


# p1 = Product.create(name: "Carne", description: "de cerdo", price: 20000)
# p1.name
# imprime "Carne"

# p1.price = 10000
# p1.save guarda en la base de datos

# p1.destroy elimina el registo de la base de datos


# Migraciones

# db/migrate
#
# bundle exec rails g model Product name:string description:text
# bundle exec rails g migration createproducts

class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end


bundle exec rails generate migration AddPriceToProducts price:decimal
bundle exec rails generate migration add_price_to_products price:decimal
bundle exec rails destroy migration AddPriceToProducts price:decimal



class AddPriceToProducts < ActiveRecord::Migration
  def change
    add_column :products, :price, :decimal
  end
end

bundle exec rake db:migrate
bundle exec rake db:rollback


# Aplicacion de Consola


# rails new myapp
# rails g model Product name description price:decimal
# rails g controller Products
  
  

# rake db:setup # crea mi base de datos, corre las migraciones, corre mis seeds.
# rake db:migrate crea mi base de datos, corre las migraciones
# rake db:seeds corre los seeds



































# Ruby OOP

# Programacion Procedimental:

- ciclos
- condicionales
- prcedimientos

# Programacion Orientada por Objetos

- objetos
- clases
- encapsulamiento
- polimorfismo
- herencia
- mixins(o modulos)

# Clases y Objetos


# Encapsulamiento
# La Programación Orientada por Objetos no soluciona el problema automáticamente,
# pero nos da herramientas para solucionarlo

class CustomerStore
  def initialize
    @customers = {} # los clientes se van almacenar aqui
    @next_id = 1 # un consecutivo para asignarle a cada cliente
  end

  def all
    ...
  end

  def create(customer)

  end

  def delete(customer)

  end

  private

  def next_customer_id
    @next_id += 1
  end
end

class Products
  # aca van los metodos publicos
  def create
    @product = Product.new
    CustomerStore.all
  end

  protected
  # aca van los metodos protegidos
  
  private
  # aca van los metodos privados
end


# Herencia

class Transaccion
  attr_accessor :usuario, :fecha, :concepto, :cantidad
end

class Factura < Transaccion
  attr_accessor :numero
end

class Entradas < Transaccion

end

class Egresos < Transaccion

end

factura = Factura.new
factura.usuario = "Natalia Henao"
factura.cantidad = 10
factura.numero = 1

p "La cantidad es: #{factura.cantidad}"
p "El numero de la factura es: #{factura.numero}"


# Sobrescribiendo metodos

class Empleado
  attr_accessor :nombre, :salario

  def salario_neto
    salario - (salario * 0.12)
  end
end

class Director < Empleado
  attr_accessor :bono

  def salario_neto
    salario - (salario * 0.12) + bono
  end
end

# =====================

class Empleado
  attr_accessor :nombre, :salario

  def salario_neto
    salario_base
  end

  protected

  def salario_base
    salario - (salario * 0.20)
  end
end

class Director < Empleado
  attr_accessor :bono

  def salario_neto
    salario_base + bono
  end
end


# Polimorfismo
#
# Sin OOP

def draw_figure(figure, x, y)
  set_coordinates(x, y)
  if figure == "circle"
    # draw a circle
  elsif figure == "triangle"
    # draw a triangle
  elsif figure == "square"
    # draw a square
  end
end

# =============
#
# Con OOP

def draw_figure(figure, x, y)
  set_cordinates(x, y)
  figure.draw
end

class Circle
  attr_accessor :radius

  def draw
    ...
  end
end

class Triangle
  attr_accessor :base, :height

  def draw
    ...
  end
end


# Modulos (o Mixins)

module Persistencia
  def store(path)
    ...
  end

  def load(path)
    ...
  end
end

class User
  include Persistencia

  attr_accessor :id, :name, :email

   ...
end

class Post
  include Persistencia
  attr_accessor :id, :date, :content

  ...
end

user = User.new
user.load('users/user-1.xml')

user.name = "Vicente Fernandez"
user.email = "chente88@gmail.com"

user.store('users/user-1.xml')



# Ejercicio

# Crear una clase llamada MyCar. Cuando inicializo una nueva instancia u objeto de la clase, permite al usuario
# definir variables que nos dice el a_n_o, color y modelo del carro.
# crear una variable de instancia current_speed con un valor de 0 que nos va dar el current_speed del carro.
# crear metodos de instancia que permiten al carro aumentar velocidad, frenar, y apagar el carro.

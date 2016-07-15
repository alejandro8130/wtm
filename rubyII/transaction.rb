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

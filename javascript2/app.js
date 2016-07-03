// Funciones

// Nombrada

function hello(name) {
  return "hello" + name;
}

// Anonima

function(name) {
  return "hello" + name;
}

var hello = function(name) {
  return "hello" + name;
}

setInterval(function() {
  console.log("hello");
}, 1000);


var hello = function(name) {
  return function() {
    console.log("hello" + name);
  };
}

var helloPedro = hello("Pedro");

helloPedro();

// Hoisting


hola();

function hola() {
  return "hello"
}


// Scope:  Un conjunto de variabl, objetos y funciones a las que tenemos acceso.

if (true) {
  var result = "bien";
}

console.log(result);


// Funciones inmediatas, para evitar sobreescribit variables y funciones de otras librerias.

(function() {
  ...
})();

(function(num) {
  ...
})(10);


// Closures: Cuando muevo o llamo una funcion de un lado a otro,
// mantienen las referencias a las variables que se crearon.

var hello = function(name) {
  var color = "red";
  return function() {
    console.log("Hello" + name);
    console.log(color);
  };
};

var helloPedro = hello("Pedro");
helloPedro();

// Objetos 1
// Notacion Literal

var pedro = {
  name: "Vicente Fernandez",
  age: 50
};

function User(name, age) {
  this.name = name;
  this.age = age;
};

var vicente = new User("Vicente Fernandez", 50);

// Prototipos: Todo objeto tiene referencia a otro objeto llamado
// prototipo y el prototipo tiene a otro.

object       prototype      Object.prototype
propiedad2   propiedad1
propiedad3

function User(name, age) {
  this.name = name;
  this.age = age;
};

var pedro = new User("Pedro Fernandez", 40);
var pablo = new User("Pablo", 20);

User.prototype.save = function() {
  console.log("Saving" + this.name);
}

pedro.save();
pablo.save();

// This: se le conoce como el contexto de ejecucion(execution context)
// y varia dependiendo de donde se invoque.

var pedro {
  name: "Pedro";
  greet: function() {
    return "Hola" + this.name;
  };
};

var hello = pedro.greet;
hello();

var pedro = {
  name: "Pedro"
}

var greet = function() {
  return "Hola " + this.name;
}

greet.call(pedro);



























































































}
//

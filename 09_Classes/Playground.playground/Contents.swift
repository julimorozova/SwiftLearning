import Foundation

//1 - Простой класс "Человек"
//Создай класс Person с полями name (String) и age (Int).
//Добавь метод sayHello(), который печатает "Привет, меня зовут \(name)".
//Создай несколько экземпляров и вызови метод.

class Person {
    let name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    func sayHello() {
        print("Привет, меня зовут \(name)")
    }
    func celebrateBirthday() {
            age += 1
            print("У \(name) сегодня день рождения! Теперь возраст: \(age)")
        }

}
var alex = Person(name: "Alex", age: 28)
var olga = Person(name: "Olga", age: 16)
var ivan = Person(name: "Ivan", age: 44)
alex.sayHello()
olga.sayHello()
ivan.sayHello()


//2 - Класс "Машина" и водитель
//Создай класс Car с полями model и owner: Person?.
//Добавь метод assignOwner(_:), который "сажает" человека в машину.
//Создай пару машин и людей, назначь владельцев.

class Car {
    let model: String
    var owner: Person?

    init(model: String, owner: Person? = nil) {
        self.model = model
        self.owner = owner
    }
    func assignOwner(_ person: Person) {
            self.owner = person
            print("Владелец машины \(model) теперь \(person.name)")
        }
}

let tesla = Car(model: "Tesla Model 3")
tesla.assignOwner(alex)

//3 - Метод, изменяющий состояние
//Добавь метод celebrateBirthday(), который увеличивает возраст на 1.
//Проверь, что возраст действительно увеличивается.

print(ivan.age)
ivan.celebrateBirthday()
print(ivan.age)

//4 - Наследование
//Создай класс Animal с полем name и методом makeSound().
//Создай классы-наследники Dog и Cat, переопредели метод makeSound(), чтобы собака лаяла, а кошка мяукала (вывести в принте).
class Animal {
    let name: String
    init(name: String) {
        self.name = name
    }
    func makeSound() {
        print("Я говорю")
    }
}

class Dog: Animal {
    let breed: String
    var getBreed: String {
            return "Порода: \(breed)"
        }
    init(name: String, breed: String) {
        self.breed = breed
        super.init(name: name)
    }
    override func makeSound() {
        print("Я говорю гав-гав")
    }


}
class Cat: Animal {
    override func makeSound() {
        print("Я говорю мяу-мяу")
    }
}

var cat = Cat(name: "Iva")
var dog = Dog(name: "Bobik", breed: "GoldenRetriever")

cat.makeSound()
dog.makeSound()

//5 - Расширенный инициализатор
//В Dog добавь новое поле breed (порода) и переопредели инициализатор, чтобы он принимал породу.
//Создай несколько собак с разными породами.

let lulu = Dog(name: "Lulu", breed: "Poodle")
let otis = Dog(name: "Otis", breed: "Chihuahua")

print(lulu.getBreed)
print(otis.getBreed)

//6 - Магазин и товары
//Создай класс Product с названием и ценой.
//Создай класс Store, который хранит массив товаров и метод printCatalog().
//Добавь метод sell(productName:), который удаляет товар из каталога.
//Создай магазин, добавь товары, продай один товар, снова выведи каталог.

class Product {
    let name: String
    var price: Double

    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
}

class Store {
    var products: [Product]
    init(products: [Product]) {
        self.products = products
    }

    func printCatalog() {
        if products.isEmpty {
            print("Магазин пуст")
        } else {
            for product in products {
                print("\(product.name): \(product.price)")
            }
        }
    }

    func sell(productName: String) {
        for (index, product) in products.enumerated() {
            if product.name.lowercased() == productName.lowercased() {
                products.remove(at: index)
            }
        }
    }
}

let bread = Product(name: "bread", price: 1.5)
let milk = Product(name: "milk", price: 2.0)
let apple = Product(name: "apple", price: 0.5)

let myStore = Store(products: [bread, milk, apple])

myStore.printCatalog()
myStore.sell(productName: "Milk")
myStore.printCatalog()

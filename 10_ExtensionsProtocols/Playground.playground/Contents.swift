import Foundation

//1 - Расширение String
//Добавь в String функцию isPalindrome(), которая проверяет, является ли строка палиндромом.

extension String {
    func isPalindrome() -> Bool {
        var str = ""

        for char in self {
            if char.isLetter {
                str.append(char)
            }
        }

        return str == String(str.reversed())
    }
}

//2 - Расширение Int
//Добавь метод squared() для Int, который возвращает квадрат числа.

extension Int {
    func squared() {
        self * self
    }
}

//3 - Класс "Person"
//Создай класс Person с полями name и age.
//Добавь метод introduce() в расширении, который выводит в консоль: "Меня зовут name, мне age лет".

class Person {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
extension Person {
    func introduce() {
        print("Меня зовут \(name), мне \(age) лет")
    }
}

//4 - Протокол "Drawable"
//Определи протокол Drawable с методом draw().
//Реализуй его в классе Circle и Square, чтобы они выводили в консоль описание: "Рисую круг радиусом 10" или "Рисую квадрат со стороной 5".

protocol Drawable {
    func draw()
}

class Circle: Drawable {
    func draw() {
        print("Рисую круг радиусом 10")
    }
    

}

class Square: Drawable {
    func draw() {
        print("Рисую квадрат со стороной 5")
    }
}


//5 - Протокол "Calculatable"
//Определи протокол с методом calculate(a:b:) -> Int.
//Реализуй его в структурах Adder, Multiplier

protocol Calculatable {
    func calculate(a: Int, b:Int ) -> Int
}

struct Adder: Calculatable {
    func calculate(a: Int, b: Int) -> Int {
        a + b
    }
}

struct Multiplier: Calculatable {
    func calculate(a: Int, b: Int) -> Int {
        a * b
    }
}
//6 - Протокол "Printable"
//Определи протокол с методом printInfo().
//Реализуй в Car (пусть выводит марку) и Phone (пусть выводит модель).

protocol Printable {
    func printInfo()
}

class Car: Printable {
    var brand: String

    init(brand: String) {
        self.brand = brand
    }

    func printInfo() {
        print("Марка автомобиля: \(brand)")
    }
}

class Phone: Printable {
    var model: String

    init(model: String) {
        self.model = model
    }

    func printInfo() {
        print("Модель телефона: \(model)")
    }
}

//7 - Протокол "Named"
//Создай протокол Named с одним свойством name: String.
//Реализуй его в классе Dog и структуре Book.

protocol Named {
    var name: String { get set }
}

class Dog: Named {
    var name: String
    init(name: String) {
        self.name = name
    }
}

struct Book: Named {
    var name: String
}

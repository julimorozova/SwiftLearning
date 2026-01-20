import Foundation

//1- Точка на плоскости
//Создай структуру Point с полями x и y (типа Int).
//Создай точку (5, 7) и выведи её координаты.

struct Point {
    var x: Int
    var y: Int
}
let point = Point(x: 5, y: 7)
print("Координаты: (\(point.x), \(point.y))")

//2- Прямоугольник и площадь
//Создай структуру Rectangle с полями width и height.
//Добавь метод area() → возвращает площадь.
//Создай прямоугольник 3 x 4 и выведи его площадь.

struct Rectangle {
    var width: Int
    var height: Int

    func area() -> Int {
        return width * height
    }
}

let rectangle = Rectangle(width: 3, height: 4)
print("Площадь: \(rectangle.area())")

//3- Сравнение
//Создай структуру Student с полями name, grade.
//Добавь метод isBetter(than:), который возвращает true, если grade выше.
//Создай двух студентов и сравни их.

struct Student {
    let name: String
    var grade: Int

    func isBetter(than other: Student) -> Bool {
        return grade > other.grade
    }
}

let alex = Student(name: "Alex", grade: 15)
let ivan = Student(name: "Ivan", grade: 19)

print(alex.isBetter(than: ivan))

//4- Optional в структуре
//Создай структуру User с полями name, email.
//Сделай email опциональным.
//Создай пользователя без email и выведи email только если он есть.

struct User {
    let name: String
    var email: String?
}


let user = User(name: "Ivan", email: nil)

if let email = user.email {
    print("Email пользователя \(user.name): \(email)")
} else {
    print("У пользователя \(user.name) нет почты")
}


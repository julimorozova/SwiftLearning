import Foundation

//1- Создай клоужер, который просто выводит "Hello, Swift!"
//// Твоя задача
let hello: () -> Void = { print("Hello, Swift!")}
hello()


//2-Создай клоужер, который принимает имя и выводит приветствие.
//// Твоя задача
let greet: (String) -> Void = { name in
    print("Привет, \(name)")
}
greet("Student")


//3-Создай клоужер, который принимает два числа и возвращает их сумму.
//// Твоя задача
let add:(Int,Int)->Int = { $0 + $1 }
print(add(2, 3))


//4-Создай функцию, которая принимает клоужер(простой, ничего не принимает и не возвращает () -> Void) и вызывает его.
func funcdoSomething(callback: () -> Void){
    callback()
}
var cl: () -> Void =  {
  print("Действие выполнено!")
}

funcdoSomething(callback: cl)


//5-Функция должна принять клоужер, который принимает число и печатает его квадрат.

func executeSquareAction(using completion: (Int) -> Void ) {
    var number = Int.random(in: 0...100)
    completion(number)
}
executeSquareAction(using: { number in
    print("Квадрат числа \(number): \(number * number )")
})


import Foundation

//Вычисляемые свойства

//1 - Температурный конвертер
//Создай структуру Temperature с полем celsius: Double.
//Добавь вычисляемое свойство fahrenheit: Double, которое считает температуру в Фаренгейтах.

struct Temperature {
    var celsius: Double

    var fahrenheit: Double {
        (celsius * 9 / 5) + 32
    }
}
let weather = Temperature(celsius: 25)
print("Цельсий: \(weather.celsius)")
print("Фаренгейт: \(weather.fahrenheit)")

//2 - Создай структуру Rectangle с width и height.
//Добавь вычисляемое свойство perimeter, которое возвращает периметр.

struct Rectangle {
    var width: Int
    var height: Int

    var perimeter: Int {
        return (width + height) * 2
    }
}


//3 - Банковский счёт
//Создай структуру BankAccount с полем balance: Double.
//Добавь вычисляемое свойство formattedBalance: String, которое возвращает строку вида "Ваш баланс: 1 000".
//Добавь вычисляемое свойство isOverdrawn: Bool — true, если balance < 0
struct BankAccount {
    var balance: Double
    var formattedBalance: String {
        "Ваш баланс: \(self.balance)"
    }
    var isOverdrawn: Bool {
        balance < 0
    }
}

//4 - Задача про корзину покупок
//Создай структуру CartItem с name: String, pricePerItem: Double, quantity: Int.
//Добавь вычисляемое свойство totalPrice, которое возвращает итоговую стоимость (pricePerItem * quantity).

struct CartItem {
    var name: String
    var pricePerItem: Double
    var quantity: Int

    var totalPrice: Double {
        pricePerItem * Double(quantity)
    }
}


//Наблюдатели свойств

//1 - Счётчик лайков
//Создай структуру Post с полем likes: Int.
//Добавь didSet, который печатает "Лайков стало \(likes)" после каждого изменения.
struct Post {
    var likes: Int = 0 {
        didSet {
            print("Лайков стало \(likes)")
        }
    }
}
var post = Post()
post.likes = 1
post.likes = 2

//2 - Счётчик шагов
//Создай структуру StepTracker с полем steps: Int.
//Добавь didSet, который печатает прогресс: "Сегодня пройдено \(steps) шагов".
//Если steps превысили 10_000 — выведи "Цель достигнута!"

struct StepTracker {
    var steps: Int = 0 {
        didSet {
            print("Сегодня пройдено \(steps) шагов")
            if steps > 10000 {
                print("Цель достигнута!")
            }
        }
    }
}
var tracker = StepTracker()
tracker.steps = 5000
tracker.steps = 12000

//3 - Счётчик денег
//Создай структуру Wallet с полем money: Double.
//В didSet проверяй, если money < 0 — печатай "У вас долг!".
//Если money > oldValue — печатай "Поступление: \(money - oldValue)".
//Если money < oldValue — печатай "Трата: \(oldValue - money)".

struct Wallet {
    var money: Double {
        didSet {
            if money < 0 {
                print("У вас долг!")
            }

            if money > oldValue {
                print("Поступление: \(money - oldValue)")
            } else if money < oldValue {
                print("Трата: \(oldValue - money)")
            }
        }
    }
}

var wallet = Wallet(money: 100)
wallet.money += 50
wallet.money -= 200

//4 - Проверка пароля
//Создай структуру UserAccount с полем password: String.
//В willSet проверь, если новый пароль короче 6 символов — напечатай "Пароль слишком короткий!".
//В didSet выведи "Пароль обновлён" (если он не пустой).

struct UserAccount {
    var password: String = "111111" {
        willSet {
            if newValue.count < 6 {
                print("Пароль слишком короткий!")
            }
        }
        didSet {
            if password.count < 6 {
                password = oldValue
            } else if !password.isEmpty {
                print("Пароль обновлён")
            }
        }
    }
}

var account = UserAccount()
account.password = "123"
print(account.password)
account.password = "qwerty12"
print(account.password)

import Foundation

//1 - Направления движения (без rawValue)
//Создай enum Direction с вариантами .north, .south, .east, .west.
//Напиши функцию move(direction:), которая выводит текст в консоль:
//"Go up" для .north
//"Go down" для .south
//"Go right" для .east
//"Go left" для .west
//Вызови её с разными направлениями.
enum Direction {
    case north
    case south
    case east
    case west
}
func move(direction: Direction) {
    switch direction {
    case .east:
        print("Go right")
    case .north:
        print("Go up")
    case .west:
        print("Go left")
    case .south:
        print("Go down")
    }
}

move(direction: .east)
move(direction: .north)
move(direction: .south)
move(direction: .west)

//2 - Игровые уровни
//Создай enum GameLevel: String с вариантами "Easy", "Medium", "Hard".
//Напиши функцию, которая принимает строку, преобразует её в enum и выводит сообщение.
//Если строка не соответствует ни одному уровню, выводи "Unknown level".
enum GameLevel: String {
    case easy = "Easy"
    case medium = "Medium"
    case hard = "Hard"
}

func getLevel(level: String) {
    if let selectedLevel = GameLevel(rawValue: level.capitalized) {
        print("Selected level: \(selectedLevel.rawValue)")
    } else {
        print("Unknown level")
    }
}
getLevel(level: "easy")
getLevel(level: "pro")


//3 - Платёжная система
//Создай enum Payment, где:
//.cash(Double)
//.card(number: String, amount: Double)
//.crypto(wallet: String, amount: Double)
//Напиши функцию process(payment:), которая по-разному обрабатывает оплату (например, разные сообщения в консоль).
enum Payment {
    case cash(Double)
    case card(number: String, amount: Double)
    case crypto(wallet: String, amount: Double)
}

func process(payment: Payment) {
    switch payment {
    case .cash(let amount):
        print("Оплатана наличными \(amount)")
    case .card(number: let number, amount: let amount):
        print("Оплата картой \(number) на сумму \(amount)")
    case .crypto(wallet: let wallet, amount: let amount):
        print("Оплата крипто-кошельком \(wallet) на сумму \(amount)")
    }
}

process(payment: .cash(500.0))
process(payment: .card(number: "4400-1234", amount: 1200.50))
process(payment: .crypto(wallet: "0xABC123", amount: 0.005))


//4 - События в приложении
//Создай enum AppEvent:
//.login(user: String)
//.logout(user: String)
//.error(message: String)
//.purchase(user: String, amount: Double)
//Используй switch, чтобы:
//Вывести лог для каждого события
//Если .purchase больше 1000 — вывести особое сообщение "Big spender!" (использовать where)

enum AppEvent {
    case login(user: String)
    case logout(user: String)
    case error(message: String)
    case purchase(user: String, amount: Double)
}

func logEvent(event: AppEvent) {
    switch event {
    case .login(let user):
        print("Пользователь \(user) вошел в систему.")
    case .logout(let user):
        print("Пользователь \(user) вышел из системы.")
    case .error(let message):
        print("Произошла ошибка: \(message)")
    case .purchase(let user, let amount) where amount > 1000:
        print("Big spender! Пользователь \(user) совершил покупку на \(amount)")
    case .purchase(let user, let amount):
        print("Пользователь \(user) купил товар на сумму \(amount)")
    }
}

logEvent(event: .login(user: "Ivan"))
logEvent(event: .purchase(user: "Alice", amount: 500))
logEvent(event: .purchase(user: "Bob", amount: 1500))



//5 - Уведомления
//Создай enum Notification:
//.message(user: String, text: String)
//.friendRequest(user: String)
//.system(message: String)
//Напиши функцию handle(notification:), которая выводит разные сообщения в зависимости от типа уведомления.


enum Notification {
    case message(user: String, text: String)
    case friendRequest(user: String)
    case system(message: String)
}

func handle(notification: Notification) {
    switch notification{
    case .friendRequest(let user):
        print("Пользователь \(user) хочет добавить вас в друзья. Принять приглашение?")
    case .message(user: let user, text: let text):
        print("Сообщение от пользователя \(user) с текстом: \(text)")
    case .system(message: let message):
        print("Системное сообщение: \(message)")
    }
}
handle(notification: .message(user: "Дмитрий", text: "Привет! Как успехи в Swift?"))
handle(notification: .friendRequest(user: "Анна"))
handle(notification: .system(message: "Обновление ПО завершено."))


//6 - Результат загрузки файла
//Создай enum DownloadResult:
//.success(filePath: String, size: Int)
//.failure(error: String)
//Используй switch, чтобы:
//При успехе вывести путь и размер
//При ошибке — сообщение об ошибке.

enum DownloadResult {
    case success(filePath: String, size: Int)
    case failure(error: String)
}

func handleDownload(result: DownloadResult) {
    switch result {
    case .failure(let error):
        print("Ошибка загрузки: \(error)")
    case .success(let filePath, let size):
        print("Путь к файлу: \(filePath)")
        print("Размер: \(size)")
    }

}
let okResult = DownloadResult.success(filePath: "/documents/photo.jpg", size: 1024)
let errorResult = DownloadResult.failure(error: "Нет соединения")

handleDownload(result: okResult)
handleDownload(result: errorResult)


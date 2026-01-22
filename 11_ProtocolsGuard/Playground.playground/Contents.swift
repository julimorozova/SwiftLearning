import Foundation

//1 - Композиция через протоколы
//Задание:
//Создай систему плагинов:
//Протокол Plugin с методом execute()
//Класс App, который хранит массив [Plugin]
//Добавь разные плагины (LoggerPlugin, AnalyticsPlugin) и вызови execute() для всех.

protocol Plugin {
    func execute()
}

class LoggerPlugin: Plugin {
    func execute() {
        print("loger")
    }
}


class AnalyticsPlugin: Plugin {
    func execute() {
        print("analytics")
    }
}


class App {
    var plugins: [Plugin]
    
    init(plugins: [Plugin]) {
        self.plugins = plugins
    }

    func add(plugin: Plugin) {
        plugins.append(plugin)
    }

    func run() {
        plugins.forEach { $0.execute() }
    }
}

let app = App(plugins: [LoggerPlugin()])

app.add(plugin: AnalyticsPlugin())
app.run()


//2 - Протокол для тестирования (Dependency Injection)
//Задание:
//Создай протокол NetworkServiceProtocol с методом fetchData() -> String.
//Сделай два класса:
//RealNetworkService
//MockNetworkService
//Используй их в ViewModel, которая не знает, какой именно сервис используется.

protocol NetworkServiceProtocol {
    func fetchData() -> String
}

class RealNetworkService: NetworkServiceProtocol {
    func fetchData() -> String {
        return "RealNetworkService"
    }
}

class MockNetworkService: NetworkServiceProtocol {
    func fetchData() -> String {
        return "MockNetworkService"
    }
}

class ViewModel {
    private let networkService: NetworkServiceProtocol
    var displayData: String = ""

    init(networkService: NetworkServiceProtocol) {
        self.networkService = networkService
    }

    func loadData() {
        self.displayData = networkService.fetchData()
        print("Data: \(displayData)")
    }
}

let realVM = ViewModel(networkService: RealNetworkService())
realVM.loadData()

let mockVM = ViewModel(networkService: MockNetworkService())
mockVM.loadData()


//3 - Наследование протоколов
//Задание:
//Создай Movable с методами moveForward() и moveBackward().
//Создай Flyable, который наследует Movable и добавляет метод fly().
//Реализуй в классе Bird.

protocol Movable {
    func moveForward()
    func moveBackward()
}

protocol Flyable: Movable {
    func fly()
}

class Bird: Flyable {
    func fly() {
        print("fly")
    }
    
    func moveForward() {
        print("moveForward")
    }
    
    func moveBackward() {
        print("moveBackward")
    }
}

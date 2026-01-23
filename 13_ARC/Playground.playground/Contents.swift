import Foundation

//1 - Простые ссылки
//Создай класс Person с полем name и распечатай, когда объект деинициализируется (deinit).
//Создай несколько сильных ссылок (strong) на один объект и убедись, что deinit вызывается только после удаления всех ссылок.

class Person {
    var name: String
    init(name: String) {
        self.name = name
    }

    deinit {
        print("delete Person \(name)")
    }
}

var person1: Person? = Person(name: "alex")
var person2: Person? = person1
var person3: Person? = person2

person1 = nil
person2 = nil
person3 = nil


//2 - Сильные и слабые ссылки
//Создай класс Dog, внутри которого есть свойство owner: Person?.
//Создай Person, у которого есть pet: Dog?.
//Проверь, что произойдет, если обе ссылки будут strong, а потом сделай одну weak.

class Dog {
    let name: String
    weak var owner: Owner?
    init(name: String, owner: Owner? = nil) {
        self.name = name
        self.owner = owner
    }

    deinit {
        print("dog удален")
    }
}
class Owner {
    let name: String
    var pet: Dog?
    init(name: String, pet: Dog? = nil) {
        self.name = name
        self.pet = pet
    }
    deinit {
        print("owner удален")
    }
}

var sharik: Dog? = Dog(name: "Шарик")
var ivan: Owner? = Owner(name: "Иван")

sharik?.owner = ivan
ivan?.pet = sharik

sharik = nil
ivan = nil


//3 - Closures и утечки
//Создай класс Downloader с методом start() и замыканием onComplete.
//Внутри start() создай замыкание, которое обращается к self.
//Покажи, что без [weak self] объект не деинициализируется.
//Исправь, добавив [weak self] и проверь, что deinit теперь вызывается.

class Downloader {
    var name: String = "fiml"
    var onComplete: (() -> Void)?
    func start() {
        onComplete = { [weak self] in
            print(self?.name ?? "some")
        }
    }

    deinit {
        print("Downloader удален")
    }
}

var downloader: Downloader? = Downloader()
downloader?.start()
downloader = nil

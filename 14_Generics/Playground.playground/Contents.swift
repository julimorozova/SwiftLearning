import Foundation

//1 -Функция поиска элемента
//Создай обобщённую функцию containsElement(_:_:), которая проверяет, содержится ли элемент в массиве.

func containsElement<T: Equatable>(array: [T], element: T) -> Bool {
    return array.contains(element)
}

//2- Создать массив из двух элементов
//Напиши функцию, которая принимает два значения одного типа и возвращает массив из них.
//пример
//makeArray(1, 2) → [1, 2]

func getArray<T>(el1: T, el2: T) -> [T] {
    return [el1, el2]
}

//3- Напиши обобщённую функцию, которая сравнивает два значения (если тип поддерживает Equatable).
//пример
//isEqual("hi", "hi") → true
//isEqual(10, 20) → false

func isEqual<T: Equatable>(el1: T, el2: T) -> Bool {
    return el1 == el2
}

//4-Напиши функцию, которая создаёт словарь из массивов ключей и значений.
//пример
//makeDictionary(keys: ["a", "b"], values: [1, 2]) → ["a": 1, "b": 2]

func makeDictionary<K: Hashable, V>(keys: [K], values: [V]) -> [K : V] {
    var result: [K: V] = [:]
    for (index, key) in keys.enumerated() {
        if index < values.count {
            result[key] = values[index]
        }
    }
    return result
}

//5 - Обобщённая структура Pair
//Создай структуру Pair, которая хранит два значения любого типа.
struct Pair<T> {
    let name: T
    var age: T
}

//Сложнее
//1- Создай класс Cache<Key, Value>, где Key: Hashable.
//Добавь методы set, get, remove.

class Cache<Key: Hashable, Value> {
    private var storage: [Key : Value] = [:]

    func get(key: Key) -> Value? {
        return storage[key]
    }

    func set(key: Key, value: Value) {
        guard storage[key] == nil else { return }
        storage[key] = value
    }

    func remove(key: Key) {
        storage.removeValue(forKey: key)
    }
}

//2- Класс KeyValueStore
//Создай дженерик-класс для хранения пар "ключ-значение".
//пример
//let userAges = KeyValueStore<String, Int>()
//userAges.set(25, for: "Alice")
//print(userAges.get(for: "Alice") ?? 0) // 25

class KeyValueStore<Key: Hashable, Value> {
    private var data: [Key: Value] = [:]

    func set(_ value: Value, for key: Key) {
        data[key] = value
    }

    func get(for key: Key) -> Value? {
        return data[key]
    }

    func remove(at key: Key) {
        data.removeValue(forKey: key)
    }
}


//3- Класс Logger
//Создай класс Logger, который принимает сообщения любого типа и сохраняет их в массив.
//пример
//let intLogger = Logger<Int>()
//intLogger.add(1)
//intLogger.add(2)
//intLogger.showAll() // 1 2

//let stringLogger = Logger<String>()
//stringLogger.add("Start")
//stringLogger.add("End")
//stringLogger.showAll() // Start End

class Logger<T> {
    private var logs: [T] = []

    func add(_ message: T) {
        logs.append(message)
    }

    func showAll() {
        for log in logs {
            print(log)
        }
    }
}

let intLogger = Logger<Int>()
intLogger.add(1)
intLogger.add(2)
intLogger.showAll() // 1 2

let stringLogger = Logger<String>()
stringLogger.add("Start")
stringLogger.add("End")
stringLogger.showAll() // Start End

//4 - Создай протокол Repository, который хранит данные любого типа (ассоциативный тип) и имеет методы save и getAll. Реализуй этот протокол для дженерик класса

protocol Repository {
    associatedtype Item

    func save(_ item: Item)
    func getAll() -> [Item]
}

class BaseRepository<T>: Repository {
    typealias Item = T

    private var storage: [T] = []

    func save(_ item: T) {
        storage.append(item)
    }

    func getAll() -> [T] {
        return storage
    }
}


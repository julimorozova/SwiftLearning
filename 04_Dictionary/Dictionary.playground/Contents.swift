import Foundation

//1. Дан массив чисел:
//let numbers = [1, 2, 3, 2, 4, 1, 5]
//Напиши код, который убирает дубликаты и выводит уникальные числа.

let numbers = [1, 2, 3, 2, 4, 1, 5]

var uniqueNumbers  = Set(numbers).sorted()
print(uniqueNumbers)


//2. Даны два массива:
//let a = [1, 2, 3, 4]
//let b = [3, 4, 5, 6]
//Найди элементы, которые есть в обоих массивах.

let a = [1, 2, 3, 4]
let b = [3, 4, 5, 6]

let res = Set(a).intersection(Set(b)).sorted()


//3. Даны два множества:
//let first: Set = [1, 2, 3, 4]
//let second: Set = [3, 4, 5, 6]
//Выведи те элементы, которые встречаются только в одном из них

let first: Set = [1, 2, 3, 4]
let second: Set = [3, 4, 5, 6]

let uniqueElements = first.symmetricDifference(second)
print(uniqueElements)


//4. Дана строка:
//let text = "Hello, world!"
//Посчитай, сколько разных букв встречается в строке (регистр игнорировать).

let text = "Hello, world!"

var textArray = ""
for char in text {
    if char.isLetter {
        textArray.append(char)
    }
}
let countLetter = Set(textArray).count
print(countLetter)


//1. Дан словарь:
//let capitals = ["Kazakhstan": "Astana", "France": "Paris", "Japan": "Tokyo"]
//Создай новый словарь, где ключи и значения поменяются местами (ключ — столица, значение — страна).

let capitals = ["Kazakhstan": "Astana", "France": "Paris", "Japan": "Tokyo"]
var country: [String : String] = [:]

for (key, value) in capitals {
    country[value] = key
}
print(country)


//2. Дан массив слов:
//let words = ["apple", "banana", "avocado", "blueberry", "cherry", "apricot"]
//Сгруппируй их в словарь, где ключ — первая буква слова, а значение — массив слов, начинающихся с этой буквы.
//Ожидаемый результат:
//["a": ["apple", "avocado", "apricot"],
// "b": ["banana", "blueberry"],
// "c": ["cherry"]]

let words = ["apple", "banana", "avocado", "blueberry", "cherry", "apricot"]
var result: [String : [String]] = [:]

for word in words {
    if let firstChar = word.first {
        let key = String(firstChar)
        if result[key] != nil {
            result[key]?.append(word)
        } else {
            result[key] = [word]
        }
    }
}

print(result)

//3. Дана строка:
//let text = "banana"
//Создай словарь, где ключ — это буква, а значение — сколько раз она встречается.
//Ожидаемый результат:
//["b": 1, "a": 3, "n": 2]

let string = "banana"
var dictCountLetter: [Character: Int] = [:]

for char in string {
    if dictCountLetter[char] != nil {
        dictCountLetter[char] = (dictCountLetter[char] ?? 0) + 1
    } else {
        dictCountLetter[char] = 1
    }
}
print(dictCountLetter)


//4. Дан массив голосов за кандидатов:
//let votes = ["Alice", "Bob", "Alice", "Charlie", "Bob", "Alice"]
//Создай словарь, где ключ — имя кандидата, а значение — количество голосов. Найди победителя (кто набрал больше всего голосов).

let votes = ["Alice", "Bob", "Alice", "Charlie", "Bob", "Alice"]
var dictVotes: [String : Int] = [:]

for name in votes {
    if dictVotes[name] != nil  {
        dictVotes[name] = (dictVotes[name] ?? 0) + 1
    } else {
        dictVotes[name] = 1
    }
}
print(dictVotes)
var winnerName = ""
var maxVotes = 0

for (name, count) in dictVotes {
    if count > maxVotes {
        maxVotes = count
        winnerName = name
    }
}

print("Победитель: \(winnerName), голосов: \(maxVotes)")

//5. Дан массив слов:
//let words = ["cat", "dog", "elephant", "bat", "apple"]
//Сгруппируй их в словарь, где ключ — длина слова, а значение — массив слов этой длины.
//Ожидаемый результат:
//[3: ["cat", "dog", "bat"], 5: ["apple"], 8: ["elephant"]]

let words2 = ["cat", "dog", "elephant", "bat", "apple"]
var resutlDict: [Int : [String]] = [:]

for word in words2 {
    if resutlDict[word.count] != nil {
        resutlDict[word.count]?.append(word)
    } else {
        resutlDict[word.count] = [word]
    }
}

print(resutlDict)

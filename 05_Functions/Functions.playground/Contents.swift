import Foundation

//1 - Сумма чисел
//Функция принимает массив чисел [Int] и возвращает их сумму.
//Пример: [1, 2, 3] → 6


func sum(_ array: [Int]) -> Int {
    var result = 0
    for num in array {
        result += num
    }
    return result
}
print(sum([1,2,3]))

//2 - Подсчет четных
//Функция принимает массив [Int], возвращает количество четных чисел.
//Пример: [1, 2, 3, 4] → 2

func countEvens(in numbers: [Int]) -> Int {
    var count = 0
    for num in numbers {
        if num % 2 == 0 {
            count += 1
        }
    }
    return count
}
countEvens(in: [1, 2, 3, 4])

//3 - Словарь длин слов
//Функция принимает массив слов [String], возвращает словарь [String: Int], где ключ — слово, значение — длина слова.
//Пример: ["hi", "swift"] → ["hi": 2, "swift": 5]

func wordLengths(in array: [String]) -> [String : Int] {
    var result: [String : Int] = [:]
    for str in array {
        result[str] = str.count
    }
    return result
}
wordLengths(in: ["hi", "swift"])

//1 - Подсчет количества повторений
//Функция принимает массив чисел [Int], возвращает словарь [Int: Int], где ключ — число, значение — сколько раз оно встречается.
//Пример: [1, 2, 2, 3, 1] → [1: 2, 2: 2, 3: 1]

func numberCounts(in array: [Int]) -> [Int : Int] {
    var result: [Int : Int] = [:]
    for num in array {
        if result[num] != nil {
            result[num] = (result[num] ?? 0) + 1
        } else {
            result[num] = 1
        }

    }
    return result
}
numberCounts(in: [1, 2, 2, 3, 1])


//2 - Слияние массивов без дубликатов
//Функция принимает два массива [String] и возвращает массив без повторяющихся элементов.
//Пример: ["a", "b", "c"], ["b", "c", "d"] → ["a", "b", "c", "d"]

func mergeUnique(array1: [String], array2: [String]) -> [String] {
    Set(array1 + array2).sorted()
}
mergeUnique(array1: ["a", "b", "c"], array2: ["b", "c", "d"])


//3 - Самое частое слово
//Функция принимает массив слов [String] и возвращает слово, которое встречается чаще всего.
//Если таких слов несколько — вернуть любое.
//Пример: ["apple", "banana", "apple", "orange"] → "apple"

func mostFrequentWord(in words: [String]) -> String? {
    guard !words.isEmpty else {
        return nil
    }

    var countDict: [String : Int] = [:]
    var maxCountWord: String = ""
    var maxCount: Int = 0

    for word in words {
        countDict[word, default: 0] += 1
    }

    for (word, count) in countDict {
        if count > maxCount {
            maxCount = count
            maxCountWord = word
        }
    }

    return maxCountWord
}

mostFrequentWord(in: ["apple", "banana", "apple", "orange"])

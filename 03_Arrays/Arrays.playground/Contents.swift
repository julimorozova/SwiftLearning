import Foundation

// 1. Создай массив из 5 любых чисел. Выведи каждое число на экран с помощью for-in.

var numbers: [Int] = [30, 5, 2, 3, 65]

//for number in numbers {
//    print(number )
//}

// 2. Добавь элемент в конец массива и в начало массива. Выведи результат.

numbers.append(9)
numbers.insert(44, at: 0)

for number in numbers {
    print(number )
}

// 3. Удаление элементов: Удали последний элемент массива и выведи его.

let lastIndex = numbers.count - 1
let lastNumber = numbers.remove(at: lastIndex)
print(lastNumber)

// 4. Доступ по индексу: Выведи первый и последний элемент массива.

if let lastEl = numbers.last {
    print(lastEl)
}
if let firstEl = numbers.first {
    print(firstEl)
}


// 5. Сумма элементов: Посчитай сумму всех чисел массива и выведи результат.
var count: Int = 0
for num in numbers {
    count += num
}
print(count)

//6. Поиск элемента: Проверь, содержит ли массив число 10, и выведи соответствующее сообщение. Используйте следущий метод
//let isContains = users.contains("Petr")// возвращает true/false в зависимости от наличии указанного значения в массиве

let isContains = numbers.contains(10)
if isContains {
    print("Массив содержит число 10")
} else {
    print("Ничего не найдено")
}

// 7. Длина массива: Выведи количество элементов в массиве.
print(numbers.count)

// 8. Замена элемента: Замени третий элемент массива на другое значение

if numbers.count >= 3 {
    numbers[2] = 100
} else {
    print("В массиве меньше 3 элементов")
}

//1. Проверить, есть ли слово "apple" в массиве

var fruits = ["banana", "orange", "apple", "kiwi"]

if let index = fruits.firstIndex(of: "apple") {
    print("Значение найдено")
} else {
    print("Ничего не найдено")
}

// 2. Отсортировать массив по алфавиту

fruits.sort()

// 3. Создать массив String и вывести все значениея, длина которых больше 5

for fruit in fruits {
    if fruit.count > 5 {
        print(fruit)
    }
}


//4. Проверить любую строку на палиндром

func isPalindrome(_ text: String) -> Bool {
    var str = ""

    for char in text {
        if char.isLetter {
            str.append(char)
        }
    }

    return str == String(str.reversed())
}

isPalindrome("мама")
isPalindrome("анна")


//5. Создай массив чисел и подсчитай, сколько раз встречается число 3 в массиве.


func countOfNumber(_ numbers: [Int], number: Int) -> Int {
    var count = 0
    for num in numbers {
        if num == number {
            count += 1
        }
    }
    return count
}
let nums: [Int] = [2, 5, 3, 33, 4, 3, 2, 6, 3]
let countOf3 = countOfNumber(nums, number: 3)
print("Число 3 встречается в массиве \(countOf3) раз/раза")

// 6. Удали все элементы массива, которые меньше 5.

var result: [Int] = []

for num in numbers {
    if num >= 5 {
        result.append(num)
    }
}

print(result)
print(numbers)

//7. Создай массив из чисел и выведи сумму всех его элементов

var sumOfNumbers = 0

for num in numbers {
    sumOfNumbers += num
}
print(sumOfNumbers)

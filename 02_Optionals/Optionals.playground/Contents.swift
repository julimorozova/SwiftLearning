import Foundation

// 1. Объяви переменную name типа String?, сначала присвой ей nil, а потом своё имя. Выведи её в консоль.

var name: String? = nil
name = "julia"
if let name {
    print(name)
}

// 2. Создай переменную age: Int? = nil. Если в age лежит число – выведи его. Если nil – выведи "Возраст не указан".

var age: Int? = nil

if let age {
    print(age)
} else {
    print("Возраст не указан")
}

// 3. Создай переменную nickname: String? = "ErrorNil". Используя if let, выведи в консоль:
// - "Твой ник: ErrorNil" – если значение есть
// - "Ника нет" – если nil.

var nickname: String?

if let nickname {
    print("Твой ник: ErrorNil")
} else {
    print("Ника нет")
}

//4. Пусть email: String? = nil. С помощью if let и else выведи:
//- "Твой email: ...", если он есть
//- "Email не задан", если nil.

var email: String? = nil
if let email {
    print("Твой email: \(email)")
} else {
    print("Email не задан")
}

//5. Задай переменные и присвой значения:
//- name: String?
//- age: Int?
//- city: String?
//Далее выведии используя оператор ??:
//- "Имя: <name>" если оно есть, иначе "Имя не указано"
//- "Возраст: <age>" если он есть, иначе 0
//- "Город: <city>" если он есть, иначе "Город не указан"

var nameTwo: String?
var ageTwo: Int?
var city: String?

print("Имя: \(nameTwo ?? "Имя не указано")")
print("Возраст: \(ageTwo ?? 0)")
print("Город: \(city ?? "Город не указан")")


//6. Задана переменая var score: Int? = 85
//С помощью if let выведи:
//- "Отлично" – если score >= 80
//- "Хорошо" – если score >= 50
//- "Нужно подтянуть" – если score < 50
//- "Нет данных" – если nil.

var score: Int? = 85

if let score {
    if score >= 80 {
        print("Отлично")
    } else if score >= 50 {
        print("Хорошо")
    } else {
        print("Нужно подтянуть")
    }
} else {
    print("Нет данных")
}

//7. var numberString: String? = "42". С помощью if let, попробуй преобразовать строку в Int.
//Если получилось – выведи "Число: 42", если нет – "Некорректное значение".

var numberString: String? = "42"

if let numberString = numberString, let number = Int(numberString) {
    print("Число: 42")
} else {
    print("Некорректное значение")
}

//8. Создай переменную day = 3. С помощью switch выведи:
//- "Понедельник" если 1
//- "Вторник" если 2
//- "Среда" если 3
//- "День не распознан" для всех остальных чисел.


var day: Int = 3
switch day {
case 1:
    print("Понедельник")
case 2:
    print("Вторник")
case 3:
    print("Среда")
default:
    print("День не распознан")
}

//9. Создай переменную color = "red". С помощью switch выведи:
//- "Стой" если красный
//- "Жди" если жёлтый
//- "Иди" если зелёный
//- "Неизвестный цвет" если другой.

var color = "red"
switch color {
case "yellow":
    print("Жди")
case "green":
    "Иди"
case "red":
    "Стой"
default:
    "Неизвестный цвет"
}

/// 1 -
//var numberString: String? = "123"
//С помощью if let попробуй преобразовать её в Int.
//Если получилось — выведи "Число: 123".
//Если не получилось — выведи "Не удалось преобразовать".

var numberStringTwo: String? = "123"

if let numberStringTwo = numberStringTwo, let number = Int(numberStringTwo) {
    print("Число: 123")
} else {
    print("Не удалось преобразовать")
}

//2 -
//var username: String? = "Alice"
//var password: String? = nil
//С помощью optional binding (if let name = username, let pass = password) выведи:
//
//"Добро пожаловать, Alice!", если и имя, и пароль есть.
//
//"Введите имя и пароль", если чего-то нет.

var username: String? = "Alice"
var password: String? = nil
if let name = username, let pass = password {
    print("Добро пожаловать, Alice!")
} else {
    print("Введите имя и пароль")
}

//3-
//var name: String? = "Bob"
//var email: String? = nil
//var country: String? = "Kazakhstan"
//С помощью if let выведи "Профиль: <name>, <email>, <country>", если все три значения есть.
//Иначе выведи "Заполните все поля".

var userName: String? = "Bob"
var userEmail: String? = nil
var country: String? = "Kazakhstan"

if let name = userName,
   let email = userEmail,
   let country = country {
    print("Профиль: \(name), \(email), \(country)")
} else {
    print("Заполните все поля")
}

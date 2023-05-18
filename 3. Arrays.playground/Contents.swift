import Cocoa

//MARK: - 1. Создайте массив учеников из 12 мальчиков

typealias Student = (String, Int)
var studentsArray: [Student] = [("Ильгам", 20), ("Данил", 20), ("Михаил", 20), ("Плуто", 20), ("Роланд", 20), ("Марк", 20), ("Ильгам", 20), ("Неокентий", 20), ("Василий", 20), ("Алеша", 20), ("Вася", 20), ("Петя", 20)]


//MARK: -  2. Добавьте 7 девочек: с помощью append и по определённому индексу: см. insert. Выведите результат в консоль.

studentsArray.insert(("Аня", 20), at: 1)
studentsArray.insert(("Ксюша", 18), at: 1)
studentsArray.insert(("Аня", 22), at: 1)

studentsArray.append(("Алена", 20))
studentsArray.append(("Ксения", 20))
studentsArray.append(("Алина", 16))
studentsArray.append(("Аэлина", 20))

studentsArray

//MARK: -  3. Удалите 7 учеников так, чтобы получилось 5 мальчиков и 5 девочек. См. Удаление по диапазону. Выведите результат в консоль.

studentsArray.popLast()
studentsArray.popLast()
studentsArray.remove(at: 0)
studentsArray.remove(at: 6)
studentsArray.remove(at: 7)
studentsArray.remove(at: 8)
studentsArray.remove(at: 9)

studentsArray

//MARK: -  4. Создайте массив оценок от 0 до 5 и второй — от 6 до 10. Объедените два массива в один.

var marks1to5 = [0, 1, 2, 3, 4 , 5]
var marks6to10 = [6, 7, 8, 9, 10]

marks1to5 + marks6to10

//MARK: -  5. Присвойте каждому ученику оценку. Так, чтобы в консоли получилось примерно: «Вася — 5 баллов.Неплохо.».

print("\(studentsArray[0].0) - \(marks1to5[4]) баллов. Неплохо")

//MARK: -  6. Создайте массив из чисел. Числа - это купюры в долларах. Посчитать количество денег и вывести в консоль.

var moneys = [1, 3, 5, 7, 10, 100, 1000, 500]

moneys.count
moneys.reduce(0, +)

//MARK: - Продвинутый уровень

//MARK: - 1. Создайте 10 строк с названиями стран. Создайте массив. Проверьте строки: если в строке более 5 символов — добавить её в массив. Но если строка содержит букву А - заменить эту букву на другую и добавить изменённую строку в массив.

var str1 = "Америка"
var str2 = "Россия"
var str3 = "Австралия"
var str4 = "Недерланды"
var str5 = "Индия"
var str6 = "Турция"
var str7 = "Казахстан"
var str8 = "Таджикистан"
var str9 = "Афганистан"
var str10 = "Япония"

var countries: [String] = []

if str1.count > 5 {
    countries.append(str1.replacingOccurrences(of: "А", with: "Б"))
    countries
}


//MARK: - 2. Создайте массив из 20-30 значений любого типа. Сделайте линейную сортировку (linear sort).

var array1 = [2, 56, 4, 33, 78, 456, 89, 56, 332]

for i in 0...array1.count - 2 {
    for j in i + 1...array1.count - 1 {
        if array1[i] > array1[j] {
            let temp = array1[i]
            array1[i] = array1[j]
            array1[j] = temp
        }
    }
}

array1
array1.shuffle()
array1

//MARK: - 3. Сделайте сортировку пузырьком (bubble sort).

for i in 0...array1.count - 1 {
    for j in 0...array1.count - 1 {
        if array1[i] < array1[j] {
            let temp = array1[i]
            array1[i] = array1[j]
            array1[j] = temp
        }
    }
}

array1
array1.shuffle()

//MARK: -  4. Сделайте быструю сортировку (quick sort).

func quicksort(array: Array<Int>) -> Array<Int> {
    
    if array.count < 2 {
        return array
    }
    
    var pivot = array.last!
    
    var lhs: Array<Int> = []
    var rhs: Array<Int> = []
    
    for number in array {
        if number > pivot {
            rhs.append(number)
        } else if number < pivot {
            lhs.append(number)
        }
    }
    return quicksort(array: lhs) + [pivot] + quicksort(array: rhs)
}
   
quicksort(array: array1)


//MARK: - 5. Сделайте bubble sort немного быстрее — создайте алгоритм «шейкерной» сортировки, или коктейльный алгоритм.

//func chakerSort(array: inout Array<Int>) {
//    var swapped = true
//    var startIndex = 0
//    var endIndex = array.count - 1
//
//    while swapped {
//
//        swapped = false
//
//        for i in startIndex...endIndex - 1 {
//            if array[i] < array[i + 1] {
//                var temp = array[i + 1]
//                array[i + 1] = array[i]
//                array[i] = temp
//                swapped = true
//            }
//         }
//
//        if !swapped {
//            break
//        }
//
//        swapped = true
//
//        endIndex -= 1
//
//        print(endIndex, startIndex)
//        for i in stride(from: endIndex - 1, through: startIndex - 1, by: -1) {
//            if array[i] > array[i + 1] {
//                var temp = array[i + 1]
//                array[i + 1] = array[i]
//                array[i] = temp
//                swapped = true
//            }
//        }
//
//        startIndex += 1
//    }
//}

func cocktailSorted(array: inout Array<Int>) {
    var swapped = false

    guard array.count > 1 else {
        return
    }
    
    repeat {
      for i in 0...array.count-2 where array[i] > array[i + 1] {
        (array[i], array[i + 1]) = (array[i + 1], array[i])
        swapped = true
      }

      guard swapped else {
        break
      }

      swapped = false

      for i in stride(from: array.count - 2, through: 0, by: -1) where array[i] > array[i + 1] {
        (array[i], array[i + 1]) = (array[i + 1], array[i])
        swapped = true
      }
    } while swapped

    return
  }


array1.shuffle()
cocktailSorted(array: &array1)



//MARK: - 6. Отсортируйте массив по алгоритму четно-нечетной сортировки.

func evenOddSort(array: inout Array<Int>) {
    for i in 0...array.count - 1 {
        for j in (i % 2 == 0 ? 0 : 1)...array.count - 1 {
            if array[i] < array[j] {
                var temp = array[i]
                array[i] = array[j]
                array[j] = temp
            }
        }
    }
}

array1.shuffle()
evenOddSort(array: &array1)

import Cocoa

//MARK: - 1. Напишите с помощью строк своё резюме: имя, фамилия, возраст, где живете, хобби и т.п.

var name = "Ильгам"
var surname = "Нафиков"
var age = "20"
var town = "Казани"
var hobby = "волейбол"

//MARK: -  2. Соберите из этих строк 1 большую (вспоминаем интерполяцию) и выведите в консоль.

print("Меня зовут \(name) \(surname),мне \(age) лет, я живу в \(town) и мое хобби \(hobby)")


//MARK: -  3. Напишите 10 строк, соберите их с помощью интерполяции и поставьте в нужных местах переносы на новую строку и пробелы (см. \n и \t).

var str1 = "1"
var str2 = "2"
var str3 = "3"
var str4 = "4"
var str5 = "5"
var str6 = "6"
var str7 = "7"
var str8 = "8"
var str9 = "9"
var str10 = "10"

print(" \(str1) \n\t \(str2) \(str3) \n\t\t \(str4) \(str5) \(str6) \n\t\t\t \(str7) \(str8) \(str9) \(str10)")

//MARK: -  4. Разбейте собственное имя на символы, перенося каждую букву на новую строку.

print( name.map({ String($0) + "\n"}).joined(separator: ""))

//MARK: -  5. Создайте переменную типа Int и переменную типа String.Тип Int преобразуйте в String и с помощью бинарного оператора сложите 2 переменные в одну строку.

var intVar = 1
var stringVar = "1"

String(intVar) + stringVar

//MARK: - Продвинутый уровень

//MARK: -  1. Создайте 5-6 строк с названиями городов. Затем создайте 5-6 строк с названиями стран. Если название города совпадает со страной — выведите в консоль название страны, города и слово: ПРАВИЛЬНО! Соответственно, если не совпало — название страны и города и слово НЕПРАВИЛЬНО.

var town1 = "Москва"
var town2 = "Ташкент"
var town3 = "Казань"
var town4 = "Але"
var town5 = "Уругвай"

var country1 = "Россия"
var country2 = "Узбекистан"
var country3 = "Америка"
var country4 = "Финляндия"
var country5 = "Недерланды"

print(country1, town1, "ПРАВИЛЬНО!")
print(country2, town2, "НЕПРАВИЛЬНО!")
print(country3, town3, "НЕПРАВИЛЬНО!")
print(country4, town4, "НЕПРАВИЛЬНО!")
print(country5, town5, "НЕПРАВИЛЬНО!")

//MARK: -  2. Возьмите созданные страны и проверьте их: содержат ли они букву A(буква на ваш выбор).

country1.contains("а")
country2.contains("а")
country3.contains("а")
country4.contains("а")
country5.contains("а")

//MARK: -  3. Создайте строку — набор букв кириллицей. Буквы абсолютно любые, строчные.

var cirilicLetters = "абвыаываываыаыва"

//MARK: -  4. Замените их, создав отдельную переменную, на заглавные. А потом на строчные латинские.

var uppercasedCirilicLetters = cirilicLetters.uppercased()
var toLatin = cirilicLetters.applyingTransform(.toLatin, reverse: false)

//MARK: -  5. Посчитайте индекс под которым находится каждая отдельно взятая буква.

print(cirilicLetters.indices.map({ $0 }))
print(cirilicLetters.indices.count)


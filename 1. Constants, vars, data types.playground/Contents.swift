import Cocoa

//MARK: - 1. Напишите переменные и константы всех базовых типов данных: int, UInt, float, double, string. У чисел вывести их минимальные и максимальные значения.

var uintVar: UInt
var intVar: Int
var doubleVar: Double
var floatVar: Float
var stringVar: String
var booleanVar: Bool

let uintLet: UInt
let intLet: Int
let doubleLet: Double
let floatLet: Float
let stringLet: String
let booleanLet: Bool

Int.max
Int.min

UInt.max
UInt.min

//MARK: - 2. Создайте список товаров с различными характеристиками (количество, название). Используйте typealias.

typealias Count = Int
typealias Name = String
typealias Price = Int
typealias Product = (Name, Count, Price)
var products: [Product] = [("Курица 1кг.", 1, 299), ("Snickers 50г.", 1, 49)]

//MARK: - 3. Напишите различные выражения с приведением типа.

Int("12")! + 12
String(12) + "12"

//MARK: - 4. Вычисления с операторами (умножение, деление, сложение, вычитание): создайте консольный калькулятор. Результат вычислений должен быть похож на: «3 + 2 = 5».

//var number1: Int = readLine()
//var input: Character = readLine()
//var number2: Int = readLine()

var number1: Int = 1
var input: Character = "+"
var number2: Int = 2

switch input {
    case "+":
        print("\(number1) + \(number2) = \(number1 + number2)")
    case "/":
        print("\(number1) / \(number2) = \(number1 / number2)")
    case "*":
        print("\(number1) * \(number2) = \(number1 * number2)")
    case "-":
        print("\(number1) - \(number2) = \(number1 - number2)")
    default:
        print("nan")
}

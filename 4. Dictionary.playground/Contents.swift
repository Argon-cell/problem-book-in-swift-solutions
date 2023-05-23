import Cocoa


//MARK: - 1. Создайте 10 разных Dictionary с разными типами данных. Один из них должен содержать все месяца года на русском. Второй на английском.

var dict1: [Int: String] = [1: "January", 2: "January", 3: "January", 4: "January", 5: "January", 6: "January", 7: "January", 8: "January", 9: "January", 10: "January", 11: "January", 12: "January"]
var dict2 = Dictionary(uniqueKeysWithValues: dict1.map {
    ($0.0, $0.1.applyingTransform(.latinToCyrillic, reverse: false))
})

print(dict1)
print(dict2)

//MARK: - 2. Соберите все ключи и значения каждого Dictionary и распечатайте в консоль.

dict1.keys
dict1.values

//MARK: - 3. Создайте пустой Dictionary и через условный оператор if проверьте, пустой он или нет. Если пустой, то в условии добавьте в него пар значений.

var dict3: [Int: String] = [:]
dict3.isEmpty ? dict3[1] = "1" : ()
dict3


//MARK: - 4. Cоздайте словарь — ключ: «иномарка», «значение»: название машины.

typealias Mark = String
typealias Name = String

var dict4: [Mark : Name] = [:]


//MARK: - 5. Добавьте в него значение по ключу - «отечественная». Распечатайте ключи и значения в консоль. Затем отдельно только значения. Удалите из словаря иномарку по ключу (двумя способами: через nil и removeValue().

dict4["отечественная"] = "Лада"
dict4.values
dict4.keys

dict4["отечественная"] = nil
dict4.removeValue(forKey: "отечественная")

//MARK: - Продвинутый уровень

//MARK: - 1. Создайте словарь, где ключ — фамилия солдата, а значение — его приветствие.

typealias Surname = String
typealias Greeting = String

var dict5: [Surname: Greeting] = [:]

//MARK: - 2. В цикле пройдитесь по всем ключам и распечатайте фамилию каждого солдата.

dict5["Нафиков"] = "Здравствуйте"

for key in dict5.keys {
    key
}

//MARK: - 3. Сделайте тоже самое со значениями и распечатайте приветствие каждого солдата.

for value in dict5.values {
    value
}

//MARK: - 4. Отсортировать словарь так, чтобы фамилии шли по алфавиту.

dict5.sorted { first, second in
    first.key > second.value
}


//MARK: - 5. Создайте логическую проверку: если ключ словаря — Иванов, то скажите, что это снайпер. Сделайте тоже самое со всеми ключами.

dict5["Иванов"] = "Прив"

if dict5["Иванов"] != nil {
    print("Снайпер")
}

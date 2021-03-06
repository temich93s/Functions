//
//  main.swift
//  Functions
//
//  Created by 2lup on 28.09.2021.
//

import Foundation

print("Hello, World!")


//MARK: Объявление и вызов функций
print("\n//Объявление и вызов функций")

func greet(namePerson: String) -> String {
    return "Hello \(namePerson)!"
}

print(greet(namePerson: "Artem"))


//MARK: Функции без параметров
print("\n//Функции без параметров")

func sayHelloWorld() -> String {
    return "Hello world!"
}

print(sayHelloWorld())


//MARK: Функции с несколькими входными параметрами
print("\n//Функции с несколькими входными параметрами")

func greet(namePerson: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return "Hello again \(namePerson)!"
    } else {
        return greet(namePerson: namePerson)
    }
}

print(greet(namePerson: "Misha", alreadyGreeted: true))
print(greet(namePerson: "Oleg", alreadyGreeted: false))


//MARK: Функции, не возвращающие значения
print("\n//Функции, не возвращающие значения")

func printGreet(namePerson: String) -> Int{
    print("Hello \(namePerson)!")
    return namePerson.count
}

print(printGreet(namePerson: "Ivan"))

func printGreetWithoutCounting(namePerson: String) {
    let _ = printGreet(namePerson: namePerson)
}

printGreetWithoutCounting(namePerson: "Alex")


//MARK: Функции, возвращающие несколько значений
print("\n//Функции, возвращающие несколько значений")

func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for number in array {
        currentMin = (number < currentMin) ? number : currentMin
        currentMax = (number > currentMax) ? number : currentMax
    }
    return (currentMin, currentMax)
}

let someArray = [2, 5, 8, 2, 7, 9, 0, 3]
var minMaxNumber = minMax(array: someArray)
print("Min: \(minMaxNumber.min), Max: \(minMaxNumber.max)")


//MARK: Опциональный кортеж как возвращаемый тип
print("\n//Опциональный кортеж как возвращаемый тип")

func minMaxOptional(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for number in array {
        currentMin = (number < currentMin) ? number : currentMin
        currentMax = (number > currentMax) ? number : currentMax
    }
    return (currentMin, currentMax)
}

let someArray2 = [Int]()

if let minMaxNumber = minMaxOptional(array: someArray2) {
print("Min: \(minMaxNumber.min), Max: \(minMaxNumber.max)")
}

if let minMaxNumber = minMaxOptional(array: someArray) {
print("Min: \(minMaxNumber.min), Max: \(minMaxNumber.max)")
}


//MARK: Функции с неявным возвращаемым значением
print("\n//Функции с неявным возвращаемым значением")

func anotherGreeting(for name: String) -> String {
    "Hello \(name)!!!"
}

print(anotherGreeting(for: "Nikita"))


//MARK: Указываем ярлыки аргументов
print("\n//Указываем ярлыки аргументов")

func someFunction(argumentLabel parameterName: Int) {
    print("\(parameterName) * 10 = \(parameterName * 10)")
}

someFunction(argumentLabel: 9)

//MARK: Пропуск ярлыков аргумента
print("\n//Пропуск ярлыков аргумента")

func someFunction1(_ parameterName: Int) {
    print("\(parameterName) * 10 = \(parameterName * 10)")
}

someFunction1(8)


//MARK: Значения по умолчанию для параметров
print("\n//Значения по умолчанию для параметров")

func someFunction2(number1: Int, number2: Int = 10) {
    print("\(number1) * \(number2) = \(number1 * number2)")
}

someFunction2(number1: 4)
someFunction2(number1: 3, number2: 4)


//MARK: Вариативные параметры
print("\n//Вариативные параметры")

func someFunction3(numbers: Double...) {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    print("\(total) / \(numbers.count) = \(total / Double(numbers.count))")
}

someFunction3(numbers: 13, 1, 14.5, 18)


//MARK: Сквозные параметры
print("\n//Сквозные параметры")

func someFunction4(numberA: inout Int, numberB: inout Int) {
    let temporaryNumber = numberA
    numberA = numberB
    numberB = temporaryNumber
    print("numberA = \(numberA), numberB = \(numberB)")
}
var a = 1
var b = 9
someFunction4(numberA: &a, numberB: &b)


//MARK: Использование функциональных типов
print("\n//Использование функциональных типов")

func someFunction5(a: Int, b: Int) -> Int {
    print("a + b = \(a + b)")
    return a + b
}

func someFunction6(a: Int, b: Int) -> Int {
    print("a * b = \(a * b)")
    return a * b
}

var someFunction7: (Int, Int) -> Int = someFunction5

print(someFunction7(3, 4))

someFunction7 = someFunction6
print(someFunction7(3, 4))


//MARK: Функциональные типы как типы параметров
print("\n//Функциональные типы как типы параметров")

func someFunction8(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print(function(a, b))
}

someFunction8(someFunction6(a:b:), 5, 5)


//MARK: Функциональные типы как возвращаемые типы
print("\n//Функциональные типы как возвращаемые типы")

func stepForward(number: Int) -> Int {
    return number + 1
}

func stepBackward(number: Int) -> Int {
    return number - 1
}

func someFunction9(_ Backward: Bool) -> (Int) -> (Int) {
    return Backward ? stepBackward(number:) : stepForward(number:)
}

var someFunction10 = someFunction9(true)
print(someFunction10(9))

someFunction10 = someFunction9(false)
print(someFunction10(9))


//MARK: Вложенные функции
print("\n//Вложенные функции")

func someFunction11(_ Backward: Bool) -> (Int) -> (Int) {
    func stepForward(number: Int) -> Int { return number + 1 }
    func stepBackward(number: Int) -> Int { return number - 1 }
    return Backward ? stepBackward(number:) : stepForward(number:)
}

var someFunction12 = someFunction11(true)
print(someFunction12(7))

someFunction12 = someFunction11(false)
print(someFunction12(7))

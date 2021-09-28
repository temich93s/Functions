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

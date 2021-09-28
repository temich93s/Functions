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
let minMaxNumber = minMax(array: someArray)
print("Min: \(minMaxNumber.min), Max: \(minMaxNumber.max)")

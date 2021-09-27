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

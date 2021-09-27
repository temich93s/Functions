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

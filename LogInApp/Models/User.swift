//
//  User.swift
//  LogInApp
//
//  Created by Vasichko Anna on 17.12.2021.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            userName: "Name",
            password: "Password",
            person: Person(
                name: "Anna",
                surname: "Vasichko",
                city: "Saint Petersburg",
                age: 24,
                languages: "🇬🇧, 🇮🇹, 🇷🇺",
                hobbies: "Books and travelling",
                pet: "🐶")
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let city: String
    let age: Int
    let languages: String
    let hobbies: String
    let pet: String
}

//
//  Person.swift
//  ContactList
//
//  Created by Юрий Губин on 18.10.2022.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    let names = [
        "Irina",
        "Ekaterina",
        "Monica",
        "Elena",
        "Nataliya",
        "Polina",
        "Svetlana",
        "Kira",
        "Nina",
        "Varvara"
    ]
    
    let surnames = [
    
    ]
}

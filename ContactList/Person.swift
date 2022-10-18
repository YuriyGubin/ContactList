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
    let phoneNumber: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        let data = DataManager()

        let persons = [Person(
            name: data.names[Int.random(in: 0..<data.names.count)],
            surname: data.surnames[Int.random(in: 0..<data.surnames.count)],
            email: data.emails[Int.random(in: 0..<data.emails.count)],
            phoneNumber: data.phoneNumbers[Int.random(in: 0..<data.phoneNumbers.count)]
        )
        ]
        return persons
    }
    
    
}

class DataManager {
    
    let names = [
        "Irina",
        "Ekaterina",
        "Vera",
        "Elena",
        "Nataliya",
        "Polina",
        "Svetlana",
        "Kira",
        "Nina",
        "Varvara"
    ]
    
    let surnames = [
    "Petrova",
    "Kirsanova",
    "Tenyunina",
    "Ivanova",
    "Sidorova",
    "Smetanina",
    "Ovsova",
    "Fedorova",
    "Kalinina",
    "Vaseneva"
    ]
    
    let emails = [
        "bigeyes@gmail.com",
        "nicesmile@gmail.com",
        "kindsoul@gmail.com",
        "elasticnut@gmail.com",
        "cutyface@gmail.com",
        "swanneck@gmail.com",
        "rougecheeks@gmail.com",
        "velvetskin@gmail.com",
        "longlegs@gmail.com",
        "clever@gmail.com"
    ]
    
    let phoneNumbers = [
    "+79256984128",
    "+79586243569",
    "+78965412354",
    "+18569874125",
    "+14587896521",
    "+78546985698",
    "+78456215489",
    "+78362145487",
    "+78523652497",
    "+73658741020"
    ]
}

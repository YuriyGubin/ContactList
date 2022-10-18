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
        let dataManager = DataManager()
        var persons: [Person] = []
        
        for _ in 0..<dataManager.names.count {
            persons.append(Person(
                name: dataManager.names[Int.random(in: 0..<dataManager.names.count)],
                surname: dataManager.surnames[Int.random(in: 0..<dataManager.surnames.count)],
                email: dataManager.emails[Int.random(in: 0..<dataManager.emails.count)],
                phoneNumber: dataManager.phoneNumbers[Int.random(in: 0..<dataManager.phoneNumbers.count)]
            ))
            
        }
        
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

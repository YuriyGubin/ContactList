//
//  Person.swift
//  ContactList
//
//  Created by Yuriy Gubin on 18.10.2022.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
        
        let dataManager = DataManager()
        
        let shuffledNames = dataManager.names.shuffled()
        let shuffledSurnames = dataManager.surnames.shuffled()
        let shuffledEmails = dataManager.emails.shuffled()
        let shuffledPhoneNumbers = dataManager.phoneNumbers.shuffled()
        
        var persons: [Person] = []
        
        for data in 0..<dataManager.names.count {
            persons.append(Person(
                name: shuffledNames[data],
                surname: shuffledSurnames[data],
                email: shuffledEmails[data],
                phoneNumber: shuffledPhoneNumbers[data]
            ))
        }
        return persons
    }
}



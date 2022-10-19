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
        
        let dataStore = DataStore()
        
        let shuffledNames = dataStore.names.shuffled()
        let shuffledSurnames = dataStore.surnames.shuffled()
        let shuffledEmails = dataStore.emails.shuffled()
        let shuffledPhoneNumbers = dataStore.phoneNumbers.shuffled()
        
        var persons: [Person] = []
        
        for data in 0..<dataStore.names.count {
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



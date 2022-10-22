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
        
        let dataStore = DataStore.shared
        
        let staticName = dataStore.names.remove(at: 0)
        let staticSurname = dataStore.surnames.remove(at: 0)
        let staticEmail = dataStore.emails.remove(at: 0)
        let staticPhone = dataStore.phoneNumbers.remove(at: 0)
        
        var persons: [Person] = []
        
        persons.append(Person(
            name: staticName,
            surname: staticSurname,
            email: staticEmail,
            phoneNumber: staticPhone
        ))
        
        let shuffledNames = dataStore.names.shuffled()
        let shuffledSurnames = dataStore.surnames.shuffled()
        let shuffledEmails = dataStore.emails.shuffled()
        let shuffledPhoneNumbers = dataStore.phoneNumbers.shuffled()
        
        let count = min(
            shuffledNames.count,
            shuffledSurnames.count,
            shuffledEmails.count,
            shuffledPhoneNumbers.count
        )
        
        for index in 0..<count {
            persons.append(Person(
                name: shuffledNames[index],
                surname: shuffledSurnames[index],
                email: shuffledEmails[index],
                phoneNumber: shuffledPhoneNumbers[index]
            ))
        }
        return persons.shuffled()
    }
}



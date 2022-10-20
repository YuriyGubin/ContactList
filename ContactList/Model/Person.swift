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
        
        let hardName = dataStore.names.remove(at: 0)
        let hardSurname = dataStore.surnames.remove(at: 0)
        let hardEmail = dataStore.emails.remove(at: 0)
        let hardPhone = dataStore.phoneNumbers.remove(at: 0)
        
        var persons: [Person] = []
        
        persons.append(Person(
            name: hardName,
            surname: hardSurname,
            email: hardEmail,
            phoneNumber: hardPhone
        ))
        
        let shuffledNames = dataStore.names.shuffled()
        let shuffledSurnames = dataStore.surnames.shuffled()
        let shuffledEmails = dataStore.emails.shuffled()
        let shuffledPhoneNumbers = dataStore.phoneNumbers.shuffled()
        
        for index in 0..<dataStore.names.count {
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



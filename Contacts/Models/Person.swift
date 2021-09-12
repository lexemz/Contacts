//
//  Person.swift
//  Contacts
//
//  Created by Igor on 07.09.2021.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let mail: String

    var getNameAndSurname: String { "\(name) \(surname)" }

    static func getRandomPersons() -> [Person] {
        var retunedPersons: [Person] = []
        let mockDatabase = DataManager.shared
        
        let shufledNames = mockDatabase.names.shuffled()
        let shufledSurnames = mockDatabase.surnames
        let shufledMails = mockDatabase.mails
        let shufledPhones = mockDatabase.phoneNumbers
        
        let personsCount = min(shufledNames.count,
                               shufledSurnames.count,
                               shufledMails.count,
                               shufledPhones.count)
        
        for i in 0..<personsCount {
            let generatedPerson = Person(
                name: shufledNames[i],
                surname: shufledSurnames[i],
                phoneNumber: shufledPhones[i],
                mail: shufledMails[i])
            
            retunedPersons.append(generatedPerson)
        }
        
        return retunedPersons
    }
}

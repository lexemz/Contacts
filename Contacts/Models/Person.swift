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

        while true {
            guard let randomNameIndex = mockDatabase.names.indices.randomElement(),
                  let randomSurnameIndex = mockDatabase.surnames.indices.randomElement(),
                  let randomPhoneIndex = mockDatabase.phoneNumbers.indices.randomElement(),
                  let randomMailIndex = mockDatabase.mails.indices.randomElement()
            else { return retunedPersons }
        
        
            
            retunedPersons.append(Person(
                name: mockDatabase.names.remove(at: randomNameIndex),
                surname: mockDatabase.surnames.remove(at: randomSurnameIndex),
                phoneNumber: mockDatabase.phoneNumbers.remove(at: randomPhoneIndex),
                mail: mockDatabase.mails.remove(at: randomMailIndex)
            ))
        }
        return retunedPersons
    }
}

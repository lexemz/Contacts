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

    static func getRandomPersons(count: Int) -> [Person] {
        var retunedPersons: [Person] = []

        for _ in 1...count {
            retunedPersons.append(Person(
                name: mockDatabase.names.randomElement() ?? "",
                surname: mockDatabase.surnames.randomElement() ?? "",
                phoneNumber: mockDatabase.phoneNumbers.randomElement() ?? "",
                mail: mockDatabase.mails.randomElement() ?? ""
            ))
        }
        return retunedPersons
    }
}

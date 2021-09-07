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
}

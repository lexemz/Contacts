//
//  GroupedContactListViewController.swift
//  Contacts
//
//  Created by Igor on 07.09.2021.
//

import UIKit

class GroupedContactListViewController: UITableViewController {
    var contacts: [Person]!

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].getNameAndSurname
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let contact = contacts[indexPath.section]

        var content = cell.defaultContentConfiguration()

        if indexPath.row == 0 {
            content.text = contact.phoneNumber
            content.image = UIImage(systemName: "phone.fill")
        } else {
            content.text = contact.mail
            content.image = UIImage(systemName: "envelope.fill")
        }

        cell.contentConfiguration = content

        return cell
    }
}

//
//  ContactListViewController.swift
//  Contacts
//
//  Created by Igor on 07.09.2021.
//

import UIKit

class ContactListViewController: UITableViewController {
    var contacts: [Person]!

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contacts[indexPath.row]

        content.text = contact.getNameAndSurname

        cell.contentConfiguration = content
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailInfoVC = segue.destination as? DetailContactInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }

        detailInfoVC.contactInfo = contacts[indexPath.row]
    }
}

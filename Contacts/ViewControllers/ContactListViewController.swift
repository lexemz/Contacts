//
//  ContactListTableViewController.swift
//  Contacts
//
//  Created by Igor on 07.09.2021.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var contacts: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return contacts.count
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

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let detailInfoVC = segue.destination as? DetailContactInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        detailInfoVC.contactInfo = contacts[indexPath.row]
    }

}

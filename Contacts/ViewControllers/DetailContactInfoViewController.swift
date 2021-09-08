//
//  DetailContactInfoViewController.swift
//  Contacts
//
//  Created by Igor on 08.09.2021.
//

import UIKit

class DetailContactInfoViewController: UIViewController {
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var mailLabel: UILabel!

    var contactInfo: Person!

    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }

    private func updateUI() {
        title = contactInfo.getNameAndSurname
        phoneNumberLabel.text = contactInfo.phoneNumber
        mailLabel.text = contactInfo.mail
    }
}

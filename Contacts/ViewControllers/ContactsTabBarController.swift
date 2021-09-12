//
//  ContactsTabBarController.swift
//  Contacts
//
//  Created by Igor on 07.09.2021.
//

import UIKit

class ContactsTabBarController: UITabBarController {
    private let contasts = Person.getRandomPersons()

    override func viewDidLoad() {
        super.viewDidLoad()

        pushDataOnViewControllers()
    }

    private func pushDataOnViewControllers() {
        guard let viewControllers = viewControllers else { return }

        for viewController in viewControllers {
            if let contactListVC = viewController as? ContactListViewController {
                contactListVC.contacts = contasts
            } else if let gContactListVC = viewController as? GroupedContactListViewController {
                gContactListVC.contacts = contasts
            }
        }
    }
}

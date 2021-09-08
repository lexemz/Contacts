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

        for vc in viewControllers {
            guard let nc = vc as? UINavigationController else { return }

            if let contactListVC = nc.topViewController as? ContactListViewController {
                contactListVC.contacts = contasts
            } else if let gContactListVC = nc.topViewController as? GroupedContactListViewController {
                gContactListVC.contacts = contasts
            }
        }
    }
}

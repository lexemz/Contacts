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

        // Do any additional setup after loading the view.
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

    /*
     // MARK: - Navigation

     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
     }
     */
}

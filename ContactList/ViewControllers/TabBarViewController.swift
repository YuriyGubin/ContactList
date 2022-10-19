//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Yuriy Gubin on 18.10.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    private let persons = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
        prepareControllers()
    }
    
    private func setupTabBar() {
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
    }

    private func prepareControllers() {
        guard let controllers = viewControllers else { return }
        controllers.forEach { controller in
            if let extendVC = controller as? ExtendedListViewController {
                extendVC.persons = persons
            }
        }
    }
    

}

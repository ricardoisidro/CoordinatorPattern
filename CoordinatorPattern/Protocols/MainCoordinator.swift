//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Ricardo Isidro on 3/12/19.
//  Copyright © 2019 ricardoIsidro. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = ViewController.instantiate()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func buy() {
        let vcbuy = BuyViewController.instantiate()
        vcbuy.coordinator = self
        navigationController.pushViewController(vcbuy, animated: true)
    }
    
    func create() {
        let vcCreate = CreateAccountViewController.instantiate()
        vcCreate.coordinator = self
        navigationController.pushViewController(vcCreate, animated: true)
    }
}

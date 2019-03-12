//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Ricardo Isidro on 3/6/19.
//  Copyright © 2019 ricardoIsidro. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}


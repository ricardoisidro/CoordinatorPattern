//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Ricardo Isidro on 3/6/19.
//  Copyright © 2019 ricardoIsidro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
    
    @IBAction func btnBuy(_ sender: UIButton) {
        coordinator?.buy()
    }
    
    @IBAction func btnCreate(_ sender: UIButton) {
        coordinator?.create()
    }
}

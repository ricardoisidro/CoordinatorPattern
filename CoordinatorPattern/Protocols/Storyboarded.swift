//
//  Storyboarded.swift
//  CoordinatorPattern
//
//  Created by Ricardo Isidro on 3/12/19.
//  Copyright © 2019 ricardoIsidro. All rights reserved.
//

import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        /*let identifier = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: identifier) as! Self else {
            return UIViewController() as! Self
        }
        return viewController*/
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        // swiftlint:disable force_cast
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
        // swiftlint:enable force_cast
    }
}

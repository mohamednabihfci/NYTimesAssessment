//
//  Coordinator.swift
//  NYTimesTask
//
//  Created by AboNabih on 1/9/21.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}

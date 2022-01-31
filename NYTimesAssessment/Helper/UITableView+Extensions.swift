//
//  UITableView+Extensions.swift
//  NYTimesTask
//
//  Created by AboNabih on 1/8/21.
//

import Foundation
import UIKit

extension UITableView {
    func registerNib<Cell: UITableViewCell>(cell: Cell.Type) {
        let nibName = String("\(Cell.self)")
        self.register(UINib(nibName: nibName, bundle: nil), forCellReuseIdentifier: nibName)
    }
}

//
//  UIViewController+RegisterNibs.swift
//  ZPTesting_Example
//
//  Created by Zsolt Pete on 2019. 10. 16..
//  Copyright © 2019. CocoaPods. All rights reserved.
//

import UIKit

extension UIViewController {
    
    /**
     Registrate a nib for collection view.
     - parameter tableView: The tableview where will be used the nib.
     - parameter nibName: The name of the Nib, what you want to  use.
     - parameter cellName: The identifier of the Cell, what you want to  use.
     */
    public func registerTableViewNibs(tableView: UITableView, nibName: String, cellName: String? = nil) {
        let cellNib = UINib(nibName: nibName, bundle: nil)
        if let name = cellName {
            tableView.register(cellNib, forCellReuseIdentifier: name)
        } else {
            tableView.register(cellNib, forCellReuseIdentifier: nibName)
        }
    }
    
    /**
     Registrate a nib for collection view.
     - parameter tableView: The tableview where will be used the nib.
     - parameter nibName: The name of the Nib, what you want to  use.
     - parameter cellName: The identifier of the Cell, what you want to  use.
     */
    public func registerCollectionViewNibs(collectionView: UICollectionView, nibName: String, cellName: String? = nil) {
        let cellNib = UINib(nibName: nibName, bundle: nil)
        if let name = cellName {
            collectionView.register(cellNib, forCellWithReuseIdentifier: name)
        } else {
            collectionView.register(cellNib, forCellWithReuseIdentifier: nibName)
        }
    }
    
}

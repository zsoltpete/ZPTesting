//
//  ListViewController.swift
//  ZPTesting
//
//  Created by Zsolt Pete on 2019. 10. 16..
//  Copyright © 2019. CocoaPods. All rights reserved.
//

import Foundation
import UIKit

class ListViewController: UIViewController {

    let array = [
        "Alma", "Körte", "Barack", "Szilva", "Alma", "Körte", "Barack", "Szilva", "Alma", "Körte", "Barack", "Szilva","Alma", "Körte", "Barack", "Szilva", "Alma", "Körte", "Barack", "Szilva", "Alma", "Körte", "Barack", "Szilva","Alma", "Körte", "Barack", "Szilva", "Alma", "Körte", "Barack", "Szilva", "Alma", "Körte", "Barack", "Szilva",
    ]
    
    // MARK: - IBOutlets Constraint
    
    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - let variables
    
    // MARK: - var variables
    
    // MARK: - LifeCycle methods

    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerTableViewNibs(tableView: tableView, nibName: "ItemCell")
        self.addDatasource()
        self.addAccessibilityIds()
    }
    
    private func addDatasource() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.reloadData()
    }
    
    private func addAccessibilityIds() {
        self.tableView.accessibilityIdentifier = AccessibilityIds.List.ListTableView
    }

    deinit {
        
    }

}

extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell") as? ItemCell else {
            return UITableViewCell()
        }
        cell.bind(array[indexPath.row])
        return cell
    }
    
    
}

extension ListViewController: UITableViewDelegate {
    
    
    
}

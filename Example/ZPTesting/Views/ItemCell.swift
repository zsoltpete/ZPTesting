//
//  ItemCell.swift
//  ZPTesting
//
//  Created by Zsolt Pete on 2019. 10. 16..
//  Copyright © 2019. CocoaPods. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {
    
    // MARK: - IBOutlets Constraint
    
    // MARK: - IBOutlets
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    // MARK: - let variables
    
    // MARK: - var variables
    
    // MARK: - LifeCycle methods
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.initialize()
        self.button.setTitle("Buy", for: .normal)
    }
    
    private func initialize() {
        self.addAccessibilityIds()
    }
    
    func bind(_ model: String) {
        self.titleLabel.text = model
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
    }
    
    private func addAccessibilityIds() {
        self.titleLabel.accessibilityIdentifier = AccessibilityIds.List.ListItemTitle
        self.button.accessibilityIdentifier = AccessibilityIds.List.ListItemButton
    }
    
}

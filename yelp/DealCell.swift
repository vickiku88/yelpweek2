//
//  DealCell.swift
//  yelp
//
//  Created by Victoria Ku on 4/2/17.
//  Copyright © 2017 Codepath. All rights reserved.
//

import UIKit
@objc protocol DealCellDelegate {
    @objc optional func dealCell(dealCell: DealCell, didChangeValue value: Bool)
}
class DealCell: UITableViewCell {

    @IBOutlet weak var offerADealLabel: UILabel!
    @IBOutlet weak var dealSwitch: UISwitch!
    weak var delegate: DealCellDelegate?

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        dealSwitch.addTarget(self, action: #selector(DealCell.switchValueChanged), for: UIControlEvents.valueChanged)
    }
    
    func switchValueChanged() {
        delegate?.dealCell!(dealCell: self, didChangeValue: dealSwitch.isOn)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


 

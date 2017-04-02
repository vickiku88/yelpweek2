//
//  SwitchCell.swift
//  yelp
//
//  Created by Victoria Ku on 4/2/17.
//  Copyright © 2017 Codepath. All rights reserved.
//

import UIKit

 @objc protocol SwitchCellDelegate {
    @objc optional func switchCell(switchCell: SwitchCell, didChangeValue value: Bool)
}

class SwitchCell: UITableViewCell {

    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var onSwitch: UISwitch!
    weak var delegate: SwitchCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        onSwitch.addTarget(self, action: #selector(SwitchCell.switchValueChanged)
            , for: UIControlEvents.valueChanged)
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
     func switchValueChanged() {
        //print ("switch value changed")
        ////go over thi one with alex
            delegate?.switchCell?(switchCell: self, didChangeValue: onSwitch.isOn)
     
    }
}

//
//  SortCell.swift
//  yelp
//
//  Created by Victoria Ku on 4/2/17.
//  Copyright © 2017 Codepath. All rights reserved.
//

import UIKit

@objc protocol SortCellDelegate {
    @objc optional func sortCell(sortCell: SortCell, didChangeValue value: Bool)
}


class SortCell: UITableViewCell {

    @IBOutlet weak var sortLabel: UILabel!
    weak var delegate : SortCellDelegate?
    
    weak var sortSegmentControl: UISegmentedControl?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        sortSegmentControl?.addTarget(self, action: #selector(SortCell.segmentValueChanged), for: UIControlEvents.valueChanged)

    }
    func segmentValueChanged() {
        delegate?.sortCell!(sortCell: self, didChangeValue: ((sortSegmentControl?.selectedSegmentIndex) != nil))
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

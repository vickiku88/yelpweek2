//
//  BusinessCell.swift
//  yelp
//
//  Created by Victoria Ku on 3/29/17.
//  Copyright © 2017 Codepath. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var YelpImageView: UIImageView!
    @IBOutlet weak var StarRating: UIImageView!
    @IBOutlet weak var BusinessLabel: UILabel!
    @IBOutlet weak var DistanceLabel: UILabel!
    @IBOutlet weak var AddressLabel: UILabel!
    @IBOutlet weak var ReviewsCountLabel: UILabel!
    @IBOutlet weak var CategoriesLabel: UILabel!
    
    var business: Business? {
        didSet {
            BusinessLabel.text = business?.name
            DistanceLabel.text = business?.distance
            CategoriesLabel.text = business?.categories
            AddressLabel.text = business?.address

            if let reviewCount = business!.reviewCount {
                let revCount = reviewCount
                ReviewsCountLabel.text = "\(revCount) reviews"
            }
            if let imageURL = business!.imageURL{
            YelpImageView.setImageWith((business?.imageURL)!)
            }
            if let ratingImageURL = business!.ratingImageURL{
                StarRating.setImageWith((business?.ratingImageURL)!)
            }
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        YelpImageView.layer.cornerRadius = 3
        YelpImageView.clipsToBounds = true
        
        //BusinessLabel.preferredMaxLayoutWidth = BusinessLabel.frame.size.width
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        //BusinessLabel.preferredMaxLayoutWidth = BusinessLabel.frame.size.width
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

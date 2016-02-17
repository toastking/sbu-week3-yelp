//
//  BusinessCell.swift
//  Yelp
//
//  Created by Matt on 2/16/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var businessimg: UIImageView!
    @IBOutlet weak var businessLabel: UILabel!
    @IBOutlet weak var ratingimg: UIImageView!
    @IBOutlet weak var reviewsLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    
    //an internal data model for the business the cell is displaying
    var business:Business!{
        //add an observer for then the data changes
        didSet{
            businessLabel.text = business.name
            ratingimg.setImageWithURL(business.ratingImageURL!)
            reviewsLabel.text = "\(business.reviewCount) Reviews"
            addressLabel.text = business.address
            distanceLabel.text = business.distance
            categoriesLabel.text = business.categories
            businessimg.setImageWithURL(business.imageURL!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        businessimg.layer.cornerRadius = 3
        businessimg.clipsToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  PlanetTableViewCell.swift
//  StarShadee
//
//  Created by Shadee Saleh on 18/02/2016.
//  Copyright © 2016 SS. All rights reserved.
//

import UIKit

class PlanetTableViewCell: UITableViewCell {
  
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var subheadingLabel: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  override func setSelected(selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    // Configure the view for the selected state
  }
  
  class func nib()->UINib{
    return UINib(nibName: PlanetTableViewCell.reuseIdentifier() , bundle: nil)
  }
  
  class func reuseIdentifier()->String{
    return "\(PlanetTableViewCell.self)"
  }

}

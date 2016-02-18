//
//  FilmTableViewCell.swift
//  StarShadee
//
//  Created by Shadee Saleh on 17/02/2016.
//  Copyright © 2016 SS. All rights reserved.
//

import UIKit

class FilmTableViewCell: UITableViewCell {
  
  
  @IBOutlet weak var title: UILabel!
  @IBOutlet weak var subtitle: UILabel!

  override func awakeFromNib() {
      super.awakeFromNib()
      // Initialization code
  }

  override func setSelected(selected: Bool, animated: Bool) {
      super.setSelected(selected, animated: animated)

      // Configure the view for the selected state
  }
  
  class func nib()->UINib{
    return UINib(nibName: FilmTableViewCell.reuseIdentifier() , bundle: nil)
  }
  
  class func reuseIdentifier()->String{
    return "\(FilmTableViewCell.self)"
  }
  
  

}

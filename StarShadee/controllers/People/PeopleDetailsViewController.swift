//
//  PeopleDetailsViewController.swift
//  StarShadee
//
//  Created by Shadee Saleh on 18/02/2016.
//  Copyright © 2016 SS. All rights reserved.
//

import UIKit
import Falcon

class PeopleDetailsViewController: UIViewController {
  
  // MARK: - Properties
  @IBOutlet weak var heightLabel: UILabel!
  @IBOutlet weak var massLabel: UILabel!
  @IBOutlet weak var headColorLabel: UILabel!
  @IBOutlet weak var skinColorLabel: UILabel!
  @IBOutlet weak var eyeColorLabel: UILabel!
  @IBOutlet weak var birthYearLabel: UILabel!
  @IBOutlet weak var genderLabel: UILabel!
  @IBOutlet weak var homeLabel: UILabel!
  
  @IBOutlet var navBar: UINavigationBar!
  
  var person:SWPerson = SWPerson()
  
  // MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Data Initialization
    self.navBar.topItem?.title = person.name
    self.heightLabel.text = person.height
    self.massLabel.text = person.mass
    self.headColorLabel.text = person.hairColor
    self.skinColorLabel.text = person.skinColor
    self.eyeColorLabel.text = person.eyeColor
    self.birthYearLabel.text = person.birthYear
    self.genderLabel.text = person.gender
    self.homeLabel.text = "home address"
    
  }
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  @IBAction func backToPeoplePage(sender: AnyObject) {
    
    self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    
  }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

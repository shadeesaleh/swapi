//
//  SpeciesDetailsViewController.swift
//  StarShadee
//
//  Created by Shadee Saleh on 18/02/2016.
//  Copyright © 2016 SS. All rights reserved.
//

import UIKit
import Falcon

class SpeciesDetailsViewController: UIViewController {
  
  // MARK: - Properties  
  @IBOutlet var classificationLabel: UILabel!
  @IBOutlet var designationLabel: UILabel!
  @IBOutlet var averageHeightLabel: UILabel!
  @IBOutlet var averageLifespanLabel: UILabel!
  @IBOutlet var eyeColorsLabel: UILabel!
  @IBOutlet var hairColorsLabel: UILabel!
  @IBOutlet var skinColorsLabel: UILabel!
  @IBOutlet var languageLabel: UILabel!
  @IBOutlet var homeWorldLabel: UILabel!
  
  
  @IBOutlet var navBar: UINavigationBar!
  
  var specie:SWSpecies = SWSpecies()
  
  // MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Data Initialization
    self.navBar.topItem?.title = specie.name
    self.classificationLabel.text = specie.classification
    self.designationLabel.text = specie.designation
    self.averageHeightLabel.text = specie.averageHeight
    self.averageLifespanLabel.text = specie.averageLifespan
    self.eyeColorsLabel.text = specie.eyeColors
    self.hairColorsLabel.text = specie.hairColors
    self.skinColorsLabel.text = specie.skinColors
    self.languageLabel.text = specie.language
    self.homeWorldLabel.text = specie.homeworld
    
  }
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  @IBAction func backToSpeciesPage(sender: AnyObject) {
    
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

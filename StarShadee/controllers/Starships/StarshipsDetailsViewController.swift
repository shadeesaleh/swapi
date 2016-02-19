//
//  StarshipsDetailsViewController.swift
//  StarShadee
//
//  Created by Shadee Saleh on 18/02/2016.
//  Copyright © 2016 SS. All rights reserved.
//

import UIKit
import Falcon

class StarshipsDetailsViewController: UIViewController {
  
  // MARK: - Properties
  
//  @property (nonatomic, copy) NSString *name;
//  @property (nonatomic, copy) NSString *model;
//  @property (nonatomic, copy) NSString *starshipClass;
//  @property (nonatomic, copy) NSString *manufacturer;
//  @property (nonatomic, copy) NSString *costInCredits;
//  @property (nonatomic, copy) NSString *length;
//  @property (nonatomic, copy) NSString *crew;
//  @property (nonatomic, copy) NSString *passengers;
//  @property (nonatomic, copy) NSString *maxAtmospheringSpeed;
//  @property (nonatomic, copy) NSString *hyperdriveRating;
//  @property (nonatomic, copy) NSString *MGLT;
//  @property (nonatomic, copy) NSString *cargoCapacity;
//  @property (nonatomic, copy) NSString *consumables;
  
  
  @IBOutlet weak var modelLabel: UILabel!
  @IBOutlet weak var classLabel: UILabel!
  @IBOutlet weak var manufacturerLabel: UILabel!
  @IBOutlet weak var costInCreditLabel: UILabel!
  @IBOutlet weak var lengthLabel: UILabel!
  @IBOutlet weak var crewLabel: UILabel!
  @IBOutlet weak var passengersLabel: UILabel!
  @IBOutlet weak var maxAtmosphericSpeedLabel: UILabel!
  @IBOutlet weak var hyperdriveRatingLabel: UILabel!
  @IBOutlet weak var mgltLabel: UILabel!
  @IBOutlet weak var cargoCapacityLabel: UILabel!
  
  @IBOutlet weak var consumablesLabel: UILabel!
  
  @IBOutlet var navBar: UINavigationBar!
  
  var starship:SWStarship = SWStarship()
  
  // MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Data Initialization
    self.navBar.topItem?.title = starship.name
    self.modelLabel.text = starship.model
    self.classLabel.text = starship.starshipClass
    self.manufacturerLabel.text = starship.manufacturer
    self.costInCreditLabel.text = starship.costInCredits
    self.lengthLabel.text = starship.length
    self.crewLabel.text = starship.crew
    self.passengersLabel.text = starship.passengers
    self.maxAtmosphericSpeedLabel.text = starship.maxAtmospheringSpeed
    self.hyperdriveRatingLabel.text = starship.hyperdriveRating
    self.mgltLabel.text = starship.MGLT
    self.cargoCapacityLabel.text = starship.cargoCapacity
    self.consumablesLabel.text = starship.consumables
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

//
//  PlanetsDetailsViewController.swift
//  StarShadee
//
//  Created by Shadee Saleh on 18/02/2016.
//  Copyright © 2016 SS. All rights reserved.
//

import UIKit
import Falcon

class PlanetsDetailsViewController: UIViewController {
  
  // MARK: - Properties
  @IBOutlet var diameterLabel: UILabel!
  @IBOutlet var rotationPeriodLabel: UILabel!
  @IBOutlet var orbitalPeriodLabel: UILabel!
  @IBOutlet var gravityLabel: UILabel!
  @IBOutlet var populationLabel: UILabel!
  @IBOutlet var climateLabel: UILabel!
  @IBOutlet var terrainLabel: UILabel!
  @IBOutlet var surfaceWaterLabel: UILabel!
  
  @IBOutlet var navBar: UINavigationBar!
  
  var planet:SWPlanet = SWPlanet()
  
  // MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Data Initialization
    self.navBar.topItem?.title = planet.name
    self.diameterLabel.text = planet.diameter
    self.rotationPeriodLabel.text = planet.rotationPeriod
    self.orbitalPeriodLabel.text = planet.orbitalPeriod
    self.gravityLabel.text = planet.gravity
    self.populationLabel.text = planet.population
    self.climateLabel.text = planet.climate
    self.terrainLabel.text = planet.terrain
    self.surfaceWaterLabel.text = planet.surfaceWater
    
  }
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  @IBAction func backToPlanetsPage(sender: AnyObject) {
    
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

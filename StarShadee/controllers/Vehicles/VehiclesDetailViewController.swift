//
//  VehiclesDetailViewController.swift
//  StarShadee
//
//  Created by Shadee Saleh on 18/02/2016.
//  Copyright © 2016 SS. All rights reserved.
//

import UIKit
import Falcon

class VehiclesDetailViewController: UIViewController {
  
  // MARK: - Properties
  
//  @property (nonatomic, copy) NSString *name;
//  @property (nonatomic, copy) NSString *model;
//  @property (nonatomic, copy) NSString *vehicleClass;
//  @property (nonatomic, copy) NSString *manufacturer;
//  @property (nonatomic, copy) NSString *costInCredits;
//  @property (nonatomic, copy) NSString *length;
//  @property (nonatomic, copy) NSString *crew;
//  @property (nonatomic, copy) NSString *passengers;
//  @property (nonatomic, copy) NSString *maxAtmospheringSpeed;
//  @property (nonatomic, copy) NSString *cargoCapacity;
//  @property (nonatomic, copy) NSString *consumables;
  
  @IBOutlet var navBar: UINavigationBar!
  
  var vehicle:SWVehicle = SWVehicle()
  
  // MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Data Initialization
    self.navBar.topItem?.title = vehicle.name
    
  }
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  @IBAction func backToVehiclesPage(sender: AnyObject) {
    
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

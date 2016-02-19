//
//  SpeciesDetailsViewController.swift
//  StarShadee
//
//  Created by Shadee Saleh on 18/02/2016.
//  Copyright © 2016 SS. All rights reserved.
//

import UIKit
import MRProgress
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
  var homeworld:SWPlanet? = nil
  
  // MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    MRProgressOverlayView.showOverlayAddedTo(self.view, animated: false)
    
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
    

    specie.getHomeworldWithCompletion({(result:SWResultSet!, error: NSError!) -> () in
          MRProgressOverlayView.dismissOverlayForView(self.view, animated: false)
          print("results : \(result)")
          print("items : \(result.items)")
          if result.items.count > 0{
              self.homeworld = result.items[0] as! SWPlanet
              self.homeWorldLabel.text = self.homeworld!.name
          }else{
              self.homeWorldLabel.text = "n/a"
          }
//          self.species = result.items
//          self.tableView.reloadData()
    })
//    @property (nonatomic, copy) NSString *homeworld;
//    @property (nonatomic, copy) NSArray *people;
//    @property (nonatomic, copy) NSArray *films;
//    
//    - (void)getHomeworldWithCompletion:(SWCompletionBlock)completion;
//    - (void)getPeopleWithCompletion:(SWCompletionBlock)completion;
//    - (void)getFilmsWithCompletion:(SWCompletionBlock)completion;
    
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

//
//  SpeciesViewController.swift
//  StarShadee
//
//  Created by Shadee Saleh on 16/02/2016.
//  Copyright © 2016 SS. All rights reserved.
//

import UIKit
import MRProgress
import Falcon

class SpeciesViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  var species:[AnyObject] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    MRProgressOverlayView.showOverlayAddedTo(self.view, animated: true)
    
    // Retrieve data
    SWAPI.getSpeciesWithCompletion({
      (result:SWResultSet!, error: NSError!) -> () in
      MRProgressOverlayView.dismissOverlayForView(self.view, animated: false)
      print("results : \(result)")
      print("items : \(result.items)")
      self.species = result.items
      self.tableView.reloadData()
    })
    
    // Register Table Cells
    tableView.registerNib(SpeciesTableViewCell.nib(), forCellReuseIdentifier: SpeciesTableViewCell.reuseIdentifier())
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  
  
  // MARK: - UITableViewDataSource
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return species.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let row = indexPath.row
    let cell = tableView.dequeueReusableCellWithIdentifier(SpeciesTableViewCell.reuseIdentifier(), forIndexPath: indexPath) as! SpeciesTableViewCell
    
    let specie = species[row] as! SWSpecies
    
    print("\(specie.name)")
    
    cell.nameLabel.text = specie.name
    cell.subheadingLabel.text = specie.classification
    
    return cell;
  }
  
  // MARK: - UITableViewDelegate
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    let specie = species[indexPath.row]
    
    // deselect the row
    tableView.deselectRowAtIndexPath(indexPath, animated: false)
    
    // Present the People Details
    let vc = SpeciesDetailsViewController()
    vc.specie = specie as! SWSpecies
    self.presentViewController(vc, animated: true, completion: nil)
    
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

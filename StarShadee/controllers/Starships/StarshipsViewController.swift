//
//  StarshipsViewController.swift
//  StarShadee
//
//  Created by Shadee Saleh on 16/02/2016.
//  Copyright © 2016 SS. All rights reserved.
//

import UIKit
import MRProgress
import Falcon

class StarshipsViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  var starships:[AnyObject] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    MRProgressOverlayView.showOverlayAddedTo(self.view, animated: true)
    
    // Retrieve data
    SWAPI.getStarshipsWithCompletion({
      (result:SWResultSet!, error: NSError!) -> () in
      MRProgressOverlayView.dismissAllOverlaysForView(self.view, animated: false)
      print("results : \(result)")
      print("items : \(result.items)")
      self.starships = result.items
      self.tableView.reloadData()
    })
    
    // Register Table Cells
    tableView.registerNib(StarshipsTableViewCell.nib(), forCellReuseIdentifier: StarshipsTableViewCell.reuseIdentifier())
    
  }
  
  override func viewWillAppear(animated: Bool) {
    <#code#>
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  
  
  // MARK: - UITableViewDataSource
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return starships.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let row = indexPath.row
    let cell = tableView.dequeueReusableCellWithIdentifier(StarshipsTableViewCell.reuseIdentifier(), forIndexPath: indexPath) as! StarshipsTableViewCell
    
    let starship = starships[row] as! SWStarship
    
    print("\(starship.name)")
    
    cell.nameLabel.text = starship.name
    
    return cell;
  }
  
  // MARK: - UITableViewDelegate
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    let starship = starships[indexPath.row]
    
    // deselect the row
    tableView.deselectRowAtIndexPath(indexPath, animated: false)
    
    // Present the People Details
    let vc = StarshipsDetailsViewController()
    vc.starship = starship as! SWStarship
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

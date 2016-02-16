//
//  FilmsViewController.swift
//  StarShadee
//
//  Created by Shadee Saleh on 16/02/2016.
//  Copyright © 2016 SS. All rights reserved.
//

import UIKit
import MRProgress
import Falcon

class FilmsViewController: UIViewController/*, UITableViewDataSource, UITableViewDelegate */{
  
    
  @IBOutlet weak var tableView: UITableView!
  
  var films:[AnyObject] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        MRProgressOverlayView.showOverlayAddedTo(self.view, animated: true)
      
      //
      SWAPI.getFilmsWithCompletion({
          (result:SWResultSet!, error: NSError!) -> () in
          MRProgressOverlayView.dismissOverlayForView(self.view, animated: false)
          print("Result : \(result)")
          print("items : \(result.items)")
          self.films = result.items
          self.tableView.reloadData()
      })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  

  
  
  // MARK: - UITableViewDataSource
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return films.count
  }

  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let row = indexPath.row
    let cell = tableView.dequeueReusableCellWithIdentifier("FilmTableViewCell", forIndexPath: indexPath) as! FilmTableViewCell
    
    let film = films[row] as! SWFilm
    
    cell.title.text = film.title
    cell.subtitle.text = "Episode \(film.episodeID)"
    
    
    return cell;
  }
  
  // MARK: - UITableViewDelegate

  


}

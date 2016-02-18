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
      
        // Retrieve data
        SWAPI.getFilmsWithCompletion({
            (result:SWResultSet!, error: NSError!) -> () in
            MRProgressOverlayView.dismissOverlayForView(self.view, animated: false)
            print("results : \(result)")
            print("items : \(result.items)")
            self.films = result.items
            self.tableView.reloadData()
        })
        
        // Register Table Cells
        tableView.registerNib(FilmTableViewCell.nib(), forCellReuseIdentifier: FilmTableViewCell.reuseIdentifier())
      
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
    let cell = tableView.dequeueReusableCellWithIdentifier(FilmTableViewCell.reuseIdentifier(), forIndexPath: indexPath) as! FilmTableViewCell
    
    let film = films[row] as! SWFilm
    
    print("\(film.title), \(film.episodeID)")
    
    cell.title.text = film.title
    cell.subtitle.text = "Episode \(film.episodeID)"
    
    return cell;
  }
  
  // MARK: - UITableViewDelegate
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    let film = films[indexPath.row] as! SWFilm
    
    // deselect the row
    tableView.deselectRowAtIndexPath(indexPath, animated: false)
    
    // Present the Film Details
    let vc = FilmDetailsViewController()
    vc.film = film
    self.presentViewController(vc, animated: true, completion: nil)
    
  }

  
  
  // MARK: - Navigation
  
//  // In a storyboard-based application, you will often want to do a little preparation before navigation
//  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//    
//  }



}

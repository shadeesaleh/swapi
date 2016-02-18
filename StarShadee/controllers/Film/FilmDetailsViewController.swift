//
//  FilmDetailsViewController.swift
//  StarShadee
//
//  Created by Shadee Saleh on 17/02/2016.
//  Copyright © 2016 SS. All rights reserved.
//

import UIKit
import Falcon

class FilmDetailsViewController: UIViewController {

  // MARK: - Properties
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var openingCrawlLabel: UITextView!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var producerLabel: UILabel!
    @IBOutlet var navBar: UINavigationBar!
    
    var film:SWFilm = SWFilm()
  
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Data Initialization
        self.navBar.topItem?.title = film.title
        self.subtitleLabel.text = "Episode \(film.episodeID)"
        self.openingCrawlLabel.text = film.openingCrawl
        self.directorLabel.text = film.director
        self.producerLabel.text = film.producer
      
        // Reset the scroll view to the top
        self.openingCrawlLabel.setContentOffset(CGPoint.zero, animated: false)
    }
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  @IBAction func backToFilmsPage(sender: AnyObject) {
    
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

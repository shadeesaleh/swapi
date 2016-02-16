//
//  TabViewController.swift
//  StarShadee
//
//  Created by Shadee Saleh on 16/02/2016.
//  Copyright © 2016 SS. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.initializeViewControllers()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  // Include the 3 view controllers
  func initializeViewControllers(){
    
    
    // initialization
//    let mainSb = UIStoryboard(name: "Main", bundle: nil)
//    let homeVC = mainSb.instantiateViewControllerWithIdentifier("HomeViewController")
    let filmsVC = FilmsViewController()
    let peopleVC = PeopleViewController()
    let planetsVC = PlanetsViewController()
    let speciesVC = SpeciesViewController()
    let starshipsVC = StarshipsViewController()
    let vehiclesVC = VehiclesViewController()
    
    // include in the tabs
    let viewControllers:[UIViewController] = [filmsVC, peopleVC, starshipsVC,vehiclesVC, planetsVC, speciesVC]
    self.setViewControllers(viewControllers, animated: true)
    
    // Tab Bar Iteams for the View Controllers
    filmsVC.tabBarItem = UITabBarItem(title: "Films", image: UIImage(named:"tab_films"), selectedImage: UIImage(named:"tab_films"))
    peopleVC.tabBarItem = UITabBarItem(title: "People", image: UIImage(named:"tab_people"), selectedImage: UIImage(named:"tab_people"))
    planetsVC.tabBarItem = UITabBarItem(title: "Planets", image: UIImage(named:"tab_planets"), selectedImage: UIImage(named:"tab_planets"))
    speciesVC.tabBarItem = UITabBarItem(title: "Species", image: UIImage(named:"tab_species"), selectedImage: UIImage(named:"tab_species"))
    starshipsVC.tabBarItem = UITabBarItem(title: "Starships", image: UIImage(named:"tab_starships"), selectedImage: UIImage(named:"tab_starships"))
    vehiclesVC.tabBarItem = UITabBarItem(title: "Vehicles", image: UIImage(named:"tab_vehicles"), selectedImage: UIImage(named:"tab_vehicles"))
  }

  
}

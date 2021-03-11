//
//  DetailViewController.swift
//  JamesBondMovies
//
//  Created by Iurie Guzun on 2021-03-11.
//  Copyright © 2021 Iurie Guzun. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var hero: Hero!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label.text = self.hero.name
        self.imageView!.image = UIImage(named: hero.imageName)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

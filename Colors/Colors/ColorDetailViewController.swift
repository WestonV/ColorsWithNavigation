//
//  ColorDetailViewController.swift
//  Colors
//
//  Created by Weston Verhulst on 10/16/18.
//  Copyright © 2018 Weston Verhulst. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    var color: Color?
    
    @IBOutlet weak var colorNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colorNameLabel.text = color?.colorName
        self.view.backgroundColor = color?.UIColor
        self.title = color?.colorName
        // Do any additional setup after loading the view.
    }
    


}

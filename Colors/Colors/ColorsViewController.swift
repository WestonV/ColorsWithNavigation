//
//  ColorsViewController.swift
//  Colors
//
//  Created by Weston Verhulst on 9/25/18.
//  Copyright © 2018 Weston Verhulst. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var colorsTableView: UITableView!
    
     
    var colors = [Color(colorName: "Red", UIColor: UIColor.red),
                  Color(colorName: "Orange", UIColor: UIColor.orange),
                  Color(colorName: "Yellow", UIColor: UIColor.yellow),
                  Color(colorName: "Green", UIColor: UIColor.green),
                  Color(colorName: "Blue", UIColor: UIColor.blue),
                  Color(colorName: "Purple", UIColor: UIColor.purple)]

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Colors"
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        cell.textLabel?.text = colors[indexPath.row].colorName
        cell.backgroundColor = colors[indexPath.row].UIColor
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.isSelected = false
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController,
           let row = colorsTableView.indexPathForSelectedRow?.row {
            destination.color = colors[row]
        }
    }

}

//
//  SecondViewController.swift
//  HomeWork_11
//
//  Created by Vadim Samoilov on 12.11.22.
//

import UIKit

class SecondViewController: UIViewController {
    
    var name = ""

    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
    }

}

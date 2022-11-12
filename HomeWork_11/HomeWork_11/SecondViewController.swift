//
//  SecondViewController.swift
//  HomeWork_11
//
//  Created by Vadim Samoilov on 12.11.22.
//

import UIKit

class SecondViewController: UIViewController {
    
    var name = ""
    var text = ""

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        textLabel.text = text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        text = "Data was passed"
    }

}

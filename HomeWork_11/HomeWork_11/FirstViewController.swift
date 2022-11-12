//
//  ViewController.swift
//  HomeWork_11
//
//  Created by Vadim Samoilov on 12.11.22.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showSecondViewController" else {return}
        guard let destination = segue.destination as? SecondViewController else {return}
        destination.name = "John"
    }
    
    
    @IBAction func withoutSegueShowSecondVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let second = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {return}
        second.name = "Paul"
        show(second, sender: nil)
    }
    
}


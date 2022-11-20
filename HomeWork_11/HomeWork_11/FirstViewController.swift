//
//  ViewController.swift
//  HomeWork_11
//
//  Created by Vadim Samoilov on 12.11.22.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "unwindSegue" {
            guard let destination = segue.destination as? SecondViewController else {return}
            destination.text = "from button unwind segue"
        }
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
    
    @IBAction func saveData(_ unwindSegue: UIStoryboardSegue) {
        guard unwindSegue.identifier == "passDataToFirstVC" else {
            return
        }
        guard let source = unwindSegue.source as? SecondViewController else { return }
        textLabel.text = source.text
    }
    
}


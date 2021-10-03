//
//  FirstScreenViewController.swift
//  Assignment_7
//
//  Created by User on 30.09.2021.
//

import UIKit

class FirstScreenViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var fullnameLabel: UILabel!
    @IBOutlet weak var userNameField: UITextField!
    
    //MARK: - Variables
    var name: String?
    var surname: String?
    
    //MARK: - Lyfecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Checking and showing label if name isn`t nil
        if name != nil {
            fullnameLabel.isHidden = false
            fullnameLabel.text = "\(name!) \(surname!)"
        }
    }
    
    // prepearing segue to pass data to next viewcontroller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondScreenVC = segue.destination as! SecondScreenViewController
        secondScreenVC.sentName = userNameField.text
    }
    
    //MARK: - IBactions
    @IBAction func continueDidTap(_ sender: Any) {
        // If name text field isn`t empty go to next screen
        if userNameField.text != "" {
            performSegue(withIdentifier: "goToSecond", sender: self)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool){
        super.viewWillDisappear(animated)
    }
    
}

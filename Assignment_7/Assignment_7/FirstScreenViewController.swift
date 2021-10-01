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

    //MARK: - Lyfecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // prepearing segue to pass data to next viewcontroller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondScreenVC = segue.destination as! SecondScreenViewController
        secondScreenVC.sentName = userNameField.text
    }
    //MARK: - IBOutlets
    @IBAction func continueDidTap(_ sender: Any) {
        // If name text field isn`t empty go to next screen
        if userNameField.text != "" {
            performSegue(withIdentifier: "goToSecond", sender: self)
        }
    }

}

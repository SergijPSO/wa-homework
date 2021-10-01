//
//  SecondScreenViewController.swift
//  Assignment_7
//
//  Created by User on 30.09.2021.
//

import UIKit

class SecondScreenViewController: UIViewController {
    
    //MARK: - IBoutlets and variables
    @IBOutlet weak var userSurnameField: UITextField!
    
    var sentName: String?
    
    //MARK: Lyfecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // prepearing segue to pass data to next viewcontroller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let thirdScreenVC = segue.destination as! ThirdScreenViewController
        thirdScreenVC.sentSurname = userSurnameField.text
        thirdScreenVC.recievedName = sentName
    }
    //MARK: - IBactions
    @IBAction func continueDidTap(_ sender: Any) {
        // If name text field isn`t empty go to next screen
        if userSurnameField.text != "" {
            performSegue(withIdentifier: "goToThird", sender: self)
        }
    }
}

//
//  SecondScreenViewController.swift
//  Assignment_7
//
//  Created by User on 30.09.2021.
//

import UIKit

class SecondScreenViewController: UIViewController {

    @IBOutlet weak var userSurnameField: UITextField!

    var sentName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let thirdScreenVC = segue.destination as! ThirdScreenViewController
        thirdScreenVC.sentSurname = userSurnameField.text
        thirdScreenVC.recievedName = sentName
    }

    @IBAction func continueDidTap(_ sender: Any) {
        if userSurnameField.text != "" {
            performSegue(withIdentifier: "goToThird", sender: self)
        }
    }
}

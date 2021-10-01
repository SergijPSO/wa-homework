//
//  ThirdScreenViewController.swift
//  Assignment_7
//
//  Created by User on 30.09.2021.
//

import UIKit

class ThirdScreenViewController: UIViewController {
    //MARK: - IBoutlets and variables
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userSurnameLabel: UILabel!

    var sentSurname: String?
    var recievedName: String?

    //MARK: Lyfecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        if let userSurname = sentSurname {
            userSurnameLabel.text = "\(userSurnameLabel.text!) \(userSurname)"
        }
        if let userName = recievedName {
            userNameLabel.text = "\(userNameLabel.text!) \(userName)"
        }
    }

    //MARK: - IBactions
    @IBAction func saveDidTap(_ sender: Any) {

    }
}

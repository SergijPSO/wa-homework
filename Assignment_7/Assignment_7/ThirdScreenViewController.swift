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
        //Appending data to view
        if let userSurname = sentSurname {
            userSurnameLabel.text = "\(userSurnameLabel.text!) \(userSurname)"
        }
        if let userName = recievedName {
            userNameLabel.text = "\(userNameLabel.text!) \(userName)"
        }
    }

    // Prepearing segue for first vc and passing data nj first vc
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let firstScreenVC = segue.destination as! FirstScreenViewController
        firstScreenVC.name = recievedName!
        firstScreenVC.surname = sentSurname!
    }

    //MARK: - IBactions
    @IBAction func saveDidTap(_ sender: Any) {
        performSegue(withIdentifier: "goToFirst", sender: self)
    }

}

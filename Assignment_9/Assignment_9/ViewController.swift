//
//  ViewController.swift
//  Assignment_9
//
//  Created by User on 12.10.2021.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Declaration outlets of and variables
    @IBOutlet weak var tableView: UITableView!

    //Creating dictionary with group members
    var usersDictionary = ["Slipi":"Sergiy Pankiv", "bazinga":"Artem Velykyy", "Artem1":"Artem Zosyuk", "Artem2":"Artem Bilous", "p.starychok": "Petro", "Valentina":"Valentina", "Eugene":"Eugene Vlasov", "Dima": "Dima Paliyenko", "Valerij":"Valerij Syroiezhin", "Anton":"Anton", "Mykita":"Mykita Babushkin"]

    var usersNames = [String]()
    var usersNicks = [String]()

// MARK: Lyfececle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        usersNames = Array(usersDictionary.values)
        usersNicks = Array(usersDictionary.keys)
    }
}


extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersDictionary.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IndexPathCell", for: indexPath)

        for (index, element) in usersDictionary.enumerated() {

            element.key.capitalized
            element.value.capitalized
        }
        print(usersDictionary)

        for (index, element) in usersNicks.enumerated() {
            usersNicks[index] = element.capitalized
        }

        for (index, element) in usersNames.enumerated() {
            usersNames[index] = element.capitalized
        }

        let sortedNames = usersNames.sorted()
        let sortedNicks = usersNicks.sorted()

        cell.textLabel?.text = sortedNicks[indexPath.row]
        cell.detailTextLabel?.text = sortedNames[indexPath.row]

        return cell
    }


}

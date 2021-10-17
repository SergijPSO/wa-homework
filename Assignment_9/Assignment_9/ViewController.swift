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
    var usersDictionary = ["Slipi":"Sergiy Pankiv", "bazinga":"Artem Velykyy", "Artem1":"Artem Zosyuk", "Artem2":"Artem Bilous", "p.starychok": "Petro", "Valentina":"Valentina", "Eugene":"Eugene Vlasov", "Dima": "Dima Paliyenko", "Valerij":"Valerij Syroiezhin", "Anton":"Anton", "Mykita":"Mykita Babushkin", "Viktor": "Viktor Mandryk"]

    var usersNicks = [String]()
    var nicksArr = [String]()
    var fullNamesArr = [String]()

    // MARK: Lyfecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        usersNicks = Array(usersDictionary.keys)
    }
}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersDictionary.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IndexPathCell", for: indexPath)
        // Casting keys to lowercase
        for (index, element) in usersNicks.enumerated() {
            usersNicks[index] = element.lowercased()
        }
        // Sorting keys in alhabet order
        let sortedNicks = usersNicks.sorted()

        for element in sortedNicks {
            //Cycle for comparing dictionary keys and sorted array
            for item in usersDictionary {
                let userNick = item.key
                let userFullName = item.value
                //Creating new separate already sorted arrays with users nicks and users fullNmaes
                if userNick.lowercased() == element.lowercased() {
                    nicksArr.append(userNick)
                    fullNamesArr.append(userFullName)
                }
            }
        }

        //Setting title and subtitle text
        cell.textLabel?.text = nicksArr[indexPath.row]
        cell.detailTextLabel?.text = fullNamesArr[indexPath.row]

        return cell
    }
}

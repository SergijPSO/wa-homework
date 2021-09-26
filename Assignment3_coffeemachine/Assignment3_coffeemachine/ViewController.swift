//
//  ViewController.swift
//  Assignment3_coffeemachine
//
//  Created by User on 22.09.2021.
//

import UIKit

class ViewController: UIViewController {


    let coffeeMachine = CoffeMachine()
    @IBOutlet weak var statusLabel: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func prepeareAmericano(_ sender: Any) {
        coffeeMachine.makeDrink(drink: .americano)
        statusLabel.text = coffeeMachine.statusMessage
    }
    @IBAction func prepeareLatte(_ sender: Any) {
        coffeeMachine.makeDrink(drink: .latte)
        statusLabel.text = coffeeMachine.statusMessage

    }
    @IBAction func prepeareEspresso(_ sender: Any) {
        coffeeMachine.makeDrink(drink: .espresso)
        statusLabel.text = coffeeMachine.statusMessage
    }
    @IBAction func prepeareCapuchino(_ sender: Any) {
        coffeeMachine.makeDrink(drink: .capuchino)
        statusLabel.text = coffeeMachine.statusMessage
    }
    @IBAction func clearWastes(_ sender: Any) {
        coffeeMachine.clearWastes()
        statusLabel.text = coffeeMachine.statusMessage
    }

    @IBAction func addMilk(_ sender: Any) {
        coffeeMachine.addMilk()
        statusLabel.text = coffeeMachine.statusMessage
    }

    @IBAction func addWatter(_ sender: Any) {
        coffeeMachine.addWater()
        statusLabel.text = coffeeMachine.statusMessage
    }
    @IBAction func addCoffee(_ sender: Any) {
        coffeeMachine.addCoffee()
        statusLabel.text = coffeeMachine.statusMessage
    }
}


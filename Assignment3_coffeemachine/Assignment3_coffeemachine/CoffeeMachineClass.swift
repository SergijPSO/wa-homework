//
//  CoffeeMachineClass.swift
//  Assignment3_coffeemachine
//
//  Created by User on 22.09.2021.
//

import Foundation

class CoffeMachine {
//Variables declaration
var tankForCoffee = 0
var tankForMilk = 0
var tankForWater = 0
var tankForWastes = 0
var statusMessage = ""

    enum CoffeDrinks {

        case americano, latte, capuchino, espresso

        var amountOfWastes: Int {
            switch self {
            case .americano:
                return 200
            case .latte:
                return 300
            case .capuchino:
                return 300
            case .espresso:
                return 200
            }

        }

        var amountOfCoffee: Int {
            switch self {
            case .americano:
                return 20
            case .latte:
                return 10
            case .capuchino:
                return 10
            case .espresso:
                return 10
            }

        }

        var amountOfMilk: Int {
            switch self {
            case .americano:
                return 0
            case .latte:
                return 300
            case .capuchino:
                return 200
            case .espresso:
                return 0
            }

        }

        var amountOfWater: Int {
            switch self {
            case .americano:
                return 120
            case .latte:
                return 300
            case .capuchino:
                return 35
            case .espresso:
                return 35
            }

        }
    }

    func addCoffee() {
        tankForCoffee = tankForCoffee + 100
        statusMessage = "Coffee tank is filled"
    }

    func addMilk() {
        tankForMilk = tankForMilk + 1000
        statusMessage = "Milk tank is filled"
    }

    func addWater() {
        tankForWater = tankForWater + 250
        statusMessage = "Water tank is filled"
    }

    func clearWastes() {
        tankForWastes = 0
        statusMessage = "Wastes tank is cleared"
    }

    func makeDrink(drink: CoffeDrinks) {

        if tankForCoffee >= drink.amountOfCoffee {
            if tankForWater >= drink.amountOfWater {
                if tankForMilk >= drink.amountOfMilk {
                    if tankForWastes <= 1000 {
                        tankForCoffee = tankForCoffee - drink.amountOfCoffee
                        tankForWater = tankForWater - drink.amountOfWater
                        tankForMilk = tankForMilk - drink.amountOfMilk
                        tankForWastes = tankForWastes + drink.amountOfWastes
                        statusMessage = "Your \(drink) is ready"
                    } else {
                        statusMessage = "Clean wastes"
                    }
                } else {
                    statusMessage = "Not enough milk"
                }
            } else {
                statusMessage = "Not enough water"
            }
        } else {
            statusMessage = "Not enough coffee"
        }
    }
}

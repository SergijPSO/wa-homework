//
//  ViewController.swift
//  Assignment2.4
//
//  Created by User on 18.10.2021.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Lyfecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Draw square target
        //addSquareTarget(targetsQuantity: 10)
        addCircleTarget(targetsQuantity: 10)
    }
    //MARK: Functions declaration
    //Function that creating square targets
    func addSquareTarget(targetsQuantity: Int) {
        //Setting coordinates
        var x = 100
        var y = 300
        //Setting sizes
        var width: Int = 200
        var height: Int = 200
        var count = 0
        //Setting and adding subviews
        while count < targetsQuantity {
            let boxView = UIView()
            boxView.frame = CGRect(x: x, y: y, width: width, height: height)
            if count % 2 == 0 {
                boxView.backgroundColor = .blue
            } else {
                boxView.backgroundColor = .red
            }
            view.addSubview(boxView)
            x += 10
            y += 10

            width -= 20
            height -= 20
            count += 1
        }
    }
    //Function that creating circle targets
    func addCircleTarget(targetsQuantity: Int) {
        //Setting coordinates
        var x = 100
        var y = 300
        //Setting sizes
        var width: Int = 200
        var height: Int = 200
        var count = 0
        //Setting and adding subviews
        while count < targetsQuantity {
            let boxView = UIView()
            boxView.frame = CGRect(x: x, y: y, width: width, height: height)
            if count % 2 == 0 {
                boxView.backgroundColor = .blue
                //Rounding views
                let radius = boxView.frame.size.width / 2
                boxView.layer.cornerRadius = radius
                boxView.clipsToBounds = true
            } else {
                boxView.backgroundColor = .red
                //Rounding views
                let radius = boxView.frame.size.width / 2
                boxView.layer.cornerRadius = radius
                boxView.clipsToBounds = true
            }
            view.addSubview(boxView)
            x += 10
            y += 10

            width -= 20
            height -= 20
            count += 1
        }
    }
}


//
//  ViewController.swift
//  Assignment8
//
//  Created by User on 04.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tapsLabel: UILabel!

    @IBOutlet weak var blackView: UIView!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapAction(_ sender: UITapGestureRecognizer) {

        let xPosition = CGFloat.random(in: 1..<102)
        let yPosition = CGFloat.random(in: 1..<500)

        let width = blackView.frame.size.width
        let height = blackView.frame.size.height
        let frame = super.view.safeAreaLayoutGuide.layoutFrame
        let frameX = frame.width
        let frameY = frame.height

        print(frameX)

        switch sender.state {

        case .possible:
            print("Possible")
        case .began:
            var counter = 0
            counter = counter + 1
            tapsLabel.text = "\(counter)"
            print("Began")
        case .changed:
            print("Changed")
        case .ended:
            self.blackView.frame = CGRect(x: xPosition, y: yPosition, width: width, height: height)
        case .cancelled:
            print("Canceled")
        case .failed:
            print("Failed")
        @unknown default:
            print("Something went wrong")
        }
    }

}


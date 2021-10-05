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

    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tapAction(_ sender: UITapGestureRecognizer) {

        counter += 1
        print(counter)

        let width = blackView.frame.size.width
        let height = blackView.frame.size.height

        let frame = super.view.safeAreaLayoutGuide.layoutFrame

        let frameX = frame.width
        let frameY = frame.height

        let xPosition = CGFloat.random(in: 1..<(frameX - width))
        let yPosition = CGFloat.random(in: 1..<(frameY - height))

        if sender.state == .ended {
            self.blackView.frame = CGRect(x: xPosition, y: yPosition, width: width, height: height)
        }

    }
}


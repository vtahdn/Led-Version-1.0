//
//  ViewController.swift
//  Led Version 1.0
//
//  Created by Viet Anh Doan on 5/16/17.
//  Copyright © 2017 Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var n: Int = 0
    @IBOutlet weak var numberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initBalls() {
        let rectangle = UIView(frame: CGRect(x: 0.0, y: 65, width: self.view.bounds.size.width, height: self.view.bounds.size.height-65))
        rectangle.backgroundColor = .white
        self.view.addSubview(rectangle)
        if let input = Int(numberTextField.text!){
            if input>0 && input<=100 {
                n = input
                for i in 1...n {
                    for j in 1...n {
                        let image = UIImage(named: "green")
                        let ball = UIImageView(image: image)
                        ball.center = CGPoint(x: CGFloat(i) * horizontalSpace(), y: 70 + CGFloat(j) * verticalSpace())
                        self.view.addSubview(ball)
                    }
                }
            }
            else {
                print("number should be from 1 to 100")
            }
        }
        else {
            print("invalid number")
        }
    }
    
    func horizontalSpace() -> CGFloat {
        let space = self.view.bounds.size.width/CGFloat(n+1)
        return space
    }
    
    func verticalSpace() -> CGFloat {
        return (self.view.bounds.size.height-70)/CGFloat(n+1)
    }
    
    @IBAction func drawButtonAction(_ sender: UIButton) {
        initBalls()
    }
    
}


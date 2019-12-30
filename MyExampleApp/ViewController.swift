//
//  ViewController.swift
//  ExampleApp
//
//  Created by Apple on 11/11/2019.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //@IBOutlet weak var myView: UIView!

    weak var square:UIView!

    weak var square2:UIView!
    
    // MARK: - COMPUTED PROPERTIES
    
    override var shouldAutorotate: Bool{
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        return .all
    }
    
//    var squareFrame:CGRect {
//
//        let horizontal = self.view.bounds.midX
//        let vertical  = self.view.bounds.midY
//        let size:CGFloat = 64
//        return CGRect(x: horizontal-size/2, y: vertical-size/2 , width: size, height: size)
//    }
    
//    override func updateViewConstraints() {
//
//    }
    
    // MARK: - OVERRIDE FUNCTIONS
    
    override func loadView() {
        
        super.loadView()
        let square = UIView()
        let square2 = UIView()
        square2.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        self.view.addSubview(square)
        self.view.addSubview(square2)
        square.translatesAutoresizingMaskIntoConstraints = false
        square2.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addConstraints([
            
            // square 1
            NSLayoutConstraint(item: square, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier:0.1, constant: 0),
            NSLayoutConstraint(item: square, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier:0.1, constant: 0),
            NSLayoutConstraint(item: square, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier:0.5, constant: 0),
        NSLayoutConstraint(item: square, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier:1, constant: 0)
        ,//square2
            NSLayoutConstraint(item: square2, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier:0.1, constant: 0),
            NSLayoutConstraint(item: square2, attribute: .height, relatedBy: .equal, toItem: square, attribute: .height, multiplier:1, constant: 0),
            
        NSLayoutConstraint(item: square2, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier:1, constant: 0),
 
        NSLayoutConstraint(item: square2, attribute: .centerX, relatedBy: .equal, toItem: square, attribute: .centerX, multiplier:2, constant: 0),
            
            
        ])
        
        
        self.square = square
        self.square2 = square2
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
     //   self.square.frame = squareFrame
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.square.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        self.square2.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        
        //myView.leadingAnchor.
    }

}


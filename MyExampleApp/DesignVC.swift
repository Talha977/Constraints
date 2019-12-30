//
//  DesignVC.swift
//  ExampleApp
//
//  Created by Apple on 11/11/2019.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class DesignVC: UIViewController {

    
    
        weak var Button:UIButton!

        weak var Button2:UIButton!
        
        // MARK: - COMPUTED PROPERTIES
        
        override var shouldAutorotate: Bool{
            return true
        }
        
        override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
            return .all
        }
        
    //    var buttonFrame:CGRect {
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
            let button = UIButton()
            let button2 = UIButton()
            button2.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            self.view.addSubview(button)
            self.view.addSubview(button2)
            button.translatesAutoresizingMaskIntoConstraints = false
            button2.translatesAutoresizingMaskIntoConstraints = false
            
            self.view.addConstraints([
                
                // button 1
                NSLayoutConstraint(item: button, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier:0.1, constant: 0),
                NSLayoutConstraint(item: button, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier:0.1, constant: 0),
                NSLayoutConstraint(item: button, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier:0.8, constant: 0),
            NSLayoutConstraint(item: button, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier:1, constant: 0)
            ,//button2
                
                NSLayoutConstraint(item: button2, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier:0.1, constant: 0),
                NSLayoutConstraint(item: button2, attribute: .height, relatedBy: .equal, toItem: button, attribute: .height, multiplier:1, constant: 0),
               
              
            ])
            
            if UIDevice.current.orientation != .portrait{
                
                self.view.addConstraints([
                
                    NSLayoutConstraint(item: button2, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier:1, constant: -100),
                    
                NSLayoutConstraint(item: button2, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier:1, constant: 0)
                
                ])
                
            }
            
            else{
                
                 self.view.addConstraints([
                NSLayoutConstraint(item: button2, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier:0.3, constant: 0),
                   
                          NSLayoutConstraint(item: button2, attribute: .centerX, relatedBy: .equal, toItem: button, attribute: .centerX, multiplier:2, constant: 0)
                            
           ])
            
            }
            
            
            self.Button = button
            self.Button2 = button2
            
        }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        
        loadView()
    }
        
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
         //   self.button.frame = buttonFrame
        }
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.Button.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
            self.Button2.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            
            //myView.leadingAnchor.
        }
}

    
    


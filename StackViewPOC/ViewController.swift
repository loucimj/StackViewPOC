//
//  ViewController.swift
//  StackViewPOC
//
//  Created by Javi on 10/21/15.
//  Copyright © 2015 FuzeIdea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!


    override func viewDidLoad() {
        
        let view1 = UIView(frame: CGRectMake(0, 0, 50, 30))
        view1.backgroundColor = UIColor.redColor()
        
        let view2 = UIView(frame: CGRectMake(0, 0, 50, 30))
        view2.backgroundColor = UIColor.greenColor()
        
        let view3 = UIView(frame: CGRectMake(0, 0, 50, 30))
        view3.backgroundColor = UIColor.blueColor()

        
        stackView.addArrangedSubview(view1)
        stackView.addArrangedSubview(view2)
        stackView.addArrangedSubview(view3)
        s
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        stackView.distribution = UIStackViewDistribution.EqualCentering
    }

    
    @IBAction func addViewToStack(sender: AnyObject) {
        
        let view = UIView(frame: CGRectMake(0, 0, 50, 30))
        
        view.backgroundColor = UIColor.redColor()
        
        stackView.addArrangedSubview(view)
        
        stackView.layoutIfNeeded()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


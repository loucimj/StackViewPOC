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

    @IBOutlet weak var manualStackView: UIView!

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


        addViews()

        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func viewDidAppear(animated: Bool) {
    }

    func addViews() {
        let view1 = UIView(frame: CGRectMake(0, 0, 50, 30))
        view1.backgroundColor = UIColor.redColor()
        view1.translatesAutoresizingMaskIntoConstraints = false
        
        let view2 = UIView(frame: CGRectMake(0, 0, 50, 30))
        view2.backgroundColor = UIColor.greenColor()
        view2.translatesAutoresizingMaskIntoConstraints = false
        
        let view3 = UIView(frame: CGRectMake(0, 0, 50, 30))
        view3.backgroundColor = UIColor.blueColor()
        view3.translatesAutoresizingMaskIntoConstraints = false
        
        manualStackView.addSubview(view1)
        manualStackView.addSubview(view2)
        manualStackView.addSubview(view3)
        
        let constraints = NSLayoutConstraint.constraintsForEvenDistributionOfItems([view1,view2,view3], relativeToCenterOfItem: manualStackView, vertically: false) as! Array<NSLayoutConstraint>
        
        manualStackView.addConstraints(constraints)
        
        manualStackView.layoutIfNeeded()
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


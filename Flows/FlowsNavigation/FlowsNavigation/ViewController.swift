//
//  ViewController.swift
//  FlowsNavigation
//
//  Created by vijay vir on 1/31/18.
//  Copyright © 2018 vijay vir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var continerView: UIView!

	override func viewDidLoad() {

		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.

	}

	@IBAction func actionSomeButton(_ sender: UIButton) {
		     		self.continerView.isHidden = false
		let some : SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
		some.someValue = "fds"
		some.closureDissmiss = {
			some.view.removeFromSuperview()
			  // self.continerView.subviews.removeAll()
//			for subview in  self.continerView.subviews {
//         subview.removeFromSuperview()
//			}
     		self.continerView.isHidden = true
		}
		//some.lblPassData.text = "SomeValue"
     some.view.frame = self.continerView.bounds
		self.continerView.addSubview(some.view)
	}
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


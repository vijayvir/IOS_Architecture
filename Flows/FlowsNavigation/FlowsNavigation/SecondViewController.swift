//
//  SecondViewController.swift
//  FlowsNavigation
//
//  Created by vijay vir on 1/31/18.
//  Copyright © 2018 vijay vir. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
	@IBOutlet weak var lblPassData: UILabel!
	var closureDissmiss : (() -> Void)?
	var someValue : String = "ds"
	override func viewDidLoad() {
		super.viewDidLoad()

		lblPassData.text = someValue
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
	}
	@IBAction func actionSomeActions(_ sender: UIButton) {
      
  closureDissmiss?()
		
	}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

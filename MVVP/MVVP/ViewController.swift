//
//  ViewController.swift
//  MVVP
//
//  Created by vijay vir on 6/8/17.
//  Copyright © 2017 vijay vir. All rights reserved.
//


/* Thanks to https://auth0.com/blog/compare-mvvm-and-viper-architectures */
//VIEW
import UIKit

class ViewController: UIViewController {
	
	
	@IBOutlet var tableView: UITableView!
	
		var didAddContact: ((ContactViewModel, Int) -> Void)?
	
	let contactViewModelController = ContactViewModelController()

	override func viewDidLoad() {
		
		super.viewDidLoad()
		
		tableView.tableFooterView = UIView()
		
		contactViewModelController.retrieveContacts({ [unowned self] in
			
			self.tableView.reloadData()
			
			}, failure: nil)
		
		
		self.didAddContact = { [unowned self] (contactViewModel, index) in
			
			self.tableView.reloadData()
		}

		
		// Do any additional setup after loading the view, typically from a nib.
	}
	@IBAction func actionAdd(_ sender: Any)
 {
		
	self.contactViewModelController.createContact(firstName: "dfd",
	                                                lastName: "dsds",
	                                                success: self.didAddContact,
	                                                failure: nil)
	
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		
		// Dispose of any resources that can be recreated.
	}
}


extension ViewController: UITableViewDataSource {
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell") as? ContactsTableViewCell
		
		guard let contactsCell = cell else {
			
			return UITableViewCell()
		}
		
		contactsCell.cellModel = contactViewModelController.viewModel(at: (indexPath as NSIndexPath).row)
		
		return contactsCell
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
	//	/Users/LeoDrive/MeGitHub/IOS_Architecture/MVVP/MVVP/Info.plist
		return contactViewModelController.contactsCount
	}
	
}

//VIEW

class ContactsTableViewCell: UITableViewCell {
	
	var cellModel: ContactViewModel? {
		didSet {
			
			bindViewModel()
		}
	}
	
	func bindViewModel() {
		
		textLabel?.text = cellModel?.fullName
	}
}


//MODEL

open class Contact: NSObject {

	var fullName: String {
		get {
			let name = "dddd"
//			if let firstName = firstName {
//				name += firstName
//			}
//			if let lastName = lastName {
//				name += " \(lastName)"
//			}
			return name
		}
	}
}

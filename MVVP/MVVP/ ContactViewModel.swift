//
//   ContactViewModel.swift
//  MVVP
//
//  Created by vijay vir on 6/8/17.
//  Copyright © 2017 vijay vir. All rights reserved.
//

import Foundation

// VIEW MODEL
public struct ContactViewModel
{
	
	var fullName: String
	
}

class ContactViewModelController {

	fileprivate var contactViewModelList: [ContactViewModel] = []

	var contactsCount: Int {
		
		return contactViewModelList.count
	}

	func retrieveContacts(_ success: (() -> Void)?, failure: (() -> Void)?) {
		

		success?()
	}

	func viewModel(at index: Int) -> ContactViewModel
	{

		return contactViewModelList[index]
	}

	func createContact(firstName: String, lastName: String,
	                   success: ((ContactViewModel, Int) -> Void)?,
	                   failure: (() -> Void)?) {
		
		
		let contactViewModel = ContactViewModel(fullName: "Vijay\(Date())")

		contactViewModelList.insert(contactViewModel, at: 0)
		
		success?(contactViewModel, 1)
		

	}

}

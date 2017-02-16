//
//  ViewController.swift
//  ArchitectureConcepts
//
//  Created by Apple on 15/02/17.
//  Copyright © 2017 vijayvirSingh. All rights reserved.
//

import UIKit

import Foundation

class ViewController: UIViewController
{
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let instance = SimpleSwiftClass.sharedInstance()
        
        print(instance.simpleFunc())
        
        let instance2 = SimpleSwiftClass.sharedInstance
        
        print(instance2.simpleFunc())
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

class SimpleSwiftClass
{
    
    private static var shareManager: SimpleSwiftClass =
        {
        
        let shareManager = SimpleSwiftClass()
        
        return shareManager
        
    }()
    
    private init()
    {
        
    }
    
    func simpleFunc()
    {
        print("HelloWorld")
    }
    
    class var sharedInstance: SimpleSwiftClass
    {
        print("var")
        
        return shareManager
    }
    
    class func sharedInstance(sting _: String? = nil) -> SimpleSwiftClass
    {
        print("func")
        return shareManager
    }
    
}

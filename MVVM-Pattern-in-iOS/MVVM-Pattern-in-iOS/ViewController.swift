//
//  ViewController.swift
//  MVVM-Pattern-in-iOS
//
//  Created by Vinay Ganesh on 8/2/16.
//  Copyright (c) 2016 goldy. All rights reserved.
//


import UIKit

class ViewController: UIViewController {

    //declaration
    var person:Person!
    var personViewModel:PersonViewModel!
    
    @IBOutlet weak var tblFirstName: UILabel!
    @IBOutlet weak var tblLastName: UILabel!
    
    @IBAction func btnClickMe(_ sender: AnyObject) {
        self.tblFirstName.text = personViewModel.firstName
        self.tblLastName.text = personViewModel.lastName
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //instantiation
        self.person = Person(fname: "Mark", lname: "Waugh")
        //provide details to view model to do all the computations
        personViewModel = PersonViewModel(person: self.person)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    //adding a commit to be reverted
    //hello from test branch
    
}

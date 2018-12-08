//
//  AddToDoViewController.swift
//  MAPD714_Assignment2

//  Created by Sherlyn Lobo on 2018-12-08.
//  Copyright © 2018 Sherlyn Lobo. All rights reserved.

//  File Name       : ToDoTableViewController.swift
//  Author Name     : Sherlyn Lobo
//  Student ID      : 301013071
//  App Description : ToDo List App

import UIKit

class AddToDoViewController: UIViewController {

    
    var previousVC = ToDoTableViewController()
    
    
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func addTapped(_ sender: UIButton) {
        
    
        let toDo = ToDo()
        if let titleText = titleTextField.text
        {
            toDo.name = titleText
            toDo.important = importantSwitch.isOn
            
            previousVC.toDos.append(toDo)
            previousVC.tableView.reloadData()
            
            navigationController?.popToRootViewController(animated: true)
        }
 

    }
    

   

}

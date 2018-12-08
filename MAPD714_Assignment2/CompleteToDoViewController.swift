//
//  CompleteToDoViewController.swift
//  MAPD714_Assignment2
//
//  Created by Sherlyn Lobo on 2018-12-08.
//  Copyright © 2018 Sherlyn Lobo. All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()
    var selectedTodo = ToDo()
    

    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = selectedTodo.name
    }

   
    @IBAction func completeTapped(_ sender: UIButton) {
        var index = 0
        for toDo in previousVC.toDos
        {
            if toDo.name == selectedTodo.name
            {
                previousVC.toDos.remove(at: index)
                previousVC.tableView.reloadData()
                navigationController?.popViewController(animated: true)
                break
                
            }
            index += 1
        }
        }
        
    
    

    

}

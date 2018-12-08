//
//  ToDoTableViewController.swift
//  MAPD714_Assignment2

//  Created by Sherlyn Lobo on 2018-12-07.
//  Copyright © 2018 Sherlyn Lobo. All rights reserved.

//  File Name       : ToDoTableViewController.swift
//  Author Name     : Sherlyn Lobo
//  Student ID      : 301013071
//  App Description : ToDo List App

import UIKit

class ToDoTableViewController: UITableViewController {

    var toDos : [ToDo] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        toDos = createToDos()
        
        
    }
    
    func createToDos() -> [ToDo]
    {
        let eggs = ToDo()
        eggs.name = "Buy Eggs"
        eggs.important = true
        
        let dog = ToDo()
        dog.name = "Walk the Dog"
        
        let cheese = ToDo()
        cheese.name = "Eat Cheese"
        
        return [eggs, dog, cheese]
        
    }




    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let toDo = toDos[indexPath.row]
        
        // Configure the cell...

        if toDo.important
        {
            cell.textLabel?.text = "★" + toDo.name
            
        }
        else{
        cell.textLabel?.text = toDo.name
        }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let addVC = segue.destination as? AddToDoViewController{
        addVC.previousVC = self
        }
    }

}

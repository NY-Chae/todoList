//
//  TodoListViewController.swift
//  todoList
//
//  Created by 채나연 on 3/30/24.
//

import UIKit

class TodoListViewController: UIViewController {
  
    @IBOutlet weak var tableView: UITableView!
    
    var data: [Todo] = [Todo(id: .init(),
                             title: "A"),
                        Todo(id: .init(),
                             title: "B"),
                        Todo(id: .init(),
                             title: "C")
    ]
                        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension TodoListViewController: UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: TodoTableViewCell.reuseIdentifier, for: indexPath)
        
        return cell
    }
    
}

extension TodoListViewController: UITableViewDelegate {
    
}

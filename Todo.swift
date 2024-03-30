//
//  Todo.swift
//  todoList
//
//  Created by 채나연 on 3/30/24.
//

import Foundation

struct Todo {
    var id: UUID
    var title: String
    var isComlieted: Bool = false  // true 면 완료, false 면 미완료
}

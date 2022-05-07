//
//  Todo.swift
//  Todoey
//
//  Created by yurim on 2021/02/22.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

//class Item: Encodable, Decodable {
//    var title: String = ""
//    var done: Bool = false
//}

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}

//
//  main.swift
//  homework5
//
//  Created by Aruzhan Tlek on 18.12.2022.
//

import Foundation

class Facebook {
    var users = [User]()
    var admins = [Admin]()

    func createUser(user: User) {
        users.append(user)
    }

    func createAdmin(admin: Admin) {
        admins.append(admin)
    }

    func totalUsers() -> Int {
        return users.count
    }

    func totalAdmins() -> Int {
        return admins.count
    }
}

class Account {
    var name: String

    init(name: String) {
        self.name = name
    }
}

class User: Account {
    override init(name: String) {
        super.init(name: name)
    }
}

class Admin: Account {
    var privileges: [String]

    init(name: String, privileges: [String]) {
        self.privileges = privileges
        super.init(name: name)
    }
}

let facebook = Facebook()
let user1 = User(name: "Aruzhan")
let admin1 = Admin(name: "Ilyas", privileges: ["create_user", "create_admin"])

facebook.createUser(user: user1)
facebook.createAdmin(admin: admin1)

print(facebook.totalUsers())  
print(facebook.totalAdmins())


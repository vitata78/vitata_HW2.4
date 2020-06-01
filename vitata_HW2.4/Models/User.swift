//
//  User.swift
//  vitata_HW2.4
//
//  Created by Svetlana Tolstova on 5/31/20.
//  Copyright © 2020 APNET HQ LLC. All rights reserved.
//

struct User {
    let login: String
    let password: String
}


extension User {
    static func getLogin() -> String {
        return "Andrew"
    }
    static func getPassword() -> String {
        return "111"
    }
}

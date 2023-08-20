//
//  GroupsModel.swift
//  MyApp
//
//  Created by Анастасия Попугаева on 14.08.2023.
//

import Foundation

struct GroupsModel: Decodable {
    var response: Groups
}

struct Groups: Decodable {
    var items: [Group]
}

struct Group: Codable {
    var id: Int
    var name: String?
    var description: String?
}

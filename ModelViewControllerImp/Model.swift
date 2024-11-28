//
//  Model.swift
//  ModelViewControllerImp
//

//

import Foundation
struct Task: Identifiable, Codable {
    let  id = UUID()
    let title: String
    let isCompleted: Bool
}

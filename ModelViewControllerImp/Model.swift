//
//  Model.swift
//  ModelViewControllerImp
//
//  Created by Sabith Salman on 2024-11-25.
//

import Foundation
struct Task: Identifiable, Codable {
    let  id = UUID()
    let title: String
    let isCompleted: Bool
    
}

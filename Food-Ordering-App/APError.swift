//
//  APError.swift
//  Food-Ordering-App
//
//  Created by Wuqiong Fan on 9/28/23.
//

import Foundation

enum APError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}

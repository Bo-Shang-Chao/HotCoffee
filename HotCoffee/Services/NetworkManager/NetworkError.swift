//
//  NetworkError.swift
//  HotCoffee
//
//  Created by ChaoBo-Shang on 2022/10/11.
//

import Foundation

enum NetworkError: Error {
    case connectError
    case responseError
    case decodingError
    case domainError
    case urlError
}

//
//  APIManager.swift
//  Pinterest
//
//  Created by 박소현 on 05/05/2019.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//
import Foundation

protocol APIManager {}

extension APIManager {
  static func url(_ path: String) -> String {
    return "http://bomi.gq:8080" + path
  }
}

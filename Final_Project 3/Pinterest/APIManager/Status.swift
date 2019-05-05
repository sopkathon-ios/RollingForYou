//
//  Status.swift
//  Pinterest
//
//  Created by 박소현 on 05/05/2019.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import Foundation

enum Status: Int {
  case OK = 200
  case Created = 201
  case NoContent = 204
  case Duplicate = 400
  case Unauthorized = 401
  case NotFound = 404
  case ServerErr = 500
}

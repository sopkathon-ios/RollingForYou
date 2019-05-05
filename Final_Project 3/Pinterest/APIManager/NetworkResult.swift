//
//  NetworkResult.swift
//  Pinterest
//
//  Created by 박소현 on 05/05/2019.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//



enum NetworkResult<T> {
  case success(T)
  case error(Error)
}

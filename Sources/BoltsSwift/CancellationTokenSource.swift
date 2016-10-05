//
//  CancellationTokenSource.swift
//  BoltsSwift
//
//  Created by Jeffrey Heifetz on 2016-10-05.
//  Copyright © 2016 Facebook. All rights reserved.
//

import Foundation


public class CancellationTokenSource {
    
    private var _token: CancellationToken
    
    public init() {
        _token = CancellationToken()
    }
    
    public func cancellationRequested() -> Bool {
        return _token.cancellationRequested()
    }
    
    public func token() -> CancellationToken {
        return _token
    }
    
    
    public func cancel() -> Void {
        _token.tryCancel()
    }
    
}

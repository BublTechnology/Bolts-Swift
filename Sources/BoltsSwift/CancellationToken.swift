//
//  CancellationToken.swift
//  BoltsSwift
//
//  Created by Jeffrey Heifetz on 2016-10-05.
//  Copyright © 2016 Facebook. All rights reserved.
//

import Foundation

public class CancellationToken {
    private var _cancellationRequested : Bool
    
    init () {
        _cancellationRequested = false
    }
    
    public func cancellationRequested() -> Bool {
        return _cancellationRequested
    }
    
    public func throwIfCancellationRequested() throws -> Void {
        if (_cancellationRequested) {
            throw CancelledError()
        }
    }
    
    func tryCancel() -> Bool {
        if (_cancellationRequested) {
            return false
        }
        _cancellationRequested = true
        return true
    }
}

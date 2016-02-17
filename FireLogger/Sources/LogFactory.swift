//
//  Log.swift
//  FireLogger
//
//  Created by Logan Wright on 2/17/16.
//  Copyright © 2016 Intrepid. All rights reserved.
//

import Foundation
import Firebase

// TODO: Add Auth
public final class LogFactory {
    
    let base: Firebase
    
    private init(_ base: Firebase) {
        self.base = base
    }
    
    public init(_ name: String) {
        let base = Firebase(url: "https://\(name).firebaseio.com")
        self.base = base
    }
    
    public func loggerWithIdentifier(name: String) -> String -> Void {
        let table = base.childByAppendingPath(name)
        return { log in
            table.childByAutoId().setValue(log)
        }
    }
    
    public func extend(name: String) -> LogFactory {
        let child = base.childByAppendingPath(name)
        return LogFactory(child)
    }
}

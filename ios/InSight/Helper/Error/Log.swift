//
//  Log.swift
//  InSight
//
//  Created by Meriç Keskin on 23.04.2025.
//

import Foundation

final class Log {
    
    static func error(_ error: Error, with info: String? = nil) {
        guard AppEnvironment.isDevelopment else { return }
        
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss.SSSS"
        
        print("\n[\(formatter.string(from: date))]")
        
        if let loggableError = error as? LoggableError {
            print("--- \(loggableError.loggableDescription) ---")
            if let underlyingError = loggableError.underlyingError {
                print("*** \(underlyingError.localizedDescription) ***")
            }
        } else {
            print("--- Unexpected Error ---")
            print("*** \(error.localizedDescription) ***")
        }
        
        if let info {
            print("Extra Info: \(info)")
        }
    }
    
    static func debug(_ message: String) {
        guard AppEnvironment.isDevelopment else { return }
        
        print("\n[DEBUG]: \(message)")
    }
}

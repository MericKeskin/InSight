//
//  AppEnvironment.swift
//  InSight
//
//  Created by Meriç Keskin on 24.04.2025.
//

enum AppEnvironment {
    
    static var isDevelopment: Bool {
#if DEV
        return true
#else
        return false
#endif
    }
    
    static var isStaging: Bool {
#if STAG
        return true
#else
        return false
#endif
    }
    
    static var isProduction: Bool {
#if PROD
        return true
#else
        return false
#endif
    }
}

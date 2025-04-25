//
//  LoggableError.swift
//  InSight
//
//  Created by Meriç Keskin on 23.04.2025.
//

protocol LoggableError {
    var loggableDescription: String { get }
    var underlyingError: Error? { get }
}

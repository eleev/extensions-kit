//
//  OSLog+LogLevels.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 25/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import os
import Foundation

public enum SubsystemError: Error {
    case missingBundleIdentifier(String)
}

@available(iOS 12.0, *)
extension OSLog {
    
    // MARK: Static properties
    
    public static var ui        = OSLog(subsystem: try! subsystem(), category: "UI")
    public static var network   = OSLog(subsystem: try! subsystem(), category: "Network")
    public static var `default` = OSLog(subsystem: try! subsystem(), category: "Default")
    public static var info      = OSLog(subsystem: try! subsystem(), category: "Info")
    public static var debug     = OSLog(subsystem: try! subsystem(), category: "Debug")
    public static var error     = OSLog(subsystem: try! subsystem(), category: "Error")
    public static var fault     = OSLog(subsystem: try! subsystem(), category: "Fault")
    
    // MARK: - Private helpers
    
    private static func subsystem() throws -> String {
        guard let subsystemIdentifier = Bundle.main.bundleIdentifier else { throw SubsystemError.missingBundleIdentifier("Could not get bundle identifier from the main bundle") }
        return subsystemIdentifier
    }
}

// MARK: - Global functions

/// Sends a message to the logging system, optionally specifying a custom log object that specifies the subsystem with log category.
///
/// The method is a convenience wrapper around `os.os_log` method, but with fewer parameters
public func os_log(_ message: StaticString, log: OSLog) {
    os.os_log(message, log: log)
}

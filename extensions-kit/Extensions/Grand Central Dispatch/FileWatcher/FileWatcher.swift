//
//  FileWatcher.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 09/02/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import Foundation

final public class FileWatcher {
    
    // MARK: - Enum type
    
    public enum FileWatcherError: Error {
        case failedOpenningDirectory(Int32)
        case invalidURLDirectory(URL)
    }
    
    // MARK: - Properties
    
    private let fileSystemSource: DispatchSourceFileSystemObject
    private var readSource: DispatchSourceRead? = nil
    
    // MARK: - Initializers
    
    public init(in directory: URL, filename: String, queue: DispatchQueue, errorHandler: ((Error) -> Void)?) throws {
        let fileDescriptor: Int32 = try directory.withUnsafeFileSystemRepresentation { path in
            guard let path = path else { throw FileWatcherError.invalidURLDirectory(directory) }
            
            let result = open(path, O_EVTONLY)
            guard result >= 0 else { throw FileWatcherError.failedOpenningDirectory(errno) }
            
            return result
        }
        
        fileSystemSource = DispatchSource.makeFileSystemObjectSource(
            fileDescriptor: fileDescriptor,
            eventMask: .write,
            queue: queue
        )
        
        fileSystemSource.setEventHandler { [unowned self] in
            do {
                let fileHandle = try FileHandle(
                    forReadingFrom: directory.appendingPathComponent(filename)
                )
                
                self.readSource = DispatchSource.makeReadSource(fileDescriptor: fileHandle.fileDescriptor, queue: queue)
                self.readSource?.setEventHandler {
                    fileHandle.readToEndOfFileInBackgroundAndNotify()
                }
                self.readSource?.resume()
                
                self.readSource?.setCancelHandler {
                    fileHandle.closeFile()
                }
            } catch {
                errorHandler?(error)
            }
        }
        
        fileSystemSource.setCancelHandler {
            close(fileDescriptor)
        }
        
        fileSystemSource.resume()
    }
    
    deinit {
        fileSystemSource.cancel()
    }
}

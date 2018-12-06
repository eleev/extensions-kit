//
//  BuilderProtocolTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 06/12/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import extensions_kit

class BuilderProtocolTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSongBuilder() {
        // Test Data
        let author      = "The Heavy"
        let name        = "Same Ol`"
        let genre       = Song.Genre.rock
        let duration    = 184
        let releaseDate = "2012"
        
        // Keypath Builder protocol with Song
        
        let song = Song()
            .init(\.author,         with: author)
            .init(\.name,           with: name)
            .init(\.genre,          with: genre)
            .init(\.duration,       with: duration)
            .init(\.releaseDate,    with: releaseDate)
        
        // Assertions
        
        XCTAssert(song.author == author)
        XCTAssert(song.name == name)
        XCTAssert(song.genre == genre)
        XCTAssert(song.duration == duration)
        XCTAssert(song.releaseDate == releaseDate)

    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

class Song {
    
    private static let UNKNOWN: String = "unknown"
    
    enum Genre {
        case rock
        case classic
        case electro
        case rap
        case pop
        case other(name: String)
    }
    
    var name:           String  = Song.UNKNOWN
    var author:         String  = Song.UNKNOWN
    var genre:          Genre   = .other(name: Song.UNKNOWN)
    var duration:       Int     = -1
    var releaseDate:    String  = Song.UNKNOWN
    
    init() { /* empty implementation */ }
    
    init(name: String, author: String, genre: Genre, duration: Int, releaseDate: String) {
        self.name = name
        self.author = author
        self.genre = genre
        self.duration = duration
        self.releaseDate = releaseDate
    }
}

extension Song.Genre: Equatable { /* empty implementation */ }

extension Song: BuilderProtocol { /* empty implementation */ }

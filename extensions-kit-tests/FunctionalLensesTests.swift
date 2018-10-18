//
//  FunctionalLensesTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 18/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import extensions_kit

class FunctionsTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLenses() {
        let actor01 = Actor(name: "Sharon", surname: "Stone")
        let actor02 = Actor(name: "George", surname: "Clooney")
        let actor03 = Actor(name: "Ennio", surname: "Masi")
        
        let movie01 = Movie(name: "movie01", year: "1995", actors: [actor01, actor02])
        let movie02 = Movie(name: "movie02", year: "2002", actors: [])
        
        if let movie01Result = Movie.Lenses.mainActor.get(movie01) // -> "Sharon Stone"
        {
            XCTAssert(movie01Result == actor01)
        } else {
            XCTAssert(false)
        }
        
        let movie02Result = Movie.Lenses.mainActor.get(movie02) // -> nil
        XCTAssert(movie02Result == nil)
        
        if let movie03Result = Movie.Lenses.mainActor.get(Movie.Lenses.mainActor.set(movie01, actor03)) // -> Ennio Masi
        {
            XCTAssert(movie03Result == actor03)
        } else {
            XCTAssert(false)
        }
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}


// MARK: - Test types and extension

struct Actor: CustomStringConvertible, Equatable {
    let name: String
    let surname: String
    
    var description: String {
        return "name: \(name), surname: \(surname)"
    }
}

struct Movie: CustomStringConvertible, Equatable {
    let name: String
    let year: String
    let actors: [Actor]
    
    var description: String {
        return "name: \(name), year: \(year), actors: \(actors)"
    }
}

extension Actor {
    struct Lenses {
        static let name = Lens<Actor, String>(
            get: {$0.name},
            set: {(me, value) in Actor(name: value, surname: me.surname) }
        )
        static let surname = Lens<Actor, String>(
            get: {$0.surname},
            set: {(me, value) in Actor(name: me.name, surname: value) }
        )
    }
}

extension Movie {
    struct Lenses {
        static let mainActor = Lens<Movie, Actor?>(get: { movie in
            let actor: Actor? = movie.actors.first
            return actor
        }, set: { me, actor -> Movie in
            guard let actor = actor else { return me }
            
            return Movie(name: me.name, year: me.year, actors: [actor] + me.actors)
        })
    }
}

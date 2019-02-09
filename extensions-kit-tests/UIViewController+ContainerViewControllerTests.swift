//
//  UIViewController+ContainerViewControllerTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 03/02/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import XCTest

class UIViewController_ContainerViewControllerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test() {
        
        // TODO: The Unit test has not been completed
        
        let parentViewController = UIViewController()
        
        class ButtonsContainerViewController: UIViewController {
            override func viewDidLoad() {
                super.viewDidLoad()
                // The view controller has been loaded
                XCTAssert(true)
            }
        }
       
        // Load the Container View Controller and add them as plugins
        if let viewController = parentViewController.loadViewController(named: "NavigationButtonsContainerView", storyboard: "Main") as? ButtonsContainerViewController {
            self.add(viewController: viewController, to: butonsContainerView)
        }
        
        // Check if the child container view controller has been added
        
        parentViewController.remove(viewController: viewController)
        // Check wherhet the view controlelr has bee successfully removed
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

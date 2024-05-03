//
//  RouterTest.swift
//  MVP-Level OneTests
//
//  Created by Александр Печинкин on 03.05.2024.
//

import XCTest
@testable import MVP_Level_One

class MockNavigationController: UINavigationController {
    var presentedVC: UIViewController?
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        self.presentedVC = viewController
        super.pushViewController(viewController, animated: animated)
    }
}

class RouterTest: XCTestCase {

    var router: RouterProtocol!
    var navigationController = MockNavigationController()
    let assembly = AsselderModelBuilder()
    
    override func setUp() {
        router = Router(navigationController: navigationController, assemblyBuilder: assembly)
    }
    
    override func tearDown() {
        router = nil
    }
    
    func testRouter() {
        router.showDetail(comment: nil)
        let detailViewControler = navigationController.presentedVC
        
        XCTAssertTrue(detailViewControler is DetailViewController)
    }

}

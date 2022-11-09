//
//  Koloc2Var2Tests.swift
//  Koloc2Var2Tests
//
//  Created by Illia Poliakov on 9.11.22.
//

import XCTest
@testable import Koloc2Var2

final class Koloc2Var2Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCountRepeating() throws {
      XCTAssert(countRepeating(forFirstString: "buba", withCount: 3) ==
      "bubabubabuba")
      
      XCTAssert(countRepeating(forFirstString: "buba", withCount: 6) ==
      "bubabubabubabubabubabuba")
      
    }
  
  func testCountConcatenated() throws {
      XCTAssert(countConcatenated(forFirstString: "buba",
                                  forSecondString: "babu") == "bubababu")
    XCTAssert(countConcatenated(forFirstString: "bubabuba",
                                  forSecondString: "babubabu") ==
              "bubabubababubabu")
    }

}

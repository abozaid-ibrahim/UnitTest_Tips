//
//  QuickWorkFlow.swift
//  UnitTesting_TipsTests
//
//  Created by Abuzeid Ibrahim on 12/23/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import Quick
import Foundation

class VFDashboardPresenterForGaugeTest: QuickSpec {
    override func spec() {
        print(">>>spec() \(#function)")
        describe("describe no 0 ") {
            print(">>>describe 0")
            beforeEach {
                print(">>>describe 0 -> beforeEach")
            }
            it("it00"){
                print(">>>describe 0 -> it0")

            }
            it("it1"){
                print(">>>describe 0 -> it1")
                
            }
            context("when the call convertDataUnit() method") {
                print(">>>describe 0 -> context")
                it("it0"){
                    print(">>>describe 0 -> context 0 -> it0")

                }
                it("it1"){
                    print(">>>describe 0 -> context 0 -> it1")

                }
                
            }
            context("2") {
                print(">>>describe 0 -> context1")
                it("it0"){
                    print(">>>describe 0 -> context 1 -> it0")
                    
                }
                it("it1"){
                    print(">>>describe 0 -> context 1 -> it1")
                    
                }
                
            }
            
        }
        
    }
    
}

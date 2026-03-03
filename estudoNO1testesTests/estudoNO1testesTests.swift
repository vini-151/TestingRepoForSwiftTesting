//
//  estudoNO1testesTests.swift
//  estudoNO1testesTests
//
//  Created by Vini Oliveira  on 02/03/26.
//

import Testing
@testable import estudoNO1testes
internal import Foundation

struct estudoNO1testesTests {

    @Test func teste1(){
        
        //Organizar
        let vm =  ItemViewModel()
        
        //Agir
        vm.removeLast()
        
        //Afirmar
        #expect(vm.items.count == 2)
    }
    
    // Given-When-Then e AAA
    @Test("Has UUID")
    func hasUUID(){
        let vm = ItemViewModel()
        
        for item in vm.items{
            #expect(!item.id.uuidString.isEmpty)
        }
    }

}

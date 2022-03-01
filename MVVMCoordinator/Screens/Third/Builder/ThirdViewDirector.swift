//
//  ThirdViewDirector.swift
//  MVVMCoordinator
//
//  Created by Luiz Araujo on 27/02/22.
//

import SwiftUI

//enum TypeOfThirdView {
//    - id:
//    - name:
//    - symbol:
//    - timestamp:
//}

final class ThirdViewDirector<T: ThirdViewBuilder> {//<T: ThirdViewBuilder> {
    private var builder: T
    
    init(user: User) {
        self.builder = T(user: user)
    }
    
    /// Wh
    ///
    /// - Parameters:
    ///     - id:
    ///     - name:
    ///     - symbol:
    ///     - timestamp:
    ///
    /// - Returns: The 
    func makeViewA(hasId: Bool = true, hasName: Bool = true, hasSymbol: Bool = true, hasTimestamp: Bool = true) -> T.someView {
        self.builder.reset()
        
        if !hasId {
            self.builder.dontMakeIDPart()
        }
        
        if !hasName {
            self.builder.dontMakeNamePart()
        }
        
        if !hasSymbol {
            self.builder.dontMakeSymbolPart()
        }
        
        if !hasTimestamp {
            self.builder.dontMaketTimestampPart()
        }
        
        
        return self.builder.result()
    }
    
    func makeViewB(hasId: Bool = true, hasName: Bool = true, hasSymbol: Bool = true, hasTimestamp: Bool = true) -> T.someView {
        self.builder.reset()
        
        if !hasId {
            self.builder.dontMakeIDPart()
        }
        
        if !hasName {
            self.builder.dontMakeNamePart()
        }
        
        if !hasSymbol {
            self.builder.dontMakeSymbolPart()
        }
        
        if !hasTimestamp {
            self.builder.dontMaketTimestampPart()
        }
        
        
        return self.builder.result()
    }
}

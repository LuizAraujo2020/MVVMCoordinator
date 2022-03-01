//
//  ThirdViewDirector.swift
//  MVVMCoordinator
//
//  Created by Luiz Araujo on 27/02/22.
//

import SwiftUI

final class ThirdViewDirector<T: ThirdViewBuilder> {
    private var builder: T
    
    init(user: User) {
        self.builder = T(user: user)
    }
    
    /// Make the view to be displayed in the
    ///
    /// - Parameters: says if the respective field should be shown
    ///
    /// - Returns: The View to be displayed
    func makeView(hasId: Bool = true, hasName: Bool = true, hasSymbol: Bool = true, hasTimestamp: Bool = true) -> T.someView {
        
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

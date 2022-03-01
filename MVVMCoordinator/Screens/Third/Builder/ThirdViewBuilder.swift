//
//  ThirdViewBuilder.swift
//  MVVMCoordinator
//
//  Created by Luiz Araujo on 27/02/22.
//

import SwiftUI

protocol ThirdViewBuilder {
    var user: User { set get }
    
    init(user: User)
    
    func dontMakeIDPart()
    func dontMakeNamePart()
    func dontMakeSymbolPart()
    func dontMaketTimestampPart()
    
    associatedtype someView
    func result() -> someView
}

//
//  ThirdFlowCoordinator.swift
//  MVVMCoordinator
//
//  Created by Luiz Araujo on 27/02/22.
//

import SwiftUI

protocol ThirdFlowStateProtocol: ObservableObject {
    var activeLink: ThirdLink? { get set }
}

enum ThirdLink: Hashable { }

struct ThirdFlowCoordinator<State: ThirdFlowStateProtocol, Content: View>: View {

    @ObservedObject var state: State
    let content: () -> Content
    
    var body: some View {
        content()
    }
}

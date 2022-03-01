//
//  SecondFlowStateProtocol.swift
//  NANO08MVVMCoordinator
//
//  Created by Luiz Araujo on 26/02/22.
//

import SwiftUI

protocol SecondFlowStateProtocol: ObservableObject {
    var activeLink: SecondLink? { get set }
}

enum SecondLink: Hashable { }

struct SecondFlowCoordinator<State: SecondFlowStateProtocol, Content: View>: View {

    @ObservedObject var state: State
    let content: () -> Content

    var body: some View {
        content()
    }
}

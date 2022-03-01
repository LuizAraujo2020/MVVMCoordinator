//
//  FirstFlowCoordinator.swift
//  MVVMCoordinator
//
//  Created by Luiz Araujo on 27/02/22.
//

import SwiftUI

protocol FirstFlowStateProtocol: ObservableObject {
    var activeLink: FirstLink? { get set }
}

enum FirstLink: Hashable { }

struct FirstFlowCoordinator<State: FirstFlowStateProtocol, Content: View>: View {

    @ObservedObject var state: State
    let content: () -> Content

    var body: some View {
        content()
    }
}

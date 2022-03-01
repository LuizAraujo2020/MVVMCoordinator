//
//  ThirdView.swift
//  NANO08MVVMCoordinator
//
//  Created by Luiz Araujo on 26/02/22.
//

import SwiftUI

struct ThirdView<VM: ThirdViewModelProtocol & ThirdFlowStateProtocol>: View {

    @StateObject var viewModel: VM
    @State var isBuilderA = true
    var user: User
    
    var body: some View {
        ThirdFlowCoordinator(state: viewModel, content: content)
    }
    
    @ViewBuilder private func content() -> some View {
        VStack {
            
            Button {
                self.changeDirectorState()
            } label: {
                Image(systemName: isBuilderA ? "rectangle.and.arrow.up.right.and.arrow.down.left.slash" : "rectangle.and.arrow.up.right.and.arrow.down.left")
            }
            
            if isBuilderA {
                ThirdViewDirector<ThirdViewConcreteBuilderA>(user: self.user).makeView(hasId: false)
            } else {
                ThirdViewDirector<ThirdViewConcreteBuilderB>(user: self.user).makeView(hasId: false)
            }
        }
    }
    
    func changeDirectorState() {
        self.isBuilderA.toggle()
    }
}

struct ThirdView_Previews: PreviewProvider {
    
    static var previews: some View {
        ThirdView(viewModel: ThirdViewModel(user: User(id: UUID(), name: "sasdasd",  symbol: symbols[0], timestamp: Date())),
                                            user: User(id: UUID(), name: "sasdasd",  symbol: symbols[0], timestamp: Date()))
    }
}

import SwiftUI

struct ThirdView<VM: ThirdViewModelProtocol & ThirdFlowStateProtocol>: View {

    @StateObject var viewModel: VM
//    @StateObject var user: User
    var user: User
    
    var body: some View {
        ThirdFlowCoordinator(state: viewModel, content: content)
    }

//    var thirdViewConcreteBuilderA: ThirdViewConcreteBuilderA = ThirdViewConcreteBuilderA(user: viewModel.users[0])
    
    
    @ViewBuilder private func content() -> some View {
//        ThirdViewConcreteBuilderA(user: user).result()
        ThirdViewDirector<ThirdViewConcreteBuilderA>(user: self.user).makeViewA(hasId: false)
//        ThirdViewConcreteBuilderA(user: self.user).result()
    }
}

struct ThirdView_Previews: PreviewProvider {
    var viewMenuState2: ViewMenuState = ViewMenuState()
    static var previews: some View {
        ThirdView(viewModel: ThirdViewModel(), user: User(id: UUID(), name: "sasdasd",  symbol: symbols[0], timestamp: Date()))
    }
}

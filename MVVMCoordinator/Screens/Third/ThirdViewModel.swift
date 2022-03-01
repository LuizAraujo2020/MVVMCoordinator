import Foundation

protocol ThirdViewModelProtocol: ObservableObject {
    var text: String { get }
    
    var users: [User] { get set }
}

final class ThirdViewModel: ThirdViewModelProtocol, ThirdFlowStateProtocol {

    @Published var activeLink: ThirdLink?

    let text = "Default Third View"

    @Published var users: [User]
    
    init(users: [User] = userMock) {
        self.users = users
    }
}

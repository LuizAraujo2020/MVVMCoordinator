//
//  ThirdViewModel.swift
//  NANO08MVVMCoordinator
//
//  Created by Luiz Araujo on 26/02/22.
//

import Foundation

protocol ThirdViewModelProtocol: ObservableObject {
    var user: User { get set }
}

final class ThirdViewModel: ThirdViewModelProtocol, ThirdFlowStateProtocol {

    @Published var activeLink: ThirdLink?

    @Published var user: User
    
    init(user: User) {
        self.user = user
    }
}

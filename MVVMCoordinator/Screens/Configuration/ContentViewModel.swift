//
//  ContentViewModel.swift
//  NANO08MVVMCoordinator
//
//  Created by Luiz Araujo on 26/02/22.
//

import SwiftUI

protocol ContentViewModelProtocol: ObservableObject {
    var users: [User] { get set }

    func firstAction()
    func secondAction()
    func thirdAction()
    func sheetAction()
}

final class ContentViewModel: ContentViewModelProtocol, ContentFlowStateProtocol {
    
    // MARK: - Flow State
    @Published var activeLink: ContentLink?

    @Published var users: [User]
    
    init(users: [User] = userMock) {
        self.users = users
    }
    
    func firstAction() {
        activeLink = .firstLinkParametrized(text: "Some param")
    }
    
    func secondAction() {
        activeLink = .secondLinkParametrized(number: 2)
    }
    
    func thirdAction() {
        activeLink = .thirdLink
    }
    
    func sheetAction() {
        activeLink = .sheetLink(item: "Sheet param")
    }
}


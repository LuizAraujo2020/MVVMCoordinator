//
//  SecondViewModelProtocol.swift
//  NANO08MVVMCoordinator
//
//  Created by Luiz Araujo on 26/02/22.
//

import Foundation

protocol SecondViewModelProtocol: ObservableObject {
    var text: String { get }
}

final class SecondViewModel: SecondViewModelProtocol, SecondFlowStateProtocol {

    @Published var activeLink: SecondLink?

    @Published var text: String

    init(number: Int?) {
        if let number = number {
            self.text = "Second View with number: \(number)"
        } else {
            self.text = "Default Second View"
        }
    }
}

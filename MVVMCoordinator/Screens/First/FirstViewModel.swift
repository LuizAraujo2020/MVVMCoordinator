//
//  FirstViewModel.swift
//  MVVMCoordinator
//
//  Created by Luiz Araujo on 27/02/22.
//

import Foundation

protocol FirstViewModelProtocol: ObservableObject {
    var text: String { get }
}

final class FirstViewModel: FirstViewModelProtocol, FirstFlowStateProtocol {

    // MARK: - Flow State
    @Published var activeLink: FirstLink?

    
    @Published var text: String

    init(text: String?) {
        if let text = text {
            self.text = "First View with text: \(text)"
        } else {
            self.text = "Default First View"
        }
    }
}

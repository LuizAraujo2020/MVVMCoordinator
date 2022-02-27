//
//  ContentFlowStateProtocol.swift
//  NANO08MVVMCoordinator
//
//  Created by Luiz Araujo on 26/02/22.
//

import Foundation

protocol ContentFlowStateProtocol: ObservableObject {
    var activeLink: ContentLink? { get set }
}

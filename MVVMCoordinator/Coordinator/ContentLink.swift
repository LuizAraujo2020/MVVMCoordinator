//
//  ContentLink.swift
//  NANO08MVVMCoordinator
//
//  Created by Luiz Araujo on 26/02/22.
//

import Foundation

enum ContentLink: Hashable, Identifiable {
    case homeLink
    case firstLink
    case firstLinkParametrized(text: String)
    case secondLink
    case secondLinkParametrized(number: Int)
    case thirdLink

    case sheetLink(item: String)

    var navigationLink: ContentLink {
        switch self {
        case .firstLinkParametrized:
            return .firstLink
        case .secondLinkParametrized:
            return .secondLink
        case .thirdLink:
            return .thirdLink
        default:
            return self
        }
    }

    var sheetItem: ContentLink? {
        switch self {
        case .sheetLink:
            return self
        default:
            return nil
        }
    }

    var id: String {
        switch self {
        case .homeLink:
            return "home"
        case .firstLink, .firstLinkParametrized:
            return "first"
        case .secondLink, .secondLinkParametrized:
            return "second"
        case .thirdLink:
            return "third"
        case let .sheetLink(item):
            return item
        }
    }
}

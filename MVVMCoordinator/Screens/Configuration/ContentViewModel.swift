////
////  MainViewModel.swift
////  NANO08MVVMCoordinator
////
////  Created by Luiz Araujo on 26/02/22.
////

import SwiftUI
import CoreData


protocol ContentViewModelProtocol: ObservableObject {
//    var model: [User] { get }
    var users: [User] { get set }

    func firstAction()
    func secondAction()
    func thirdAction()
    func sheetAction()
}

final class ContentViewModel: ContentViewModelProtocol, ContentFlowStateProtocol {
    
    // MARK: - Flow State
    @Published var activeLink: ContentLink?
    
    //    let model: [User] = userMock

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
    
    //    func addItem() {
//        withAnimation {
//            let newItem = Item(context: viewContext)
//            newItem.timestamp = Date()
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
//
//    func deleteItems(offsets: IndexSet) {
//        withAnimation {
//            offsets.map { items[$0] }.forEach(viewContext.delete)
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
}

class User: ObservableObject, Identifiable{
    var id: UUID
    var name: String
    var symbol: String
    var timestamp: Date
    
    init(id: UUID, name: String, symbol: String, timestamp: Date) {
        self.id = id
        self.name = name
        self.symbol = symbol
        self.timestamp = timestamp
    }
}

let symbols: [String] = [
    "star.bubble", "moon.stars.fill", "books.vertical", "umbrella", "camera.on.rectangle", "wand.and.stars", "theatermasks.fill", "gamecontroller", "bicycle", "figure.wave"
]

let userMock: [User] = [
    User(id: UUID(), name: "sasdasd",  symbol: symbols[0], timestamp: Date()),
    User(id: UUID(), name: "sasdasd1", symbol: symbols[1], timestamp: Date()),
    User(id: UUID(), name: "sasdasd2", symbol: symbols[2], timestamp: Date()),
    User(id: UUID(), name: "sasdasd3", symbol: symbols[3], timestamp: Date()),
    User(id: UUID(), name: "sasdasd4", symbol: symbols[4], timestamp: Date()),
    User(id: UUID(), name: "sasdasd5", symbol: symbols[5], timestamp: Date()),
    User(id: UUID(), name: "sasdasd6", symbol: symbols[6], timestamp: Date()),
    User(id: UUID(), name: "sasdasd7", symbol: symbols[7], timestamp: Date()),
    User(id: UUID(), name: "sasdasd8", symbol: symbols[8], timestamp: Date()),
    User(id: UUID(), name: "sasdasd9", symbol: symbols[9], timestamp: Date()),
    User(id: UUID(), name: "sasdasd",  symbol: symbols[0], timestamp: Date()),
    User(id: UUID(), name: "sasdasd1", symbol: symbols[1], timestamp: Date()),
    User(id: UUID(), name: "sasdasd2", symbol: symbols[2], timestamp: Date()),
    User(id: UUID(), name: "sasdasd3", symbol: symbols[3], timestamp: Date()),
    User(id: UUID(), name: "sasdasd4", symbol: symbols[4], timestamp: Date()),
    User(id: UUID(), name: "sasdasd5", symbol: symbols[5], timestamp: Date()),
    User(id: UUID(), name: "sasdasd6", symbol: symbols[6], timestamp: Date()),
    User(id: UUID(), name: "sasdasd7", symbol: symbols[7], timestamp: Date()),
    User(id: UUID(), name: "sasdasd8", symbol: symbols[8], timestamp: Date()),
    User(id: UUID(), name: "sasdasd9", symbol: symbols[9], timestamp: Date())
]

//
//  ThirdViewConcreteBuilderA.swift
//  MVVMCoordinator
//
//  Created by Luiz Araujo on 27/02/22.
//

import SwiftUI


class ThirdViewConcreteBuilderA: ThirdViewBuilder {
//    var idPart = IdPart()
//    var namePart = NamePart()
//    var symbolPart = SymbolPart()
//    var timestampPart = TimestampPart()
    
    internal var user: User = User(id: UUID(), name: " ", symbol: "", timestamp: Date())
    
//    @State var viewMenuState = ViewMenuState()
    
    required init(user: User) {
        self.user = user
    }
    
    func reset() {
        
    }
    
    func dontMakeIDPart() {
        self.user.id = nil
    }
    
    func dontMakeNamePart() {
        self.user.name = nil
    }
    
    func dontMakeSymbolPart() {
        self.user.symbol = nil
    }
    
    func dontMaketTimestampPart() {
        self.user.timestamp = nil
    }

    func result() -> some View {
        
        return VStack {
            ViewMenu(user: self.user)
        }
    }
}



fileprivate struct ViewMenu: View {
   
    @State var showImage: Bool = true
    @State var showId:    Bool = true
    @State var showName:  Bool = true
    @State var showDate:  Bool = true
    
    var user: User
    
    var body: some View {
        VStack {
            HStack {
                if user.symbol != nil {
                    Button {
                            print("self.viewMenuState.showImage.toggle()")
                            self.showImage.toggle()
                        } label: {
                            Image(systemName: "photo")
                                .foregroundColor(self.showImage ? .green : .white)
                    }
                }
                    
                if user.id != nil {
                    Button {
                            self.showId.toggle()
                        } label: {
                            Image(systemName: "number.square")
                                .foregroundColor(self.showId ? .green : .white)
                    }
                }
                    
                if user.name != nil {
                    Button {
                            self.showName.toggle()
                        } label: {
                            Image(systemName: "signature")
                                .foregroundColor(self.showName ? .green : .white)
                    }
                }
                    
                if user.timestamp != nil {
                    Button {
                            self.showDate.toggle()
                        } label: {
                            Image(systemName: "calendar")
                                .foregroundColor(self.showDate ? .green : .white)
                    }
                }
                
            }
            .foregroundColor(.primary)
            .padding()
            .background(.secondary)
            .cornerRadius(10.0)
            
            Spacer()
            if showId {
                IdPart(text: user.id?.uuidString)
            }
            if showName {
                NamePart(text: user.name)
            }
            if showImage {
                SymbolPart(text: user.symbol)
            }
            if showDate {
                TimestampPart(text: user.timestamp?.formatted())
            }
            Spacer()
        }
    }
}

////
////  ThirdViewConcreteBuilderA.swift
////  MVVMCoordinator
////
////  Created by Luiz Araujo on 27/02/22.
////
//
//import SwiftUI
//
//
//class ThirdViewConcreteBuilderA: ThirdViewBuilder {
//    var idPart = IdPart()
//    var namePart = NamePart()
//    var symbolPart = SymbolPart()
//    var timestampPart = TimestampPart()
//
//    internal var user: User = User(id: UUID(), name: " ", symbol: "", timestamp: Date())
//
//
//    required init(user: User) {
//        self.user = user
//    }
//
//    func reset() {
//
//    }
//
//    func makeIDPart() {
//        self.idPart.text = String(self.user.id.uuidString)
//    }
//
//    func makeNamePart() {
//        self.namePart.text = self.user.name
//    }
//
//    func makeSymbolPart() {
//        self.symbolPart.text = self.user.symbol
//    }
//
//    func maketTimestampPart() {
//        self.timestampPart.text = String(self.user.timestamp.formatted(.dateTime))
//    }
//
//    func result() -> some View {
//
//        return VStack {
//
//                topMenu(idPart: self.idPart, namePart: self.namePart, symbolPart: self.symbolPart, timestampPart: self.timestampPart)
////                topMenu()
//
//        }
//    }
//
//    struct topMenu: View {
//        var idPart: IdPart
//        var namePart: NamePart
//        var symbolPart: SymbolPart
//        var timestampPart: TimestampPart
//        @StateObject var viewMenuState: ViewMenuState = ViewMenuState()
//
//        var body: some View {
//            VStack {
//                ViewMenu(viewMenuState: viewMenuState)
//                Spacer()
//
////                if viewMenuState.showId {
//                    self.idPart
////                }
////
////                if viewMenuState.showName {
//                    self.namePart
////                }
////
////                if viewMenuState.showImage {
//                    self.symbolPart
////                }
////
////                if viewMenuState.showDate {
//                    self.timestampPart
////                }
//
//                IdPart()
//                Spacer()
//            }
//        }
//    }
//
//
//
//}
//
//class ViewMenuState: ObservableObject {
//    var showImage: Bool = true
//    var showId:    Bool = true
//    var showName:  Bool = true
//    var showDate:  Bool = true
//}
//
//struct IdPart: View {
//    var text: String?
//
//
//    var body: some View {
//        if let text = text {
//            Labelfy(text: text)
//        } else {
//            Spacer()
//        }
//    }
//}
//struct NamePart: View {
//    var text: String?
//
//    var body: some View {
//        if let text = text {
//            Labelfy(text: text)
//        } else {
//            Spacer()
//        }
//    }
//}
//struct SymbolPart: View {
//    var text: String?
//
//    var body: some View {
//        if let text = text {
//            SFImagefy(sfName: text)
//        } else {
//            Spacer()
//        }
//    }
//}
//struct TimestampPart: View {
//    var text: String?
//
//    var body: some View {
//        if let text = text {
//            Labelfy(text: text)
//        } else {
//            Spacer()
//        }
//    }
//}

//
//  ThirdViewConcreteBuilderB.swift
//  MVVMCoordinator
//
//  Created by Luiz Araujo on 27/02/22.
//

import SwiftUI


class ThirdViewConcreteBuilderB: ThirdViewBuilder {
    internal var user: User = User(id: UUID(), name: " ", symbol: "", timestamp: Date())
    
    
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

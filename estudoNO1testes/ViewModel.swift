//
//  ViewModel.swift
//  estudoNO1testes
//
//  Created by Vini Oliveira  on 02/03/26.
//

import Foundation
internal import Combine

struct Item: Identifiable {
    var name: String
    let id: UUID
    init(name: String, id: UUID = UUID()) {
        self.name = name
        self.id = id
    }
    
    static var examples: [Item] {
        [Item(name: "first"), Item(name: "second"), Item(name: "third")]
    }
}

final class ItemViewModel: ObservableObject {
    @Published var items: [Item] = Item.examples
    @Published var deleteDisabled = false
    
    func removeLast() {
        guard items.isEmpty == false else { return }
        items.removeLast()
        deleteDisabled = items.isEmpty
    }
}

//
//  ContentView.swift
//  estudoNO1testes
//
//  Created by Vini Oliveira  on 02/03/26.
//

import SwiftUI

struct ContentView: View {
    
    let vm = ItemViewModel()
    
    var body: some View {
        VStack {
            Text("tests")
            ForEach(vm.items) { item in
                Button{
                    vm.removeLast()
                }label: {
                    Text(item.name)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

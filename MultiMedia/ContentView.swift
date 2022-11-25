//
//  ContentView.swift
//  MultiMedia
//
//  Created by guhui on 2022/11/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ListViewModel()
    @State var showDetail: String?
    
    var body: some View {
        NavigationView {
            VStack() {
                ForEach( viewModel.documents ){ vm in
                    ZStack {
                        Text(vm.name)
                        NavigationLink(destination:
                            DetailView(vm: vm), tag: vm.name ,selection: $showDetail) {
                            EmptyView()
                        }
                    }
                    .onTapGesture {
                        showDetail = vm.name
                    }
                }
                Spacer()
            }
            .navigationTitle(viewModel.title)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

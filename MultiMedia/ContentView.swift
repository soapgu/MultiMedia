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
                ForEach( viewModel.allDocuments ){ doc in
                    ZStack {
                        Text(doc.name)
                        NavigationLink(destination:
                            DetailView(doc: doc), tag:doc.name ,selection: $showDetail) {
                            EmptyView()
                        }
                    }
                    .onTapGesture {
                        showDetail = doc.name
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

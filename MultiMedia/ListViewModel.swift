//
//  ListViewModel.swift
//  MultiMedia
//
//  Created by guhui on 2022/11/21.
//

import Foundation

class ListViewModel : ObservableObject {
    
    @Published var documents: [DocumentViewModel] = []
    
    
    init(){
        self.documents.append( DocumentViewModel.createInstance(doc: DocumentModel(id: UUID(), name: "《三体》", fileType: "pdf")) )
        self.documents.append( DocumentViewModel.createInstance(doc: DocumentModel(id: UUID(), name: "《天朝的崩溃》", fileType: "pdf")))
        self.documents.append( DocumentViewModel.createInstance(doc: DocumentModel(id: UUID(), name: "《长津湖》", fileType: ".avi")))
        self.documents.append( DocumentViewModel.createInstance(doc: DocumentModel(id: UUID(), name: "设计图1", fileType: ".jpg")))
    }
    
    var title: String {
        "Document list"
    }
    
}


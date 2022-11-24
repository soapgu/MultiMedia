//
//  ListViewModel.swift
//  MultiMedia
//
//  Created by guhui on 2022/11/21.
//

import Foundation

class ListViewModel : ObservableObject {
    @Published var allDocuments: [DocumentModel] = []
    
    
    init(){
        self.allDocuments.append(DocumentModel(id: UUID(), name: "《三体》", fileType: "pdf"))
        self.allDocuments.append(DocumentModel(id: UUID(), name: "《天朝的崩溃》", fileType: "pdf"))
        self.allDocuments.append(DocumentModel(id: UUID(), name: "《长津湖》", fileType: ".avi"))
        self.allDocuments.append(DocumentModel(id: UUID(), name: "设计图1", fileType: ".jpg"))
    }
    
    var title: String {
        "Document list"
    }
    
}


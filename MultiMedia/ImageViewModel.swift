//
//  ImageViewModel.swift
//  MultiMedia
//
//  Created by guhui on 2022/11/23.
//

import Foundation
import SwiftUI

class ImageViewModel : DocumentViewModel {
    
    init(doc:DocumentModel) {
        super.init(name: doc.name)
    }
    
    override var description: String {
        "This is Description for image:\(self.name)"
    }
    
    override func createView() -> AnyView {
        AnyView(ImageView(vm: self))
    }
}

//
//  ImagePicker.swift
//  teste1
//
//  Created by Rafaella Costa on 13/08/23.
//

import Foundation
import SwiftUI
import UIKit

struct ImagePicker: UIViewControllerRepresentable {
    
    @Binding var selectedImage: UIImage?
    @Binding var isPickerShowing: Bool
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        
        imagePicker.delegate  = context.coordinator  // object that can receive UIImagePickerController events
        
        return imagePicker
        

        
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }
}

class Coordinator: NSObject, UIImagePickerControllerDelegate,
                   UINavigationControllerDelegate {
    
    var parent: ImagePicker
    
    init(_ picker: ImagePicker){
        self.parent = picker
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // run the code when the use has selected an image
        
        print("Image selected")
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            
            DispatchQueue.main.sync {
                self.parent.selectedImage = image
            }
        }
        
        // Dismiss the picker
        
        parent.isPickerShowing = false
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // Run the code when user has cancelled the picker UI
        
        print("user has cancelled selecting image")
        
        parent.isPickerShowing = false
        
    }
    
    
    
}

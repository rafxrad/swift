//
//  MissingView.swift
//  teste1
//
//  Created by Rafaella Costa on 13/08/23.
//

import SwiftUI
import UIKit
import PhotosUI

struct MissingView: View {
    @State var isPickerShowing = false
    @State var selectedImage: UIImage?
    @State var objectName = ""
   
    var body: some View {
        
        VStack{
            Form{
                TextField( "Name", text:$objectName)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                Button(action: {
                    isPickerShowing = true
                    
                }){ Text("where @? pick image.")
                    
                } .sheet(isPresented: $isPickerShowing, onDismiss: nil){
                    ImagePicker(selectedImage: $selectedImage, isPickerShowing: $isPickerShowing)
                }
                
                if selectedImage != nil {
                    Image(uiImage: selectedImage!)
                        .resizable()
                        .frame(width: 200, height: 200)
                    
                }
            
            }
           
        }
    }
    
    
    struct MissingView_Previews: PreviewProvider {
        static var previews: some View {
            MissingView()
        }
    }
}

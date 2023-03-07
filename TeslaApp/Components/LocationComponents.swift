//
//  LocationComponents.swift
//  TeslaApp
//
//  Created by Rathakrishnan Ramasamy on 16/07/22.
//

import SwiftUI

struct CarPin: View {
    var body: some View {
        VStack {
            Image(systemName: "car.fill")
                .frame(width: 34, height: 34)
                .background(Color("Red"))
                .clipShape(Circle())
            Text("Mach Five")
                .foregroundColor(Color.white)
                .fontWeight(.light)
                .font(.system(.footnote))
                .padding(.all,5)
                .background(Color.black.opacity(0.2))
                .innerShadow(shape: RoundedRectangle(cornerRadius: 5), color: .black.opacity(0.4), lineWidth: 1, offsetX: 1, offsetY: 1, blur: 1, blendMode: .overlay)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            
        }
    }
}

struct LocationButton: View {
    var text: String = ""
    var icon: String = ""
    var body: some View {
        Button(action: {
            print("Location Button Print")
        }){
            if text.isEmpty {
                //PENDO CHANGE: In order for ALL the area of  the text/image to be clickable it should be wrapped in Button
                Image(systemName: icon)
                    .imageScale(.large)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .frame(height: 44)
                    .background(Color.gridBackgroud)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .overlay {
                        // MARK: Card Border
                        RoundedRectangle(cornerRadius: 5)
                            .strokeBorder(.white.opacity(0.2))
                            .blendMode(.overlay)
                    }
                    .backgroundBlur(radius: 25, opaque: true)
                    .innerShadow(shape: RoundedRectangle(cornerRadius: 5), color: .white.opacity(0.25), lineWidth: 1, offsetX: 1, offsetY: 1, blur: 1, blendMode: .overlay)
            }
            else {
            Text(text)
            .padding()
            .frame(maxWidth: .infinity)
            .frame(height: 44)
            .background(Color.gridBackgroud)
            .clipShape(RoundedRectangle(cornerRadius: 5))
            .overlay {
                // MARK: Card Border
                RoundedRectangle(cornerRadius: 5)
                    .strokeBorder(.white.opacity(0.2))
                    .blendMode(.overlay)
            }
            .backgroundBlur(radius: 25, opaque: true)
            .innerShadow(shape: RoundedRectangle(cornerRadius: 5), color: .white.opacity(0.25), lineWidth: 1, offsetX: 1, offsetY: 1, blur: 1, blendMode: .overlay)
            }
        }
        
    }
}

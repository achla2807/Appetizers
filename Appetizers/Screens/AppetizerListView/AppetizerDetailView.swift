//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Achla Ajay on 13/02/25.
//

import SwiftUI

struct AppetizerDetailView: View {
    let appetizer: Appetizer
    var body: some View {
        VStack{
            Image("food-placeholder")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300,height: 225)
            
            VStack{
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40){
                    VStack(spacing: 5){
                        Text("calories")
                            .bold()
                            .font(.caption)
                        Text("\(appetizer.calories)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5){
                        Text("carbs")
                            .bold()
                            .font(.caption)
                        Text("\(appetizer.carbs)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5){
                        Text("protein")
                            .bold()
                            .font(.caption)
                        Text("\(appetizer.protein)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }

                }
            }
            Spacer()
            
            Button{
                print("tapped")
            }label:{
                Text("$\(appetizer.price, specifier: ".2f") - Add To Order")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 260,height: 50)
                    .foregroundColor(.white)
                    .background(Color.brandPrimary)
                    .cornerRadius(10)
            }
                           
            .padding(.bottom,30)
        }
        .frame(width: 300,height:525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button{
            print("dismiss")
        }label:{
            ZStack{
                Circle()
                    .frame(width: 30,height: 30)
                    .foregroundColor(.white)
                    .opacity(0.6)
                
                Image(systemName: "xmark")
                    .imageScale(.small)
                    .frame(width: 44,height: 44)
                    .foregroundColor(.black)
            }
        },alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer)
}

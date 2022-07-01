//
//  ContentView.swift
//  MyGrocery
//
//  Created by Abdullah Aiban on 29/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var groceryItems = ["Snickers", "Kit Kat", "Pepsi", "Indomie", "Tomato"]
    @State var newItemAdded = ""
    var body: some View {
        VStack{
            List(groceryItems, id:\.self){ items in
                HStack{
                    Image(items)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    Spacer()
                    Text(items)
                        .font(.system(size: 20))
                }
                
            }
            Spacer()
            ExtractedView1(groceryItems: $groceryItems, newItemAdded: $newItemAdded)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView1: View {
    @Binding var groceryItems : [String]
    @Binding var newItemAdded : String
    var body: some View {
        HStack{
            Button{
                groceryItems.append(newItemAdded)
            } label: {
                Image(systemName: "plus")
                    .padding(20)
                    .background(Color.blue)
                    .cornerRadius(20)
                    .foregroundColor(Color.white)
                    .clipShape(Circle())
            }
            Spacer()
            TextField("new item", text: $newItemAdded)
                .font(.system(size: 20))
            Spacer()
            Button{
                groceryItems.remove(at: 0)
            }label: {
                Image(systemName: "minus")
                    .padding(27)
                    .background(Color.red)
                    .cornerRadius(20)
                    .foregroundColor(Color.white)
                    .clipShape(Circle())
            }
        }.padding()
    }
}

//
//  AddFoodView.swift
//  FoodCalories
//
//  Created by Kazuki Omori on 2023/08/27.
//

import SwiftUI

struct AddFoodView: View {
    @Environment (\.managedObjectContext) var managedObjContext
    @Environment (\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var calories: Double = 0
    var body: some View {
        Form {
            Section {
                TextField("食べ物", text: $name)
                
                VStack {
                    Text("カロリー：\(Int(calories))")
                    Slider(value: $calories, in: 0...1500, step: 10)
                }
                .padding()
                
                HStack {
                    Spacer()
                    Button("追加") {
                        DataController().addFood(name: name, calories: calories, context: managedObjContext)
                        dismiss()
                    }
                    Spacer()
                }
            }
        }
    }
}

struct AddFoodView_Previews: PreviewProvider {
    static var previews: some View {
        AddFoodView()
    }
}

//
//  ContentView.swift
//  Temperature Unit Calc
//
//  Created by THANSEEF on 05/01/22.
//

import SwiftUI

struct ContentView: View {
    @State private var inputType = "km"
    @State private var inputLength = 0.0
    @State private var outputType = "m"
    
    var outputLength : Double {
        let inputData = Double(inputLength)
        let inputTypeData = String(inputType)
        let outTypeData = String(outputType)
        var total = 0.0
        if inputTypeData == outTypeData {
            total = inputData
            return total
        }else if inputTypeData == "m" && outTypeData == "km"{
            total = inputData / 1000
            return total
        }else if inputTypeData == "m" && outTypeData == "feet"{
            total = inputData * 3.281
            return total
        }else if inputTypeData == "m" && outTypeData == "yard"{
            total = inputData * 1.094
            return total
        }else if inputTypeData == "m" && outTypeData == "mile"{
            total = inputData * 1609
            return total
        }
        else if inputTypeData == "km" && outTypeData == "m"{
            total = inputData * 1000
            return total
        }else if inputTypeData == "km" && outTypeData == "feet"{
            total = inputData * 3281
            return total
        }else if inputTypeData == "km" && outTypeData == "yard"{
            total = inputData * 1094
            return total
        }else if inputTypeData == "km" && outTypeData == "mile"{
            total = inputData * 1.609
            return total
        }
        else if inputTypeData == "feet" && outTypeData == "m"{
            total = inputData / 3.281
            return total
        }else if inputTypeData == "feet" && outTypeData == "km"{
            total = inputData / 3281
            return total
        }else if inputTypeData == "feet" && outTypeData == "yard"{
            total = inputData / 3
            return total
        }else if inputTypeData == "feet" && outTypeData == "mile"{
            total = inputData / 5280
            return total
        }
        else if inputTypeData == "yard" && outTypeData == "m"{
            total = inputData / 1.094
            return total
        }else if inputTypeData == "yard" && outTypeData == "km"{
            total = inputData / 1094
            return total
        }else if inputTypeData == "yard" && outTypeData == "feet"{
            total = inputData * 3
            return total
        }else if inputTypeData == "yard" && outTypeData == "mile"{
            total = inputData / 1760
            return total
        }
        else if inputTypeData == "mile" && outTypeData == "m"{
            total = inputData * 1609
            return total
        }else if inputTypeData == "mile" && outTypeData == "km"{
            total = inputData * 1.609
            return total
        }else if inputTypeData == "mile" && outTypeData == "feet"{
            total = inputData * 5280
            return total
        }else if inputTypeData == "mile" && outTypeData == "yard"{
            total = inputData * 1760
            return total
        }
        return 0.0
    }
    
    @FocusState private var lengthFocus : Bool
    
    let lengthArray = ["m","km","feet","yard","mile"]
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                    Picker("Length Type Choose", selection: $inputType){
                        ForEach(lengthArray,id: \.self){
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                    
                }header: {
                    Text("Input Type")
                }
                Section{
                    TextField("Enter length",value: $inputLength, format: .number)
                }header: {
                    Text("Input Field")
                }
                .keyboardType(.decimalPad)
                .focused($lengthFocus)
                Section{
                    Picker("Length Type Choose",selection: $outputType){
                        ForEach(lengthArray, id: \.self){
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                }header: {
                    Text("Output Type")
                }
                Section{
                    Text(outputLength,format: .number)
                }header: {
                    Text("Output Field")
                }
            }
            .navigationTitle("Length Converter")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItemGroup(placement: .keyboard){
                    Spacer()
                    Button("Done"){
                        lengthFocus = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

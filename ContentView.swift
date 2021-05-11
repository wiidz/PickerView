//
//  Train.swift
//  Aniki
//
//  Created by Wiidz on 2021/5/3.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedWeight : dataListItemModel = dataListItemModel(label: "1KG", value: 1)
    @State var selectedTimes : dataListItemModel = dataListItemModel(label: "1RM", value: 1)
    
    let timesDataList : [dataListItemModel] = [
        dataListItemModel(label: "1RM", value: 1),
        dataListItemModel(label: "2RM", value: 2),
        dataListItemModel(label: "3RM", value: 3),
    ]
    let weightDataList : [dataListItemModel] = [
        dataListItemModel(label: "1.25KG", value: 1.25),
        dataListItemModel(label: "2.5KG", value: 2.5),
        dataListItemModel(label: "5KG", value: 5),
    ]
    
    var body: some View {
        
        
        HStack(spacing:0){
            HStack{
                CustomPicker(selected: self.$selectedWeight,dataList: weightDataList,width: (KScreenWidth - 32 - 12) / 2)
            }.padding(.horizontal,24)
//            HStack{
//                CustomPicker(selected: self.$selectedTimes,dataList: timesDataList,width: (KScreenWidth - 32 - 12) / 2)
//            }.padding(.horizontal,24)
        }.padding(.horizontal,24)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

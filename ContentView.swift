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
        dataListItemModel(label: "4RM", value: 4),
        dataListItemModel(label: "5RM", value: 5),
        dataListItemModel(label: "6RM", value: 6),
        dataListItemModel(label: "7RM", value: 7),
        dataListItemModel(label: "8RM", value: 8),
        dataListItemModel(label: "9RM", value: 9),
        dataListItemModel(label: "10RM", value: 10),
        dataListItemModel(label: "11RM", value: 11),
        dataListItemModel(label: "12RM", value: 12),
        dataListItemModel(label: "13RM", value: 13),
        dataListItemModel(label: "14RM", value: 14),
        dataListItemModel(label: "15RM", value: 15),
        dataListItemModel(label: "16RM", value: 16),
        dataListItemModel(label: "17RM", value: 17),
        dataListItemModel(label: "18RM", value: 18),
        dataListItemModel(label: "19RM", value: 19),
        dataListItemModel(label: "20RM", value: 20),
    ]
    let weightDataList : [dataListItemModel] = [
        dataListItemModel(label: "1.25KG", value: 1.25),
        dataListItemModel(label: "2.5KG", value: 2.5),
        dataListItemModel(label: "5KG", value: 5),
        dataListItemModel(label: "7.5KG", value: 7.5),
        dataListItemModel(label: "8KG", value: 8),
        dataListItemModel(label: "10KG", value: 10),
        dataListItemModel(label: "12.5KG", value: 12.5),
        dataListItemModel(label: "15KG", value: 15),
        dataListItemModel(label: "17.5KG", value: 17.5),
        dataListItemModel(label: "20KG", value: 20),
        dataListItemModel(label: "21.5KG", value: 21.5),
        dataListItemModel(label: "25KG", value: 25),
        dataListItemModel(label: "27.5KG", value: 27.5),
        dataListItemModel(label: "30KG", value: 30),
        dataListItemModel(label: "35KG", value: 35),
        dataListItemModel(label: "40KG", value: 40),
        dataListItemModel(label: "45KG", value: 45),
        dataListItemModel(label: "50KG", value: 50),
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

struct TrainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

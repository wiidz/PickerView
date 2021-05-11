//
//  trainPicker.swift
//  Aniki
//
//  Created by Wiidz on 2021/05/11.
//


import SwiftUI
import UIKit


struct dataListItemModel : Identifiable {
    let id : String = UUID().uuidString
    let label : String
    let value : Double
    
    init(label : String,  value : Double)  {
        self.label = label
        self.value = value
    }
    
}



struct CustomPicker : UIViewRepresentable{
    
    @Binding var selected : dataListItemModel

    let dataList : [dataListItemModel]
    let width : CGFloat
    
    func makeCoordinator() -> CustomPicker.Coordinator {
        return CustomPicker.Coordinator(parent1: self)
    }
    
    func makeUIView(context: UIViewRepresentableContext<CustomPicker>) -> UIPickerView {
        let picker = UIPickerView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width/3, height: 60))

        picker.dataSource = context.coordinator
        picker.delegate = context.coordinator
  
//        picker.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        return picker
    }
    func updateUIView(_ uiView: UIPickerView, context: UIViewRepresentableContext<CustomPicker>) {
        
    }
    
    class Coordinator : NSObject,UIPickerViewDelegate,UIPickerViewDataSource{
        
        var parent : CustomPicker
        let dataList : [dataListItemModel]
        let width : CGFloat
        
        init(parent1 : CustomPicker) {
            parent = parent1
            dataList = parent1.dataList
            width = parent1.width
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return dataList.count
        }
        
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
//            pickerView.subviews.forEach({
//                // $0.frame = CGRect(x:0,y:0,width:width,height:60)
//1
//                $0.isHidden = $0.frame.height < 1.0
//            })
            return 1
        }
        
        
        func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
            
            let view = UIView(frame: CGRect(x:0,y:0,width:width,height:60))
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
            
            label.text = dataList[row].label
            label.textColor = .white
            label.textAlignment = .center
            label.font = .systemFont(ofSize: 22,weight:.bold)
            label.adjustsFontSizeToFitWidth = true
            label.numberOfLines = 1
            view.backgroundColor = .red
            
            
            view.addSubview(label)
            
            view.clipsToBounds = true
            view.layer.cornerRadius = 8
            
            return view
        }
        
        
        func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
            return width
        }
        
        func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
            return 60
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            self.parent.selected = dataList[row]
        }
        
        
    }
}

class Host : UIHostingController<ContentView>{
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
}

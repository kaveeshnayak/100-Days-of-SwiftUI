//
//  ContentView.swift
//  All in One Converter
//
//  Created by Kaveesh Nayak on 20/08/22.
//

import SwiftUI

struct ContentView: View {
    @State var vlu=0.0
    @State var qty="Temperature"
    @State var qnty=["Temperature", "Mass", "Length", "Time"]
    @State var tqnty="Kelvin"
    @State var tempqnty=["Kelvin", "Celsius"]
    @State var t2qnty="Kelvin"
    @State var temp2qnty=["Kelvin", "Celsius"]
    @State var mqnty="Kilograms"
    @State var massqnty=["Kilograms", "Pounds"]
    @State var m2qnty="Kilograms"
    @State var mass2qnty=["Kilograms", "Pounds"]
    @State var lqnty="Kilometres"
    @State var lengthqnty=["Kilometres", "Feet"]
    @State var l2qnty="Kilometres"
    @State var length2qnty=["Kilometres", "Feet"]
    @State var tmqnty="Minutes"
    @State var timeqnty=["Minutes", "Seconds"]
    @State var tm2qnty="Minutes"
    @State var time2qnty=["Minutes", "Seconds"]
   var result:Double{
        var valu=vlu
        var choice=qty
       if (choice=="Temperature")
       {
           if(tqnty=="Kelvin"){
               if (t2qnty=="Celsius")
               {
                   return(valu-273)
               }
           }
           if(tqnty=="Celsius"){
               if (t2qnty=="Kelvin")
               {
                   return(valu+273)
               }
           }
       }
       if (choice=="Mass")
       {
           if(mqnty=="Kilograms"){
               if (m2qnty=="Pounds")
               {
                   return(valu*2.2)
               }
           }
           if(mqnty=="Pounds"){
               if (m2qnty=="Kilograms")
               {
                   return(valu/2.2)
               }
           }
       }
       if (choice=="Length")
       {
           if(lqnty=="Kilometres"){
               if (l2qnty=="Feet")
               {
                   return(valu*3280)
               }
           }
           if(lqnty=="Feet"){
               if (l2qnty=="Kilometres")
               {
                   return(valu/3280)
               }
           }
       }
       if (choice=="Time")
       {
           if(tmqnty=="Minutes"){
               if (tm2qnty=="Seconds")
               {
                   return(valu*60)
               }
           }
           if(tmqnty=="Seconds"){
               if (tm2qnty=="Minutes")
               {
                   return(valu/60)
               }
           }
       }
        return(valu)
    }

    var body: some View {
        NavigationView{
            Form{
                Section{
                    TextField("Enter the value ", value: $vlu, format:.number)
                }
            header:{
                   Text("Enter the value of the quantity")
                }
                .keyboardType(.decimalPad)
                
                Section{
                    Section{
                    Picker("Pick the quantity", selection: $qty){
                        ForEach(qnty, id: \.self){
                            Text($0)
                        }
                                            }
                    .pickerStyle(.menu)
                    }
                    if (qty=="Temperature"){
                    Section{
                    Picker("Select the source units", selection: $tqnty){
                        ForEach(tempqnty, id: \.self){
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                    }
                    Section{
                        Picker("Select the source units", selection: $t2qnty){
                            ForEach(temp2qnty, id: \.self){
                                Text($0)
                            }
                        }
                        .pickerStyle(.segmented)
                        }
                        
                    header:{
                        Text("Select Units")
                    }
                    }
                    if (qty=="Mass"){
                    Section{
                    Picker("Select the source units", selection: $mqnty){
                        ForEach(massqnty, id: \.self){
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                    }
                        Section{
                        Picker("Select the source units", selection: $m2qnty){
                            ForEach(mass2qnty, id: \.self){
                                Text($0)
                            }
                        }
                        .pickerStyle(.segmented)
                        }
                    header:{
                        Text("Select Units")
                    }
                    }
                    if (qty=="Length"){
                    Section{
                    Picker("Select the source units", selection: $lqnty){
                        ForEach(lengthqnty, id: \.self){
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                        Section{
                        Picker("Select the source units", selection: $l2qnty){
                            ForEach(length2qnty, id: \.self){
                                Text($0)
                            }
                        }
                        .pickerStyle(.segmented)
                       
                    }
                    header:{
                        Text("Select Units")
                    }
                    }
                        
                        
                    
                }
            
                    if (qty=="Time"){
                    Section{
                    Picker("Select the source units", selection: $tmqnty){
                        ForEach(timeqnty, id: \.self){
                            Text($0)
                        }
                    }
                    
                    .pickerStyle(.segmented)
                        Section{
                        Picker("Select the source units", selection: $tm2qnty){
                            ForEach(time2qnty, id: \.self){
                                Text($0)
                            }
                        }
                        .pickerStyle(.segmented)
                       
                    }
                   
                    }
                    header:{
                        Text("Choose Units")
                    }
                    
                    }
                        
                        
                    
                }
                Section{
                    Text("The Result is \(result)")
                }
            }
            .navigationTitle("Master Converter")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


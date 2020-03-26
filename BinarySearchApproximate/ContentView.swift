//
//  ContentView.swift
//  BinarySearchApproximate
//
//  Created by ing.conti on 26/03/2020.
//  Copyright © 2020 ing.conti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    func getResult()->String{
        let si = ModelLoader.shared
        si.testSimple()
        return "see console..\n"
        
    }
    var body: some View {
        VStack {
            Text(getResult())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

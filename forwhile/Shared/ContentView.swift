//
//  ContentView.swift
//  Shared
//
//  Created by Takkellapati,Venkata Prabhakar on 1/25/22.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: forwhileDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(forwhileDocument()))
    }
}

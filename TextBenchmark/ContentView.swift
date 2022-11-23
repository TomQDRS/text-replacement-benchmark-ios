//
//  ContentView.swift
//  TextBenchmark
//
//  Created by Tom Quinders on 22.11.22.
//

import SwiftUI

struct ContentView: View {
    
    @State var text: String = ""
    
    var body: some View {
        
        VStack(spacing: 0) {
            ScrollView {
                
                VStack(spacing: 50) {
                    Text("test")
                    Text("test")
                    Text("test")
                    Text("test")
                    Text("test")
                    Text("test")
                    Text("test")
                    Text("test")
                    Text("test")
                    Text("test")
                }
                .frame(maxWidth: .infinity)
            }
            .background(Color.gray)
            .resignKeyboardOnDragGesture()

            TextEditor(text: $text)
                .background(Color.gray)
                .frame(height: 80)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    
    func resignKeyboardOnDragGesture() -> some View {
        return modifier(ResignKeyboardOnDragGesture())
    }
}

private struct ResignKeyboardOnDragGesture: ViewModifier {
    
    var gesture = DragGesture().onChanged { _ in
        UIApplication.shared.endEditing(true)
    }
    
    func body(content: Content) -> some View {
        content.gesture(gesture)
    }
}

private extension UIApplication {
    
    func endEditing(_ force: Bool) {
        self.windows
            .filter { $0.isKeyWindow }
            .first?
            .endEditing(force)
    }
}

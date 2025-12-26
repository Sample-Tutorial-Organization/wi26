//
//  ContentView.swift
//  wi26
//
//  Created by Kenneth Yang on 12/25/25.
//

import RealityKit
import RealityKitContent
import SwiftUI

struct NewWindowID: Identifiable {
  var id: Int
}

struct ContentView: View {

  @State var nextWindowID = NewWindowID(id: 1)
  @Environment(\.openWindow) private var openWindow

  var body: some View {
    VStack {
      Model3D(named: "Scene", bundle: realityKitContentBundle)
        .padding(.bottom, 50)

      Text("Hello, world!")

      ToggleImmersiveSpaceButton()

      Button("Open a new window") {
        openWindow(value: nextWindowID.id)
        nextWindowID.id += 1
      }
    }
    .padding()
  }
}

#Preview(windowStyle: .automatic) {
  ContentView()
    .environment(AppModel())
}

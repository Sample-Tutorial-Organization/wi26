//
//  wi26App.swift
//  wi26
//
//  Created by Kenneth Yang on 12/25/25.
//

import SwiftUI

@main
struct wi26App: App {

  @State private var appModel = AppModel()

  var body: some Scene {
    WindowGroup {
      ContentView()
        .environment(appModel)
    }

    WindowGroup("New Window", for: NewWindowID.ID.self) { $id in
      NewWindow(id: id ?? 1)
    }

    ImmersiveSpace(id: appModel.immersiveSpaceID) {
      ImmersiveView()
        .environment(appModel)
        .onAppear {
          appModel.immersiveSpaceState = .open
        }
        .onDisappear {
          appModel.immersiveSpaceState = .closed
        }
    }
    .immersionStyle(selection: .constant(.mixed), in: .mixed)
  }
}

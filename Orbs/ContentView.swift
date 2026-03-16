//
//  ContentView.swift
//  Orbs
//
//  Created 3/15/26.
//

import SwiftUI
import RealityKit

struct ContentView: View {
    var body: some View {
        VStack {
            RealityView { content in
                guard let model = try? await ModelEntity(named: "Orbs") else { return }
                model.scale = [1, 1, 1]
                content.add(model)
            }
        }
        .realityViewCameraControls(.orbit)
        
        // .tilt, .pan, .dolly, .orbit
    }
}

#Preview {
    ContentView()
}

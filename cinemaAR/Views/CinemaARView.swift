//
//  CinemaARView.swift
//  cinemaAR
//
//  Created by Pablo Fernandez Gonzalez on 30/8/23.
//

import SwiftUI
import RealityKit

struct CinemaARView: View {
    @State var didTap = false
    
    var body: some View {
        ZStack {
            CinemaARViewContainer(didTap: $didTap)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Button(action: didTapButton, label: {
                    Text("Select Video")
                        .font(.system(size: 32, weight: .bold, design: .default))
                })
            }
        }
    }
    
    func didTapButton() {
        didTap = true
    }
}

struct CinemaARViewContainer: UIViewControllerRepresentable {
    @Binding var didTap:Bool

    func makeUIViewController(context: UIViewControllerRepresentableContext<CinemaARViewContainer>) -> CinemaARViewController {
        let viewController = CinemaARViewController(didTap: $didTap)
        return viewController
    }

    func updateUIViewController(_ uiViewController: CinemaARViewController, context: UIViewControllerRepresentableContext<CinemaARViewContainer>) {
        if didTap {
            uiViewController.showPicker()
        }
    }
    
    func makeCoordinator() -> CinemaARViewContainer.Coordinator {
        return Coordinator()
    }
    
    class Coordinator {
        
    }
}

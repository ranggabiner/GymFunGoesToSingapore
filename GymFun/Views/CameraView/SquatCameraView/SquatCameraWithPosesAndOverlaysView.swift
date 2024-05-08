//
//  SquatCameraWithPosesAndOverlaysView.swift
//  GymFun
//
//  Created by Rangga Biner on 08/05/24.
//

import SwiftUI

struct SquatCameraWithPosesAndOverlaysView: View {

    @StateObject var viewModel = ViewModel()

    var body: some View {
        SquatOverlayView(detected: viewModel.isDetected, overlayCount: viewModel.showOverlay, percent: CGFloat(viewModel.uiCount) / 5) {
            viewModel.onCameraButtonTapped()
        }

        .background {
            if let (image, poses) = viewModel.liveCameraImageAndPoses {
                CameraView(
                    cameraImage: image
                )
                .overlay {
                    PosesView(poses: poses)
                }
                .ignoresSafeArea()
            }
        }
        .onAppear {
            viewModel.initialize()
        }
    }
}

struct SquatCameraWithPosesAndOverlaysView_Previews: PreviewProvider {
    static var previews: some View {
        SquatCameraWithPosesAndOverlaysView()
    }
}

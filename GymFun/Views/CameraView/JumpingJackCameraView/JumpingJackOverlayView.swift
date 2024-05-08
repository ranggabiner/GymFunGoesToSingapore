//
//  JumpingJackOverlayView.swift
//  GymFun
//
//  Created by Rangga Biner on 08/05/24.
//

import SwiftUI

/// - Tag: OverlayView
struct JumpingJackOverlayView: View {

    @State var isPresented = false

    var detected: Bool?
    var overlayCount: Bool
    let percent: CGFloat
    let flip: () -> Void
   
    var body: some View {
                ZStack {
                    VStack {
                        HStack {
                            Spacer()
                            VStack {
                                ZStack(alignment: .leading) {
                                    ZStack {
                                        Capsule().fill(Color.black.opacity(0.08 )).frame(height: 22)
                                    }
                                    Capsule()
                                        .fill(LinearGradient(gradient: .init(colors: [Color(.orange), Color(.red)]), startPoint: .leading, endPoint: .trailing))
                                        .frame(width: calcPercent(), height: 22)
                                }

                            }
                            Spacer()
                        }.bubbleBackground()

                        Spacer()

                        HStack {
                            Button {
                                flip()
                            } label: {
                                Label("Flip", systemImage: "arrow.triangle.2.circlepath.camera.fill")
                                    .foregroundColor(.primary)
                                    .labelStyle(.iconOnly)
                                    .bubbleBackground()
                            }

                            Spacer()
                        
                            
                            Button {
                                isPresented = true
                            } label: {
                                Label("Back", systemImage: "return")
                                    .bold()
                                    .foregroundColor(.orange)
                                    .labelStyle(.iconOnly)
                                    .padding()
                                    .background(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(Color(.white))
                                            )
                            }
                            .fullScreenCover(isPresented: $isPresented, content: {
                                MainView()
                            })

                        }
                    }.padding()
                    if detected ?? false {
                        FloatersView()
                    } else {
                        JumpingJackGuidance()
                    }
                    if overlayCount {
                        FirstOnboarding() // must change to feedback overlay gymbo
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                }
                                withAnimation {
                                    
                                }
                        }
                    }
                }
        }
    
    func calcPercent() -> CGFloat {
        let width = UIScreen.main.bounds.width - 80
        
        return width * CGFloat(percent)
    }
}


struct JumpingJackOverlayView_Previews: PreviewProvider {
    static var previews: some View {
        JumpingJackOverlayView(detected: true, overlayCount: false, percent: 10 / 10) { }
            .background(Color.red.opacity(0.4))

    }
}

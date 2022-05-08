//
//  ContentView.swift
//  M4L4-challenge
//
//  Created by Pablo Reiser on 08.05.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            GeometryReader { geo in
                Rectangle()
                    .foregroundColor(Color.green)
                    .frame(width: geo.size.width, height: geo.size.height)
                    .onTapGesture {
                        print("Width Green: \(geo.size.width)")
                        print("Height Green: \(geo.size.height)")
                    }
                Rectangle()
                    .foregroundColor(Color.red)
                    .frame(width: geo.size.width * 2/3,
                           height: geo.size.height * 1/4)
                    .padding(.leading, geo.size.width / 6)
                    .padding(.top, geo.size.width * 3/8)
                    .onTapGesture {
                        print("Width Red: \(geo.size.width * 2/3)")
                        print("Heigth Red: \(geo.size.height * 1/4 )")
                    }
            }
            HStack(spacing: 0) {
                GeometryReader {geo in
                    Rectangle()
                        .foregroundColor(Color.purple)
                        .frame(width: geo.size.width, height: geo.size.height)
                        .onTapGesture {
                            print("Width Purple: \(geo.size.width)")
                            print("Height Purple: \(geo.size.height)")
                        }
                }
                GeometryReader {geo in
                    Rectangle()
                        .foregroundColor(Color.orange)
                        .frame(width: geo.size.width, height: geo.size.height)
                        .onTapGesture {
                            print("Width Orange: \(geo.size.width)")
                            print("Height Orange: \(geo.size.height)")
                        }
                }
            }
        }
        .ignoresSafeArea()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

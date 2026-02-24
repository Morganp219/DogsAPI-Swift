//
//  ContentView.swift
//  Dogs
//
//  Created by Teaching on 2/24/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://images.dog.ceo/breeds/african-wild/n02116738_6790.jpg")) { img in
                if let error = img.error {
                    Text("We have an error!")
                    Text("\(error.localizedDescription)")
                }
                if let image = img.image {
                    image
                        .resizable()
                        .frame(width: 200, height: 200)
                }
            }
            Text("Our Dog?")
                .bold()
                .font(.largeTitle)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
    }
}

#Preview {
    ContentView()
}

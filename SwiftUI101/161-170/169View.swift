//
//  169View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/23
//  
//

import SwiftUI
import PhotosUI

struct _169View: View {
    @State private var photos: [PhotosPickerItem] = []
    @State private var selectedImages: [Image] = []

    var body: some View {
        VStack {
            PhotosPicker("PhotoPicker", selection: $photos, matching: .images)

            if !selectedImages.isEmpty {
                List {
                    ForEach(0..<selectedImages.count, id: \.self) { index in
                        selectedImages[index]
                            .resizable()
                            .scaledToFit()
                    }
                }
            }
        }
        .onChange(of: photos, { _, newValue in
            Task {
                for photo in newValue {
                    await selectedImages.append(photo.convert())
                }
            }
        })
    }
}

extension PhotosPickerItem {
    @MainActor
    func convert() async -> Image {
        do {
            if let data = try await self.loadTransferable(type: Data.self) {
                if let uiImage = UIImage(data: data) {
                    return Image(uiImage: uiImage)
                }
            }
        } catch {
            print(error)
        }
        return Image(systemName: "xmark.circle")
    }
}

#Preview {
    _169View()
}

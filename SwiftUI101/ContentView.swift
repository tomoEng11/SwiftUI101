import SwiftUI
import PhotosUI

struct ContentView: View {
    @State private var selectedImage: UIImage? = nil
    @State private var isShowingImagePicker = false

    var body: some View {
        VStack {
            if let selectedImage = selectedImage {
                Image(uiImage: selectedImage)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 300)
            } else {
                Text("No image selected")
                    .foregroundColor(.gray)
            }

            Button("Select Photo") {
                isShowingImagePicker = true
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .sheet(isPresented: $isShowingImagePicker) {
            ImagePicker(selectedImage: $selectedImage, isShowingImagePicker: $isShowingImagePicker)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
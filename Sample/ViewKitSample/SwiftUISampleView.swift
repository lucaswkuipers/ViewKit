import SwiftUI

struct SwiftUISampleView: View {

    var body: some View {
        VStack {
            Text("Hey")
                .background(Color.gray)
            Text("Brother")
                .background(Color.gray)
            Text("Sister")
                .background(Color.gray)
            Image(systemName: "person")
                .aspectRatio(contentMode: .fit)
                .frame(height: 100)
        }
        .background(Color.red)
    }
}

struct SwiftUISampleView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUISampleView()
    }
}

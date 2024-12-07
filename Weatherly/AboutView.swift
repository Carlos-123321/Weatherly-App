import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("About Us")
                .font(.largeTitle)
                .bold()
            
            Text("This Weather App provides real-time and historical weather data, forecasts, and related news articles. Built with Swift and SwiftUI.")
                .multilineTextAlignment(.center)
                .padding()
        }
        .navigationBarTitle("About Us", displayMode: .inline)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}

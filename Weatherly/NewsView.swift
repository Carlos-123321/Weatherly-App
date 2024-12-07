import SwiftUI

struct NewsView: View {
    var body: some View {
        VStack {
            Text("Weather News Articles")
                .font(.title)
                .bold()
                .padding()
            
            List {
                Text("Heatwave expected to hit the city this weekend.")
                Text("Rainfall expected to be 20% above normal this season.")
                Text("Snowstorm warnings issued for the northern regions.")
                Text("How climate change is affecting local weather patterns.")
            }
        }
        .navigationBarTitle("News", displayMode: .inline)
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.yellow)
                    
                    Text("Montreal, QC")
                        .font(.title)
                        .bold()
                    
                    Text("26°")
                        .font(.system(size: 60))
                        .bold()
                    
                    Text("Partly Cloudy")
                        .font(.title2)
                        .foregroundColor(.gray)
                }
                .padding()
                
                Divider()
                
                ScrollView {
                    VStack(spacing: 15) {
                        ForEach(forecastData) { day in
                            HStack {
                                Text(day.day)
                                    .frame(width: 100, alignment: .leading)
                                
                                Spacer()
                                
                                Image(systemName: day.icon)
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                
                                Spacer()
                                
                                Text("\(day.temperature)°")
                                    .frame(width: 50, alignment: .trailing)
                            }
                            .padding(.horizontal)
                        }
                    }
                }
                .padding()
            }
            .navigationBarTitle("Weather Forecast", displayMode: .inline)
            .navigationBarItems(
                leading: NavigationLink(destination: AboutView()) {
                    Text("About Us")
                },
                trailing: NavigationLink(destination: NewsView()) {
                    Text("News")
                }
            )
        }
    }
}

// Sample Forecast Data
struct Forecast: Identifiable {
    let id = UUID()
    let day: String
    let icon: String
    let temperature: Int
}

let forecastData = [
    Forecast(day: "Monday", icon: "sun.max.fill", temperature: 28),
    Forecast(day: "Tuesday", icon: "cloud.rain.fill", temperature: 22),
    Forecast(day: "Wednesday", icon: "cloud.sun.fill", temperature: 25),
    Forecast(day: "Thursday", icon: "wind.snow", temperature: 18),
    Forecast(day: "Friday", icon: "cloud.bolt.fill", temperature: 20),
    Forecast(day: "Saturday", icon: "cloud.sun.rain.fill", temperature: 24),
    Forecast(day: "Sunday", icon: "sun.max.fill", temperature: 27),
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

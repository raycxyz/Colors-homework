import SwiftUI
import MapKit

struct MapView: View {
    @State var latitude: Double
    @State var longitude: Double
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37, longitude: -122),
        span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
    )
    
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $region)
                
                .edgesIgnoringSafeArea(.all)
        }
        .onAppear {
            onStart()

        }
    }
    
    func onStart() {
        region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: latitude, longitude: longitude),
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        )
    }
}

//#Preview {
//    MapView()
//}

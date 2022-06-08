/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view that presents a map.
*/

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        
        
        // -33.65357339296962, 151.29024324908892 -- real lat/long
        // -33.653_57339296962, 151.290_24324908892       translated lat long
        // latitudeDelta / longitudeDelta is zoom: smaller number == closer zoomed in!
        center: CLLocationCoordinate2D(latitude: -33.653_57339296962, longitude: 151.290_24324908892),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )

    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

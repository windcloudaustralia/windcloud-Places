/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the details for a landmark.
*/

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 430)

            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text("Pittwater")
                    .font(.title)

                HStack {
                    Text("NSW")
                    Spacer()
                    Text("Australia")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About Pittwater")
                    .font(.title2)
                Text("Pittwater is a semi-mature tide dominated drowned valley estuary, located about 40 kilometres north of the Sydney central business district, New South Wales, Australia; being one of the bodies of water that separate greater Metropolitan Sydney from the Central Coast. Pittwater has its origin from the confluence of McCarrs Creek, to the west of Church Point and a number of smaller estuaries, the largest of which is Cahill Creek, that joins the Pittwater north of Mona Vale. The Pittwater is an open body of water, often considered a bay or harbour, that flows north towards its mouth into Broken Bay, between West Head and Barrenjoey Head, less than 1 kilometre from the Tasman Sea.")
            }
            .padding()

            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

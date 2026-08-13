import UIKit
import MapKit
import PlaygroundSupport

class MapViewController: UIViewController {

    override func loadView() {
        let mapView = MKMapView()

        let coordinate = CLLocationCoordinate2D(
            latitude: 28.4595,
            longitude: 77.0266
        )

        let region = MKCoordinateRegion(
            center: coordinate,
            latitudinalMeters: 5000,
            longitudinalMeters: 5000
        )

        mapView.setRegion(region, animated: false)

        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = "Gurugram"

        mapView.addAnnotation(annotation)

        self.view = mapView
    }
}

PlaygroundPage.current.liveView = MapViewController()
PlaygroundPage.current.needsIndefiniteExecution = true

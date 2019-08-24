import SwiftyGPIO
import Foundation

let gpios = SwiftyGPIO.GPIOs(for: .RaspberryPi3)
let pin = gpios[.P2]!

pin.direction = .OUT

while true {    
    switch pin.value {
    case 0:
        pin.value = 1
    case 1:
        pin.value = 0
    default:
        pin.value = 0
    }

    sleep(1)
    print("Pin 3 Value: \(pin.value)")
}


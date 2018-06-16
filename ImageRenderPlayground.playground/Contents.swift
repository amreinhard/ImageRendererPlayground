import UIKit

let format = UIGraphicsImageRendererFormat()
format.scale = UIScreen.main.scale
format.opaque = true

let bounds = CGRect(x: 0, y: 0, width: 128, height: 128)

let renderer = UIGraphicsImageRenderer(bounds: bounds, format: format)
let result = renderer.image { ctx in
    UIColor.red.set()
    ctx.fill(bounds)
    ctx.cgContext.saveGState()
    ctx.cgContext.translateBy(x: 64, y: 96)
    
    let rotations = 16
    let amount = Double.pi / Double(rotations)
    UIColor.white.set()
    
    for _ in 0 ..< rotations {
        ctx.cgContext.rotate(by: CGFloat(amount))
        ctx.stroke(CGRect(x: -32, y: -32, width: 64, height: 64))
        ctx.currentImage
    }
    
    ctx.cgContext.restoreGState()
    
    let ps = NSMutableParagraphStyle()
    ps.alignment = .center
    
    let attrs = [
        NSAttributedStringKey.foregroundColor: UIColor.white,
        NSAttributedStringKey.font: UIFont.systemFont(ofSize: 32),
        NSAttributedStringKey.paragraphStyle: ps
    ]
    
    let testString = NSAttributedString(string: "Test", attributes: attrs)
    testString.draw(in: bounds)
}

result

import Foundation
class ABC: Codable {
    
}
extension ABC{
    func convertToString() -> String {
        do {
            let encoder = JSONEncoder()
            encoder.outputFormatting = .prettyPrinted
            
            let data = try encoder.encode(self)
            guard let string = String.init(data: data, encoding: .utf8) else{
                return "convert Error"
            }
            return string
        } catch {
            return "convert Error"
        }
    }
}

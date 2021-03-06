import Vapor
import FluentSQLite

final class Acronym: Codable {
    var id: Int?
    var short: String
    var long: String
    
    init(short: String, long: String) {
        self.short = short
        self.long = long
    }
}

//extension Acronym: Model {
//    static var idKey: WritableKeyPath<Acronym, Int?> {
//        return \Acronym.id
//    }
//    typealias Database = SQLiteDatabase
//    typealias ID = Int
//    //key path of the model's ID property
//}

extension Acronym: SQLiteModel {}

extension Acronym: Migration {}

extension Acronym: Content {}

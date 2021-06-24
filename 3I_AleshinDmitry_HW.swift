import Foundation


struct sportCar {
    var brand: String
    var yearOfRelease: Int
    var obemKuz: Kuzov
    var engine: Engine
    var windows: Windows
    var obemFullKuz: Double
    
    mutating func actionEngine(action: Engine) {
        switch action {
        case .off:
            self.engine = .off
        case .on:
            self.engine = .on
        }
        
    }
    mutating func actionWindow(action: Windows){
    switch action {
    case .open:
        self.windows = .open
    case .close:
        self.windows = .close
        }
    }
    
    func description(){
        print("А/М \(brand), \(yearOfRelease) года выпуска. В данный момент двигатель \(engine.rawValue). Багажник  \(obemKuz). Окна \(windows) . Объем кузова равен \(obemFullKuz)")
    }
}

var T = sportCar(brand: "Tesla", yearOfRelease: 2019, obemKuz:.empty("пустой"), engine: Engine.on, windows: Windows.open, obemFullKuz: 120)

var P = sportCar(brand: "Porsche", yearOfRelease: 2007, obemKuz: .full("Полный"), engine: .off, windows: .close, obemFullKuz: 200)

struct trunkCar {
    var brand: String
    var yearOfRelease: Int
    var obemKuz: Kuzov
    var engine: Engine
    var windows: Windows
    var obemFullKuz: Double
    
    mutating func actionEng(action: actionEngine){
        switch action {
        case .start:
            self.engine = .on
        case .turnOff:
            self.engine = .off
        }
    }
    mutating func actionWindow(action: actionWindow){
    switch action {
        case .opens:
           self .windows = .open
        case .closes:
           self .windows = .close
        }
    }
    func description(){
        print("А/М \(brand), \(yearOfRelease) года выпуска. в данный момент двигатель \(engine.rawValue).Багажник \(obemKuz). Окна \(windows). Объем кузова равен \(obemFullKuz)")
       }
}

enum Engine: String {
    case on = "заведен"
    case off = "заглушен"
}

enum actionEngine {
    case start
    case turnOff
}

enum actionWindow {
    case opens
    case closes
}

enum Windows: String {
    case open = "открыты"
    case close = "закрыты"
}

enum Kuzov {
    case empty (String)
    case full(String)
    case zagruz(kg: Double)
}

var K = trunkCar(brand: "Kamaz", yearOfRelease: 2030, obemKuz: .zagruz(kg: 1500), engine: .on, windows: .close, obemFullKuz: 2000)
var G = trunkCar(brand: "Gazel", yearOfRelease: 1820, obemKuz: .empty("Голяк"), engine: .off, windows: .close, obemFullKuz: 1000)

T.description()
T.actionEngine(action: .off)
T.actionEngine(action: .on)

G.description()
G.actionEng(action: .start)
G.description()

P.description()
P.actionWindow(action:.open)
P.description()



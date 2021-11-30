import UIKit

class Animal {
    var name: String
    var health = 100
    init(name: String) {
        self.name = name
    }
    func displayHealth() {
        print("The Animal's Health is: \(health)")
    }
}

class Cat: Animal {
    override init(name: String) {
        super.init(name: name)
        health = 150
    }
    func growl() {
        print("RAAAWR!!")
    }
    func run () {
        print("Running...")
        health -= 10
    }
}

class Lion: Cat {
    override init(name: String) {
        super.init(name: name)
        health = 200
    }
    override func growl() {
        print("ROAR!!!! I am the King of the Jungle")
    }
}
class Cheetah: Cat {
    override func run() {
        if health > 0 {
            print("Running Faaast...")
            health -= 50
        }
        else {
            print("Health is low, \(name) needs sleep.")
        }
    }
    func sleep() {
        health += 50
        if health > 200 {
            health = 200
        }
    }
}

let cheetah = Cheetah(name: "Speed")
for _ in 1...4 { cheetah.run() }
cheetah.displayHealth()
let lion = Lion(name: "Simba")
for _ in 1...3 { lion.run() }
lion.growl()

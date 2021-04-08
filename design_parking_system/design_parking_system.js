class ParkingSystem {
  constructor(big, medium, small) {
    this.big_maximum = big
    this.medium_maximum = medium
    this.small_maximum = small
    this.big_parked = 0
    this.medium_parked = 0
    this.small_parked = 0
  }

  addCar(carType) {
    if (carType >= 1 && carType <= 3) {
        if (carType == 1 && this.big_parked < this.big_maximum) {
            this.big_parked += 1
            return true
        } else if (carType == 2 && this.medium_parked < this.medium_maximum) {
            this.medium_parked += 1
            return true
        } else if (carType == 3 && this.small_parked < this.small_maximum) {
            this.small_parked += 1
            return True
        } else {
            return false
        }
    }
  }
};

let obj = new ParkingSystem(1, 1, 0)
console.log(obj.addCar(1))
console.log(obj.addCar(2))
console.log(obj.addCar(3))
console.log(obj.addCar(1))
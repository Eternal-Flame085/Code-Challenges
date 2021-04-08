class ParkingSystem:
    def __init__(self, big: int, medium: int, small: int):
        self.big_maximum = big
        self.medium_maximum = medium
        self.small_maximum = small
        self.big_parked = 0
        self.medium_parked = 0
        self.small_parked = 0
        
    def addCar(self, carType: int):
        if carType >= 1 and carType <= 3:
            if carType == 1 and self.big_parked < self.big_maximum:
                self.big_parked += 1
                return True
            elif carType == 2 and self.medium_parked < self.medium_maximum:
                self.medium_parked += 1
                return True
            elif carType == 3 and self.small_parked < self.small_maximum:
                self.small_parked += 1
                return True
            else:
                return False
    
obj = ParkingSystem(1, 1, 0)
print(obj.addCar(1))
print(obj.addCar(2))
print(obj.addCar(3))
print(obj.addCar(1))
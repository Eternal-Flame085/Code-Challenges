class ParkingSystem
    def initialize(big, medium, small)
        @big_maximum = big
        @medium_maximum = medium
        @small_maximum = small
        @big_parked = 0
        @medium_parked = 0
        @small_parked = 0
    end

    def add_car(car_type)
        if car_type >= 1 && car_type <= 3 
            if car_type == 1 && @big_parked < @big_maximum
                @big_parked += 1
                return true
            elsif car_type == 2 && @medium_parked < @medium_maximum
                @medium_parked += 1
                return true
            elsif car_type == 3 && @small_parked < @small_maximum
                @small_parked += 1
                return true
            else
                return false
            end
        end
    end
end

parking_system = ParkingSystem.new(1,1,0)
puts parking_system.add_car(1)
puts parking_system.add_car(2)
puts parking_system.add_car(3)
puts parking_system.add_car(1)
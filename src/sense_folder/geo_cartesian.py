#converting geoditic coordinates to cartesian

import math

#global variables
earthRadius = 6371000


latitude = open("latitude.txt",  'r')
longitude = open('longitude.txt', 'r')
cartesian = open('cartesian.txt', 'a')

if __name__ == '__main__':
    #do the following
    while(latReading != '' or longReading !=''):
        latReading = latitude.readline()
        longReading = longitude.readline()
        
        latValue = float(latReading.split(' ')[1])
        longValue = float(longReading.split(' ')[1])
        
        x = earthRadius * math.cos(latValue) * math.cos(longValue)
        y = earthRadius * math.cos(latValue) * math.sin(longValue)
        z = earthRadius * math.sin(latValue)
        
        cartesian.writeline(str(x) + ',' +  str(y) + ',' + str(z) )
        
    latitude.close()
    longitude.close()
    cartesian.close()

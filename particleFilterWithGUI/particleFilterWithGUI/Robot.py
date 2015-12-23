from math import *
from random import randint
from random import uniform

"""

"""

class Robot(object):
    """
    description of class
    """

    def __init__(self, stateSpace,fvel,rvel,clifX,clifY, *positional_parameter, **keyword_parameter):
        self.x = stateSpace[0]
        self.y = stateSpace[1]
        self.theta = stateSpace[2] * pi/180.0

        self.travelNoise = 0.0
        self.measurementNoise = 0.0

        self.fvel = fvel
        self.rvel = rvel

        self.clifX = clifX
        self.clifY = clifY

        self.destDistance = 0
        self.destThetha = 0

        self.travelX = 0
        self.travelY = 0

        if 'color' in keyword_parameter:
            self.color = keyword_parameter['color']
        else:
            self.color = 'red'

        self.weight = 1

        self.originX = self.x
        self.originY = self.y
        self.moveFlag = True


    @property
    def position(self):
        return '[x=%.6s y=%.6s orient=%.6s]' % (str(self.x), str(self.y), str(self.theta))

    @position.setter
    def position(self,value):
        if value[2] < 0 or value[2] >= 2 * pi:
            raise ValueError, 'Orientation must be in [0..2pi]'
        self.x = float(value[0])
        self.y = float(value[1])
        self.theta = float(value[2])

    def setDestination(self,destDistance):
        """
        Noise will be significant here ,
        but in real case the noise in moving!

        set the dest in range()
        """
        self.destDistance = randint(destDistance-self.travelNoise , destDistance+ self.travelNoise)
        

    def move(self):
        """
        move 
        """
      
        if self.moveFlag == True:
            if (self.x <= 0 or self.x >= self.clifX):
                self.x = self.x
            else:
                self.x += self.fvel * cos(self.theta)
                self.travelX += self.fvel * cos(self.theta)

            if (self.y <= 0 or self.y >= self.clifY):
                self.y = self.y
            else:
                self.y += self.fvel * sin(self.theta)
                self.travelY += self.fvel * sin(self.theta)
        
        distTravelled = sqrt((self.travelX)**2 + (self.travelY)**2)
        
        if distTravelled > self.destDistance:
            self.moveFlag = False
    
    def sense(self,robot,landMarks):
        """
        sensing noise will be significant here.
        """
        measurementVector = list()

        for i in range(0,len(landMarks)):
            actualDist = sqrt((robot.x - landMarks[i][0]) ** 2 + (robot.y - landMarks[i][1]) ** 2)
            #sensedDist = uniform(actualDist-self.measurementNoise,actualDist+ self.measurementNoise )
            measurementVector.append(actualDist)

        return measurementVector

    def measurementProbability(self,actualRobot,landMarks,particle):
        predicted_measurement = self.sense(actualRobot,landMarks)
       
        measurement = self.sense(particle, landMarks)

        # compute error
        error = 1.0
        for i in range(0,len(measurement)):
            error_bearing = abs(measurement[i] - predicted_measurement[i])
            
            denominator = self.measurementNoise * sqrt(2.0 * pi)
            exponentNumerator = -(error_bearing ** 2)
            exponentDenominator = (self.measurementNoise ** 2 / 2) 

            ans = exp((exponentNumerator) / (exponentDenominator)) / denominator

            if ans == 0:
                ans = float("-inf")

            error *= ans
            

        return error

    
    def setNoise(self,travelNoise,measurementNoise):
        self.travelNoise = travelNoise
        self.measurementNoise = measurementNoise




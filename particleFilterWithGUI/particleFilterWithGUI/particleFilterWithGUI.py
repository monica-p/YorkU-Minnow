"""
Documentation:

"""

from Robot import Robot
from GUI import GUI
import random
from math import *

WORLD_X = 500
WORLD_Y = 300

actualX = 100
actualY = 100
particles = list()
fvel = 2
rvel = 0

for N in range(0,1000):
    x = random.randint(0,WORLD_X) # initial x position
    y = random.randint(0,WORLD_Y) # initial y position
    orientation = random.randint(0,360) # initial orientation

    par = Robot([x,y,orientation],fvel,rvel,WORLD_X,WORLD_Y)
    particles.append(par)

for robots in particles:
    robots.setNoise(5.0,50.0)
    robots.destDistance = 200

actaulRobot = Robot([actualX,actualY,45],fvel,rvel,WORLD_X,WORLD_Y,color='green')
actaulRobot.setNoise(5.0,15.0)
actaulRobot.destDistance = 200

particles.append(actaulRobot)

world = GUI([WORLD_X,WORLD_Y],particles)
world.createWorld()


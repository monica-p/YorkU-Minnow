import simpleguitk as gui
from random import random
import time

class GUI(object):
    """description of class"""
    PARTICLE_RADIUS = 3
    PARTICLE_LINE_WIDTH = 1
    PARTICLE_LINE_COLOR = 'red'
    WORLD_COLOR = 'white'

    LANDMARK_R = 20
    LANDMARK_LINE_WIDTH = 1
    LANDMARK_LINE_COLOR = 'blue'

    MOVE_FLAG = True

    LINE_WIDTH = 1
    LINE_COLOR = 'green'

    timer_flag = False
    step_counter = 0

    N = 1000


    def __init__(self, worldDimension,particles):
        self.worldX = worldDimension[0]
        self.worldY = worldDimension[1]

        self.btnSetDist = None
        self.txtSetDist = None

        self.particleList = particles
        self.resampledList = list()
	self.winnerList = list()

        self.landmark = [[GUI.LANDMARK_R,GUI.LANDMARK_R],[GUI.LANDMARK_R,self.worldY - GUI.LANDMARK_R],[self.worldX - GUI.LANDMARK_R,GUI.LANDMARK_R],[self.worldX - GUI.LANDMARK_R,self.worldY - GUI.LANDMARK_R]]

        self.actualRobot = self.particleList[len(self.particleList) - 1]
        print self.actualRobot.x , self.actualRobot.y

    def createWorld(self):
        world = gui.create_frame("Robot World",self.worldX,self.worldY)
        world.set_canvas_background(GUI.WORLD_COLOR)

        self.txtSetDist = world.add_input("Set Distance", self.txtDestDistance,50)
        self.btnSetDist = world.add_button("Set Distance",self.setDistHandler,50)
        self.btnMove = world.add_button("Move",self.moveHandler, 50)

        timer = gui.create_timer(500,self.timerHandler)

        world.set_draw_handler(self.renderingHandler)

        timer.start()  
        world.start()
              

    def renderParticles(self,canvas):
        for particle in self.particleList:
            canvas.draw_circle([particle.x,particle.y],GUI.PARTICLE_RADIUS,GUI.PARTICLE_LINE_WIDTH,particle.color,particle.color)

    def renderLandmarks(self,canvas):
        canvas.draw_circle([GUI.LANDMARK_R,GUI.LANDMARK_R],GUI.LANDMARK_R,GUI.LANDMARK_LINE_WIDTH,GUI.LANDMARK_LINE_COLOR,GUI.LANDMARK_LINE_COLOR)
        canvas.draw_circle([GUI.LANDMARK_R,self.worldY - GUI.LANDMARK_R],GUI.LANDMARK_R,GUI.LANDMARK_LINE_WIDTH,GUI.LANDMARK_LINE_COLOR,GUI.LANDMARK_LINE_COLOR)
        canvas.draw_circle([self.worldX - GUI.LANDMARK_R,GUI.LANDMARK_R],GUI.LANDMARK_R,GUI.LANDMARK_LINE_WIDTH,GUI.LANDMARK_LINE_COLOR,GUI.LANDMARK_LINE_COLOR)
        canvas.draw_circle([self.worldX - GUI.LANDMARK_R,self.worldY - GUI.LANDMARK_R],GUI.LANDMARK_R,GUI.LANDMARK_LINE_WIDTH,GUI.LANDMARK_LINE_COLOR,GUI.LANDMARK_LINE_COLOR)

    def timerHandler(self):
        if GUI.timer_flag == True:
            print "Timer running"
            self.particleFilterSebestian()

    def renderingHandler(self,canvas):
        self.renderParticles(canvas)
        self.renderLandmarks(canvas)
        self.renderSensing(canvas)

	#Motion Update (For All the particles)
        self.updateState()
	
	#Measurement updates for all the particles
        self.updateWeight()

	#Resampling in Timer handler
        GUI.timer_flag = True
	
        
    def renderSensing(self,canvas):
        canvas.draw_line([self.actualRobot.x,self.actualRobot.y],[GUI.LANDMARK_R,GUI.LANDMARK_R],GUI.LINE_WIDTH,GUI.LINE_COLOR)
        canvas.draw_line([self.actualRobot.x,self.actualRobot.y],[GUI.LANDMARK_R,self.worldY - GUI.LANDMARK_R],GUI.LINE_WIDTH,GUI.LINE_COLOR)
        canvas.draw_line([self.actualRobot.x,self.actualRobot.y],[self.worldX - GUI.LANDMARK_R,GUI.LANDMARK_R],GUI.LINE_WIDTH,GUI.LINE_COLOR)
        canvas.draw_line([self.actualRobot.x,self.actualRobot.y],[self.worldX - GUI.LANDMARK_R,self.worldY - GUI.LANDMARK_R],GUI.LINE_WIDTH,GUI.LINE_COLOR)

    def updateState(self):
        if GUI.MOVE_FLAG == True:
            for par in self.particleList:
                par.move()

    def updateWeight(self):
        for i in range(0,len(self.particleList)):
            weight = self.particleList[i].measurementProbability(self.actualRobot,self.landmark,self.particleList[i])
            self.particleList[i].weight = weight

        #for robot in self.particleList:
        #    weight = robot.measurementProbability(self.actualRobot,self.landmark,robot)
        #    robot.weight = weight

    def txtDestDistance(self,inputText):
        self.txtSetDist.set_text(inputText)

    def setDistHandler(self):
        for robo in self.particleList:
            dist = int(self.txtSetDist.get_text())
            robo.setDestination(dist)

    def moveHandler(self):
      
        if self.btnMove.get_text() == "Move":
            GUI.MOVE_FLAG = True
            self.btnMove.set_text("Stop")
        elif self.btnMove.get_text() == "Stop":
            GUI.MOVE_FLAG = False
            self.btnMove.set_text("Move")

    def particleFilterSebestian(self):
        #N = len(self.particleList)
	#Resampling is done on all the particles!!!

        index = int(random() * GUI.N)
        beta = 0.0
        mw = self.particleList[0].weight
        for rp in self.particleList:
            if rp.weight > mw:
                mw = rp.weight

        for i in range(GUI.N):
            beta += random() * 2.0 * mw
            while(beta > self.particleList[index].weight):
                beta -= self.particleList[index].weight
                index = (index + 1)%GUI.N
            self.resampledList.append(self.particleList[index])
        self.recolorParticles()


    def particleFilterMe(self):
        pass

    def recolorParticles(self):
        if len(self.resampledList) > 0:
            for r in self.particleList:
		#print "coloring blue"
                r.color = 'white'
            for winner in self.resampledList:
                winner.color = 'red'
            #self.particleList = self.resampledList
            self.resampledList = []



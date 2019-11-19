#!/usr/bin/env python
# coding: utf-8

# In[ ]:
import math

class Model:
    def __init__(self, adult, child, infant):
        self.adult = adult
        self.child = child
        self.infant = infant

    def calculateRoom(self):
        
        #Calculate room count
        biggestPax =max([self.adult, self.child, self.infant])
        roomCount = math.ceil(biggestPax / 3) #maximum number per person type per room is 3
    
        #Calculate total
        maxPax = self.adult + self.child
                
        if(maxPax > 7):
            output = "Maximum number of guests are 7 excluding infants."
        else:
            if(self.adult == 0):
                output = "No room will have only children or infants (i.e without at least one adult supervision)."
            elif(roomCount > 3): #maximum room to book is 3
                output = "You can only book maximum 3 rooms."
            elif(self.adult < self.infant):
                output = "Not allowed to have more infants than adults per room!"
            elif(roomCount > self.adult):
                output = "At least one adult is required per room!"
            else:
                output = "For {} Adults, {} Children and {} infants can be fit in {} rooms and not {}.".format(self.adult, self.child, self.infant, roomCount, self.adult)
            
        return output
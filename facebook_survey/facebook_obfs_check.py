#!/usr/bin/env python2

import multiprocessing
import re
from os import listdir
from os.path import isfile, join
import commands

def processFile(filename):
	mypath = '/Users/dvotipka/Documents/Projects/UMD/AndroidStudies/apks/'
	resultspath = '/Users/dvotipka/Documents/Projects/UMD/AndroidStudies/android-logging/facebook_survey/results/'
	foundPulls = ""
    	foundFacebook = False
    	foundFacebookLoginManager = False
    	output = commands.getstatusoutput('dexdump ' + mypath + filename + ' | grep "com/facebook"')[1]
    	if output != "":
        	foundFacebook = True
    	output = commands.getstatusoutput('dexdump ' + mypath + filename + ' | grep "com/facebook/login/LoginManager"')[1]
    	if output != "":
        	foundFacebookLoginManager = True
    	if foundFacebook and foundFacebookLoginManager:
        	foundPulls = filename + ",Facbook found not obfuscated\n"
    	elif foundFacebook and not foundFacebookLoginManager:
        	foundPulls = filename + ",Facebook found obfuscated\n"
    	else:
        	foundPulls = filename + ",Facebook not found\n"
    
	resultsFile = open(resultspath+filename[:-4],'wb')
	resultsFile.write(foundPulls)
	resultsFile.close()	
	
def runFiles(files):
	for file in files:
		processFile(file)

if __name__ == '__main__':
	jobs = []
	bound = 0
	processors = 1
	mypath = '/Users/dvotipka/Documents/Projects/UMD/AndroidStudies/apks' 
#	mypath = '/Users/dvotipka/Documents/Projects/UMD/AndroidStudies/android-logging/apks'
	filenames = [f for f in listdir(mypath) if isfile(join(mypath, f))]
	distance = int((len(filenames)-bound)/processors)+1
	print "1"
	print filenames
	sum = 0
	for i in range(processors):
		end = bound + distance
		if end > len(filenames):
			end = len(filenames)
		print "2"
		print filenames[bound:end]
		p = multiprocessing.Process(target=runFiles, args=([filenames[bound:end]]))
		jobs.append(p)
		p.start()
		bound = bound + distance

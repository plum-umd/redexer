#!/usr/bin/env python2

import multiprocessing
import re
from os import listdir
from os.path import isfile, join
import commands

def processFile(filename):
	mypath = '/Users/dvotipka/Documents/Projects/UMD/AndroidStudies/apks/'
	resultspath = '/Users/dvotipka/Documents/Projects/UMD/AndroidStudies/android-logging/google_survey/results/'
	foundPulls = ""
    	foundGoogle = False
    	foundGoogleAPIClient = False
    	output = commands.getstatusoutput('dexdump ' + mypath + filename + ' | grep "com/google/android/gms/common/api"')[1]
    	if output != "":
        	foundGoogle = True
    	output = commands.getstatusoutput('dexdump ' + mypath + filename + ' | grep "com/google/android/gms/common/api/GoogleApiClient"')[1]
    	if output != "":
        	foundGoogleAPIClient = True
    	if foundGoogle and foundGoogleAPIClient:
        	foundPulls = filename + ",Google found not obfuscated\n"
    	elif foundGoogle and not foundGoogleAPIClient:
        	foundPulls = filename + ",Google found obfuscated\n"
    	else:
        	foundPulls = filename + ",Google not found\n"
    
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

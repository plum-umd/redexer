#!/usr/bin/env python2

import androguard
from androguard.session import Session
import multiprocessing
import re
from os import listdir
from os.path import isfile, join

def getPermissions(instrs):
	perms = []
	for instr in instrs:
		m = re.search('\'(.*)\'',instr.show_buff(1))
		if m:
			perms.append(m.group(0))
	return perms

def findFacebook(filename, d):
	foundPulls = ""
	classes = d.get_classes_names()
	for class_name in classes:
		if 'com/facebook/' not in class_name:
			methods = d.get_class(class_name).get_methods()
			for meth in methods:
				instrs = [i for i in meth.get_instructions()]
				counter = 0
				last_counter = 0
				for instr in instrs:
					if "Lcom/facebook/login/LoginManager;->logInWithReadPermissions" in instr.show_buff(1):
						for perm in getPermissions([i for i in meth.get_instructions()][last_counter:counter]):
							foundPulls = foundPulls + filename + ", read, " + perm  + "\n"	
						last_counter = counter			
					if "Lcom/facebook/login/LoginManager;->logInWithPublishPermissions" in instr.show_buff(1):
						for perm in getPermissions([i for i in meth.get_instructions()][last_counter:counter]):
							foundPulls = foundPulls + filename + ", write, " + perm + "\n"      
                                       		last_counter = counter
					counter = counter + 1				
	return foundPulls

def processFile(filename):
	s = Session()
	mypath = '/Users/dvotipka/Documents/Projects/UMD/AndroidStudies/android-logging/apks/'
	resultspath = '/Users/dvotipka/Documents/Projects/UMD/AndroidStudies/android-logging/facebook_survey/results/'
	with open(mypath + filename, "r") as fd:
		s.add(mypath + filename, fd.read())
	a,d,dx = s.get_objects_apk(mypath + filename)
	foundPulls = ""
	if "androguard.core.bytecodes.dvm.DalvikVMFormat" in str(type(d)):
		foundPulls = foundPulls + findFacebook(filename[:-4], d)
	else:
		print type(d)
		for class_set in d:
			foundPulls = foundPulls + findFacebook(filename, class_set)
	#if foundPulls != "":
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
#	mypath = '/Users/dvotipka/Documents/Projects/UMD/AndroidStudies/apks' 
	mypath = '/Users/dvotipka/Documents/Projects/UMD/AndroidStudies/android-logging/apks'
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
	

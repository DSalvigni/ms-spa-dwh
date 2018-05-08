import os
import sys

#The folder where we save all the raw extracted files, and txt...
rootdir = 'C:\\Programming_Projects\\SPA_new\\DATA\\DELTA_DA_FARE\\O40\\2018\\O40_April'
#Prefix to  be changed in roder to prepare the upload for IP3 Ftp
prefix = 'O40_'


for root, subFolders, files in os.walk(rootdir):
	#for each file found i cycle...
	for file in files:
		#I save the filename
		if prefix not in file:
			if ('MD_' in file):
				new_filename = prefix+str(file).replace('MD_','')
				os.chdir(root)
				try:
					os.rename(file,new_filename)
					print('Renamed in ->'+new_filename)
				except WindowsError:
							print('Error')
			elif ('CurrencyMap' in file):
				new_filename = prefix+str(file).replace('CurrencyMap','Currency')
				os.chdir(root)
				try:
					os.rename(file,new_filename)
					print('Renamed in ->'+new_filename)
				except WindowsError:
							print('Error')
			elif ('CostCentre' in file):
				new_filename = prefix+str(file).replace('CostCentre','CostCenter')
				os.chdir(root)
				try:
					os.rename(file,new_filename)
					print('Renamed in ->'+new_filename)
				except WindowsError:
							print('Error')
			elif ('QInfRec' in file):
				new_filename = prefix+str(file).replace('QInfRec','Q_Inforecord')
				os.chdir(root)
				try:
					os.rename(file,new_filename)
					print('Renamed in ->'+new_filename)
				except WindowsError:
							print('Error')
			elif ('UOMM' in file):
				new_filename = prefix+str(file).replace('UOMM','UOM')
				os.chdir(root)
				try:
					os.rename(file,new_filename)
					print('Renamed in ->'+new_filename)
				except WindowsError:
							print('Error')
			else:
				new_filename = prefix+str(file).replace(' ','')
				os.chdir(root)
				try:
					os.rename(file,new_filename)
					print('Renamed in ->'+new_filename)
				except WindowsError:
							print('Error')
		else:	
			new_filename = prefix+str(file).replace('P11SAPPHIR_','')
			os.chdir(root)
			try:
				os.rename(file,new_filename)
				print('Renamed in ->'+new_filename)
			except WindowsError:
				print('Error')
			


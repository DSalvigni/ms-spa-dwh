import glob
import os
import csv
import sys
import shutil
import shlex, subprocess



#variable to modify in each file ir order to 
#---------------------------------------------------------------------------------
####################THIS MUST BE CHANGED EVERY TIME!##############################
#---------------------------------------------------------------------------------
extraction_timeframe="ww_01_2018"
#extraction_timeframe="ww_12_2017"
#---------------------------------------------------------------------------------
spa_folder_tmp ="C:\\Programming_Projects\\SPA_new\\extraction_"+extraction_timeframe+"_ready\\"
final_folder_destination= "C:\\Programming_Projects\\SPA_new\\SPA_SQL_tbls_"+extraction_timeframe+"\\"

#check control of folder for the extraction time
if not os.path.exists(spa_folder_tmp):
 os.makedirs(spa_folder_tmp)
if not os.path.exists(final_folder_destination):
 os.makedirs(final_folder_destination)	

#For each file in the subfoalder i create one unique text file. If it doesnt´ exist the first file has the header otherway I append them without header.
for path, subdirs, files in os.walk(spa_folder_tmp):
	for dir in subdirs:
		destination_folder = spa_folder_tmp+dir+"\\"
		final_file = dir+".txt"
		for path, subdirs, files in os.walk(destination_folder):
			print("--->  Process start <---")
			sorted_files_list = []
			for file in files:
				#C:\Programming_Projects\SPA_new\SPA_final_total_tables>fart -C  -r *.txt \r\n \n
				print("I F.A.R.T. the file..."+str(file))
				print("fart -C  -r "+destination_folder+str(file)+" \x1A ")
				os.system("fart -C  -r "+destination_folder+str(file)+" \x1A _")					
			for file in files:
				#C:\Programming_Projects\SPA_new\SPA_final_total_tables>fart -C  -r *.txt \r\n \n
				print("I F.A.R.T. the file..."+str(file))
				print("fart -C  -r "+destination_folder+str(file)+" \\r\\n \\n")
				os.system("fart -C  -r "+destination_folder+str(file)+" \\r\\n \\n")
			for file in files:
				sorted_files_tuple =(os.path.getsize(destination_folder+file),file)
				sorted_files_list.append(sorted_files_tuple)
			for item in sorted(sorted_files_list)[0:-1]:
				#I create a list of couple size/name file. For each item i get the name of file, file[1]
				file=list(item)
				print("Removing header from: "+file[1])
				os.system("sed -i 1d "+destination_folder+file[1])
			#create the list sorted of files and i create a costant whihc is the biggest file used for the header
			list_of_file = []
			for item in sorted(sorted_files_list , reverse=True):
				list_of_file.append(item[1])
			big_header_file = list_of_file[0]
			#I create the master file if not exist and I copy in the heade file
			for file in list_of_file:
				print("Biggest file found (Used as header file) -->  "+str(big_header_file))
				if not os.path.exists(destination_folder+final_file):
					print("General file not existing. I create the: "+final_file)
					with open(os.path.join(destination_folder, final_file), 'w'):
						pass
					print("I save the biggest found file -->  "+str(big_header_file))
					print("In -->  "+final_file)
					os.system("type "+destination_folder+str(big_header_file)+" >> "+destination_folder+final_file)	
					header_file = destination_folder+final_file
				else:
					header_file = destination_folder+final_file
			#Finally I sort the list removing the bigger and I populate the table file (ex part.txt) excluding it, by inserting all other file
			for item in sorted(sorted_files_list , reverse=True)[1:]:
				#print('item----'+item[1])
				#print(final_file)
				if str(item[1]) not in final_file:
					print(header_file)
					print("file: ->"+str(item[1]))
					#print("type "+destination_folder+str(item[1])+" >> "+header_file)
					os.system("type "+destination_folder+str(item[1])+" >> "+header_file)
					print("Copied: "+str(item[1])+" ---> "+final_file)
		
						
#NOTE: Sintax for the fart command to remove the escape not Linux/Unix. SED command to remove the first line of each txt. SED GNU and FART are required
#C:\Programming_Projects\SPA_new\SPA_final_total_tables>fart -C  -r *.txt \r\n \n ->clean the return
#C:\Programming_Projects\SPA_new\SPA_final_total_tables>sed "1d" O40_fl_O40_2006_201702_fl_PR.txt > test.txt
#



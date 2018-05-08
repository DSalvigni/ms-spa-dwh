import glob
import os
import csv
import sys
import shutil
import shlex, subprocess

#Patterns must be chanhged if new table are added

patterns = [
"Account.txt",
"CFT_Header.txt",
"CFT_Item.txt",
"CO_Header.txt",
"CO_Item.txt",
"GM_Header.txt",
"GM_Item.txt",
"INV_Header.txt",
"INV_Item.txt",
"PO_Accounting.txt",
"PO_Confirmation.txt",
"PO_Header.txt",
"PO_History.txt",
"PO_InfRecGe.txt",
"PO_InfRecPOOrg.txt",
"PO_Item.txt",
"PO_Schedule.txt",
"PR.txt",
"ProdOrder_Header.txt",
"ProdOrder_Item.txt",
"PR_Accounting.txt",
"QInfRec.txt",
"QN_Action.txt",
"QN_Header.txt",
"QN_Item.txt",
"QN_Measure.txt",
"Savings.txt",
"SO_Header.txt",
"SO_Item.txt",
"Commodity.txt",
"CostCenter.txt",
"Currency.txt",
"CurrencyMap.txt",
"Network.txt",
"Part.txt",
"PaymentTerm.txt",
"Plant.txt",
"ProfitCenter.txt",
"Project.txt",
"PurchasingGroup.txt",
"Supplier_LFA1.txt",
"Supplier_LFB1.txt",
"Supplier_LFM1.txt",
"UOM.txt",
"User.txt"]
#patterns = ["PO_Item.txt","INV_Item.txt"]


#variable to modify in each file ir order to 
#---------------------------------------------------------------------------------
####################THIS MUST BE CHANGED EVERY TIME!##############################
#---------------------------------------------------------------------------------
extraction_timeframe="ww_01_2018"
#extraction_timeframe="ww_12_2017"
#---------------------------------------------------------------------------------

#set up the folder where we want temporarly to save the files
#Folder where we put the original extraction
path_to_folders = "C:\\Programming_Projects\\SPA_new\\extraction_"+extraction_timeframe+"\\"
#Temp folder where we collect the files with changed name
folder_split_destination = "C:\\Programming_Projects\SPA_new\\temp_trasformation_file\\"
#Folder under which python create the split per pattern
spa_folder_tmp = "C:\\Programming_Projects\\SPA_new\\extraction_"+extraction_timeframe+"_ready\\"
final_folder_destination= "C:\\Programming_Projects\\SPA_new\\SPA_SQL_tbls_"+extraction_timeframe+"\\"

#check control of folder for the extraction time
if not os.path.exists(path_to_folders):
 print("No new extraction folder in extraction_ww_MM_YYYY format found!")
 sys.exit(0)
if not os.path.exists(spa_folder_tmp):
	os.makedirs(spa_folder_tmp)
if not os.path.exists(final_folder_destination):
 os.makedirs(final_folder_destination)	



#rename all the files in the original folder
for path, subdirs, files in os.walk(path_to_folders):
	for file in files:
		original_path_to_file = os.path.join(path,os.path.join(file))
		##print(original_path_to_file)
		new_file_name = str.replace((os.path.join(path,os.path.join(original_path_to_file))),path_to_folders,'')
		new_file_name = str.replace(new_file_name,' ','_')
		new_file_name = str.replace(new_file_name,'\\','-fl-')	
		new_file_name = str.replace(new_file_name,'-','_')		
		print(file+' ----> '+new_file_name)
		os.rename((os.path.join(path,os.path.join(original_path_to_file))),os.path.join(path,new_file_name))					


#copy the files renamed to a specific folder (temporary)
for path, subdirs, files in os.walk(path_to_folders):
	for file in files:
		print("Start Coping in temp folder -----> "+file)
		shutil.copy(os.path.join(path,file),folder_split_destination)


#for each files, if match the pattern we create a pattern subfolder and we insert all the files there (all GM in GM, all Item in Item etc...)
for pattern in patterns:
	for path, subdirs, files in os.walk(folder_split_destination): 
		for file in files:
			print("...Start moving the file in folder under: "+spa_folder_tmp+"\\")
			print('-----------------------------------------------------------------------')
			print('-----------------------------------------------------------------------')
			# Corrected on 22-11: if pattern in file:
			if str(pattern).lower() in str(file).lower():
				print("Found file: "+file)
				folder_destination_name=spa_folder_tmp+(str.replace(pattern,".txt",''))
				if not os.path.exists(folder_destination_name):
					try:
						os.makedirs(folder_destination_name)
					except OSError as exc: # Guard against race condition
						if exc.errno != errno.EEXIST:
							raise
				#shutil.copy((folder_split_destination+file),folder_destination_name)
				shutil.copy(os.path.join(path,file),folder_destination_name)
				#shutil.move(os.path.join(path,file),folder_destination_name)

				
				
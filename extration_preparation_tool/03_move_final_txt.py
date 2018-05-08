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
patterns = ["CFT_Header.txt","CFT_Item.txt","CO_Header.txt","CO_Item.txt","GM_Header.txt","GM_Item.txt","INV_Header.txt","CurrencyMap.txt","INV_Item.txt","PO_Accounting.txt","PO_Confirmation.txt","PO_Header.txt","PO_History.txt","PO_InfRecGe.txt","PO_InfRecPOOrg.txt","PO_Item.txt","PO_Schedule.txt","PR.txt","ProdOrder_Header.txt","ProdOrder_Item.txt","PR_Accounting.txt","QInfRec.txt","QN_Action.txt","QN_Header.txt","QN_Item.txt","QN_Measure.txt","Savings.txt","SO_Header.txt","SO_Item.txt","Account.txt","Commodity.txt","CostCenter.txt","Currency.txt","Network.txt","Part.txt","PaymentTerm.txt","Plant.txt","ProfitCenter.txt","Project.txt","PurchasingGroup.txt","Supplier_LFA1.txt","Supplier_LFB1.txt","Supplier_LFM1.txt","UOM.txt","User.txt"]
temp_trasformation_file = "C:\\Programming_Projects\\SPA_new\\temp_trasformation_file\\"
sed_temp_file_folder = "C:\\Programming_Projects\\SPA_new\\extration_preparation_tool"
operative_files = ["01_prepare_files.py","02_append_txt.py","03_move_final_txt.py","00_harmonize_file_names.py","how_to.txt","04_rename.py"]

#check control of folder for the extraction time
if not os.path.exists(spa_folder_tmp):	
 os.makedirs(spa_folder_tmp)
if not os.path.exists(final_folder_destination):
 os.makedirs(final_folder_destination)	
	
#For each file in the subfolder i create one unique text file. If it doesnt´ exist the first file has the header otherway I append them without header.
for path, subdirs, files in os.walk(spa_folder_tmp):
	for dir in subdirs:
		destination_folder = spa_folder_tmp+dir+"\\"
		final_file = dir+".txt"
		print(destination_folder)
		for path, subdirs, files in os.walk(destination_folder):
			print("+++++"+destination_folder)
			print("+++++"+final_file)
		
			for file in files:
					if file in patterns:
						print("Start Coping in final folder -----> "+file)
						shutil.copy(os.path.join(path,file),final_folder_destination)
						#shutil.move(os.path.join(path,file),final_folder_destination)

os.chdir(temp_trasformation_file)
for path, subdirs, files in os.walk(temp_trasformation_file):
	for file in files:
		os.remove(file)
		print(file+" --> Removed!")
		
os.chdir(sed_temp_file_folder)
for path, subdirs, files in os.walk(sed_temp_file_folder):
	for file in files:
		if str(file) not in operative_files:
			os.remove(file)
			print(str(file)+" --> Removed!")
		else:
			print(str(file)+" --> Not Removed!")
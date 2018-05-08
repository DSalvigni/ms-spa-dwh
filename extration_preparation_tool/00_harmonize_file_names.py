import os
import sys

#The folder where we save all the raw extracted files, and txt...
#rootdir = 'C:\Programming_Projects\SPA_new\extraction_ww_01_2018'
rootdir = 'C:\\Programming_Projects\\SPA_new\\DATA\\DELTA_DA_FARE\\P11\\2018\\April'
#rootdir = 'C:\\Programming_Projects\\SPA_new\\DATA\\DELTA_DA_FARE\\2018\\PO40\\SAP O40 mARCH 2018\\'


#list of pattern to rename files with correct name

patterns =[
['PO_Conformation','PO_Confirmation'],
['CFT_H','CFT_Header'],
['CFT_I','CFT_Item'],
['Comdty','Commodity'],
['CompSite','CompanySite'],
['Contract_H','CO_Header'],
['Contract_Header','CO_Header'],
['Contract_I','CO_Item'],
['Contract_Item','CO_Item'],
['CostCntr','CostCenter'],
['CurrMap','CurrencyMap'],
['GM_H','GM_Header'],
['GM_I','GM_Item'],
['Invoice_H','INV_Header'],
['Invoice_I','INV_Item'],
['Payterm','PaymentTerm'],
['PIRGeneral','PO_InfRecGE'],
['PIROrg','PO_InfRecPOOrg'],
['PO_Acc','PO_Accounting'],
['PO_Conf','PO_Confirmation'],
['PO_H','PO_Header'],
['PO_Hist','PO_History'],
['PO_I','PO_Item'],
['PO_Sch','PO_Schedule'],
['PRAccAssig','PR_Accounting'],
['ProdOrder_H','ProdOrder_Header'],
['ProdOrder_I','ProdOrder_Item'],
['ProfCntr','ProfitCenter'],
['PurGRP','PurchasingGroup'],
['QIR','QInfRec'],
['Q_Inforecord','QInfRec'],
['QN_Act','QN_Action'],
['QN_H','QN_Header'],
['QN_I','QN_Item'],
['QN_Meas','QN_Measure'],
['SO_H','SO_Header'],
['SO_I','SO_Item'],
['Sup_CC','Supplier_LFB1'],
['Sup_G','Supplier_LFA1'],
['Sup_POrg','Supplier_LFM1'],
['Contract_Header','CO_Header'],
['Contract_Item','CO_Item'],
['Currency','CurrencyMap'],
['CostCentre','CostCenter'],
['ProfitCentre','Profit_Center'],
['Invoice_header','INV_Header'],
['Invoice_Item','INV_Item'],
['PO_InfoRecordGeneral','PO_InfRecGe'],
['PaymenTerm','PaymentTerm'],
['PO_InfoRecordPOOrg','PO_InfRecPOOrg'],
['PR_Account_Assignment','PR_Accounting'],
['SalesOrder_Header','SO_Header'],
['SalesOrder_Item','SO_Item'],
['Supplier_CompanyCode','Supplier_LFB1'],
['Supplier_General','Supplier_LFA1'],
['Supplier_POrg','Supplier_LFM1'],
['UOMMap','UOM'],
['CompanySite','Plant'],
['QualityInfoRecord','QInfRec'],
['Purchasegroup','PurchasingGroup']
]
#patterns = [['p11_fl_',''],['prd_fl_sep_fl_prd',''],['prd_fl_oct_fl_prd',''],['sapo40_oct_2017_fl_',''],['P11_fl_P11_fl_',''],['sp1_500_october_fl_sp1500oct17a_fl_',''],['PRD_fl_OCT_fl_PRD_fl_OCT_fl_',''],['PRD_fl_SEP_fl_PRD_fl_SEP_fl_',''],['SAPO40_OCT_2017_fl_SAPO40_OCT_2017_fl_',''],['SP1_500_October_fl_sp1500oct17A_fl_SP1_500_October_fl_sp1500oct17A_fl_','']]


for root, subFolders, files in os.walk(rootdir):
	#for each file found i cycle...
	for file in files:
		#I save the filename
		filename = str(file).lower()
		#I check my pattern for each filename
		for pattern in patterns:
			#If I find the pattern...
			if str(pattern[0]).lower() == filename.replace('.txt','').lower():
				#I move in the folder...
				os.chdir(root)
				print("I convert the name to ->"+str(filename))
				#I replace the old name with the new one
				new_file_name = filename.replace(str(pattern[0]).lower(),str(pattern[1]))	
				#I rename the old file with the new name
				try:
					os.chdir(root)
					os.rename(file,new_file_name)
					print('Renamed in -> '+new_file_name)
				except WindowsError:
					print('Exception->'+filename)
					#os.remove(new_file_name)
					#os.rename(file, new_file_name)
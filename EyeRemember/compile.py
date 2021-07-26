import os
import importlib
import sys
import pickle
import platform
import pathlib
filepath = os.getcwd()
def start():
    

def RequestLogin():
    askedinput = input("Create a Password: ")
    if askedinput == "":
        RequestLogin()
    else:
        hardware_name = platform.node()
        data = [askedinput,hardware_name]
        filenew = open(filepath+"/"+"localization/"+"datalr/Pass.data",'ab')
        pickle.dump(data,filenew)



try:
    testfile = open(filepath+"/"+"localization/"+"datalr/Pass.data",'rb')
    TestLoad = pickle.load(testfile)
    
except:
    RequestLogin()
    



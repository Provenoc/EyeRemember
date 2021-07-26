import os
import importlib
import sys
import pickle
import platform
import pathlib
filepath = os.getcwd()
incorrectcount = 0

def RequestLogin(Data):
    global incorrectcount
    if incorrectcount == 3:
        print("Max number of retries, 3.")
        print("Please try again later or !forgot.")
    else:

        askedinput = input("Password: ")
        if Data[0] == askedinput:
            print("Logged in")
        else:
            incorrectcount+=1
            print("Incorrect Password, retry or type !forgot")
            RequestLogin(Data)

   
def RequestPassword():

    askedinput = input("Create a Password: ")
    if askedinput == "":
        RequestLogin('new')
    else:
        hardware_name = platform.node()
        data = [askedinput,hardware_name]
        filenew = open(filepath+"/"+"localization/"+"data/Pass.data",'ab')
        pickle.dump(data,filenew)
        print("Password saved, please re-launch.")



if os.path.exists(filepath+"\\"+"localization\\data\\Pass.data"):
        
        testfile = open(filepath+"\\"+"localization\\data\\Pass.data",'rb')
        TestLoad = pickle.load(testfile)
        RequestLogin(TestLoad)
else:
   
    RequestPassword()

    



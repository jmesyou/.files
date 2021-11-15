#!/usr/bin/python

import os
import shutil 
home = os.path.expanduser("~")

def mkdir_at_home(path):
    """Creates the directory specified by `path` at $HOME if it does not exist"""
    dst = os.path.join(home, path)
    if not os.path.exists(dst):
        print("making directory {}".format(dst))
        os.makedirs(dst)

def deploy_file_home(src):
    """Copy the file specified by `src` to $HOME"""
    dst = os.path.join(home, src)
    print("deploying {} to {}".format(src, dst))
    shutil.copyfile(src, dst) 

def deploy_directory_home(src):
    for root, dirs, files in os.walk(src):
        for d in dirs:
            dst = os.path.join(root, d)
            mkdir_at_home(dst)
        for file in files:
            dst = os.path.join(root, file)
            deploy_file_home(dst)
    
dotfiles = "files"
os.chdir(dotfiles)
for file in os.listdir(os.getcwd()):
    if os.path.isdir(file):
        deploy_directory_home(file)
    else:
        deploy_file_home(file)
#!/bin/python
from pyhyprsocket.hyprlandsocket import HyprlandSocket
import sys
import json
import subprocess
import os

def readconfig() -> dict:
    script_dir = os.path.dirname(os.path.abspath(__file__))
    file_name = "config.json"
    file_path = os.path.join(script_dir, file_name)


    with open(file_path) as file:
        config = json.load(file)
    return config

def changeMode(config: dict, mode: str):
    allMonitors = config.get('default')
    hs = HyprlandSocket()
    mode = config.get('modes').get(mode)

    for monitor in mode.get('schema'):
        m = allMonitors.get(monitor)
        res = hs.sendMessage(f"keyword monitor {monitor}, {m["mode"]}, {m["pos"]}, 1")
        print(f"Monitor enabled {monitor} response: {res}")
        allMonitors.pop(monitor)
    
    for monitor in allMonitors:
        res = hs.sendMessage(f"keyword monitor {monitor}, disabled")
        print(f"Monitor disabled {monitor} response: {res}")

    for command in mode.get('exec'):
        res = subprocess.Popen(command, shell=True, preexec_fn=os.setpgrp)
    
def main():
    if len(sys.argv) != 2:
        print("Not enought arguments")
        exit(1)
    mode = sys.argv[1]
    changeMode(readconfig(), mode)

if __name__ == '__main__':
    main()

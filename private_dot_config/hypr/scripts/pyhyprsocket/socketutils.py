from .hyprlandsocket import HyprlandSocket

def getActiveMonitor():
    hyprsocket = HyprlandSocket()
    res = hyprsocket.sendMessage("monitors get")
    active = next((monitor for monitor in res if monitor.get("focused")), None)
    return active
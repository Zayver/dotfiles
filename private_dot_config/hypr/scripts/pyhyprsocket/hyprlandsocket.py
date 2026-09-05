import os
import logging
logging.basicConfig( format="{asctime} - {levelname} - {message}", style="{", datefmt="%Y-%m-%d %H:%M", level=logging.INFO)
import socket
import json

from typing import Union

class HyprlandSocket:
    def __init__(self):
        self.__getEnviron()

    def __getEnviron(self):
        try:
            instance = os.environ['HYPRLAND_INSTANCE_SIGNATURE']
            self.socket_path = f"{os.environ['XDG_RUNTIME_DIR']}/hypr/{instance}/.socket.sock"
        except KeyError as e:
            logging.critical("Not running hyprland or HYPRLAND_INSTANCE_SIGNATURE not set")
            raise AssertionError("Not running hyprland or HYPRLAND_INSTANCE_SIGNATURE not set")
    
    def sendMessage(self, message: str) -> Union[dict, list[dict], str]:
        s = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
        try:
            s.connect(self.socket_path)
            message = f"-j/{message}"
            s.sendall(message.encode('utf-8'))

            buffer = bytearray()
            while True:
                data = s.recv(4096)
                if not data:
                    break
                buffer.extend(data)

            try:
                return json.loads(buffer)
            except json.JSONDecodeError:
                return buffer.decode()
                
        except socket.error as e:
            logging.error("Error on socket: %e", e.message)
        finally:
            s.close()
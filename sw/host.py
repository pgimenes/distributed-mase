import time
import socket
import numpy as np

UDP_IP = '192.168.1.128'
UDP_PORT = 1234
s = socket.socket(socket.AF_INET,socket.SOCK_DGRAM, 0)

while 1:
    roll = np.random.randint(0, 255, size=10)
    print("tx_data:",roll)

    roll=roll.astype(dtype='B').tobytes()

    begin= time.time()
    s.sendto(roll, (UDP_IP, UDP_PORT))
    data, address = s.recvfrom(4096)
    end = time.time()

    diff = (end - begin)*1000

    print("rx_data",np.frombuffer(data,dtype='B').astype(int),"time:",diff)

    break
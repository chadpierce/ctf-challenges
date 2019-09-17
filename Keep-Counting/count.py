from socket import socket

clientsocket = socket()
clientsocket.connect(('challs.rfdsec.org', 12345))

while True:
    data = clientsocket.recv(1024).decode()  # get data from server and decode from 'bytes' type
    print(data)
    if not "enter the next number:" in str(data):  # if you arent asked to enter number it must be the flag
        break
    data = data.splitlines()
    i = data[-2]  # get last number in list
    i = str(int(i) + 1)  # convert string to integer, add 1, convert back to string
    print("sending: " + i)
    i = (i + '\n').encode() # add newline and re-encode the data so it plays nice with the receiving socket
    data = clientsocket.send(i)
clientsocket.close()
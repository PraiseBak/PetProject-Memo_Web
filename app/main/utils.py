import socket

def get_covered_ip():
    ip = socket.gethostbyname(socket.gethostname())
    front_ip = ip.split('.')[0]
    back_ip = ip.split('.')[1]
    return front_ip + '.' + back_ip



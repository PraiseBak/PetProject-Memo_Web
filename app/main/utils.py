import socket

def get_covered_ip():
    ip = socket.gethostbyname(socket.gethostname())
    front_ip = ip.split('.')[0]
    back_ip = ip.split('.')[1]
    return front_ip + '.' + back_ip

def getPageQuery(page,limit):
    startIdx = page * limit - 30
    pageSQL = """
    SELECT *
    FROM board_content_table
    ORDER BY board_content_idx DESC
    limit %s,%s;
    """ % (str(startIdx),str(limit))
    return pageSQL

def getAutoIncrementQuery():
    table = "board_content_table"
    autoIncreSQL = """
    SELECT AUTO_INCREMENT
    FROM information_schema.tables
    WHERE table_name = '%s'
    AND table_schema = DATABASE();
    """ %(table)

    return autoIncreSQL



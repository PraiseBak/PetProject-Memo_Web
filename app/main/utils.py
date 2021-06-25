import socket

def get_covered_ip():
    ip = socket.gethostbyname(socket.gethostname())
    front_ip = ip.split('.')[0]
    back_ip = ip.split('.')[1]
    return front_ip + '.' + back_ip

def getPageQuery(page,limit,mode=None,content=""):
    startIdx = page * limit - 30
    startIdx = max(startIdx,0)
    modeAndValueSQL =""
    
    if mode != None and content != "":
        if mode == "write_user_name":
            modeAndValueSQL = """WHERE %s = '%s'""" %(mode,content)
        else:
            modeAndValueSQL = """WHERE %s LIKE %s """ %(mode,'\'%%'+content+'%%\'')
    getCountSQL = """
    SELECT COUNT(write_user_name)
    FROM board_content_table
    %s
    ORDER BY board_content_idx DESC;
    """ % (modeAndValueSQL)

    pageSQL = """
    SELECT *
    FROM board_content_table
    %s
    ORDER BY board_content_idx DESC
    limit %s,%s;
    """ % (modeAndValueSQL,str(startIdx),str(limit))
    return pageSQL,getCountSQL

def getAutoIncrementQuery():
    table = "board_content_table"
    autoIncreSQL = """
    SELECT AUTO_INCREMENT
    FROM information_schema.tables
    WHERE table_name = '%s'
    AND table_schema = DATABASE();
    """ %(table)

    return autoIncreSQL



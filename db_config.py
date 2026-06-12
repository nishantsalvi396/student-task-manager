import mysql.connector

def get_database_connection():

    connection = mysql.connector.connect(
        host="gateway01.ap-southeast-1.prod.aws.tidbcloud.com",
        user="3ECPv9bRuy8XxSa.root",
        password="QaZogTGI1k1ATUlI",
        database="student_task_manager",
        port=4000
    )
    return connection
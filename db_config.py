import mysql.connector

def get_database_connection():

    connection = mysql.connector.connect(
        host="gateway01.ap-southeast-1.prod.aws.tidbcloud.com",
        user="2MVGo7Mw7RniPYU.root",
        password="TwbpiQ3a5HWBZB7z",
        database="student_task_manager",
        port=4000
    )
    return connection
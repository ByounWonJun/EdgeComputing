#include <stdio.h>
#include <stdlib.h>

#include <mysql/mysql.h>

void main(){
	MYSQL *conn;
	MYSQL_RES *res;
	MYSQL_ROW row;

	char *server = "localhost";
	char *uer = "root";
	char *password = "78590q";
	char *database = "new_tracking"

	if(conn=mysql_init((MYSQL*)!=NULL)){
		printf("init fail\n");
		return 1;
	}

	print("mysql_init sucsess.\n");
	
	if(mysql_real_connect(conn,server,user,password,NULL,3306,NULL,0)){
		printf("connect error.\n");
		return 1;
	}

	print("mysql_real_connect sucsess.\n");

	if(mysql_select_db(conn,datasae)!=0){
		mysql_close(conn);
		printf("select_db fail.\n");
		return 1;
	}
	printf("select db sucess.\n");

	if(mysql_query(conn,"select* from new_tracking.new_table")){
		printf("query fail\n");
		return 1;
	}

	printf("query fail\n");
}
/**
 * 
 */
var $bind = {};
 
function init(request) {
	 $bind.listtable = [
     {"col1":"order01", "col2":"pr1", "col3":"2021/1~2021/6","col4":"○○がんプロジェクト","col5":"本受注","col6":"DM1","col7":"2,500,000","col8":"当月売上確定済"},
     {"col1":"order02", "col2":"pr1", "col3":"2021/1~2021/6","col4":"○○がんプロジェクト","col5":"本受注","col6":"DM1","col7":"500,000","col8":""},
     {"col1":"order01", "col2":"pr2",   "col3":"2020/11~2021/3","col4":"★★プロジェクト","col5":"本受注","col6":"DM1","col7":"3,500,000","col8":""},
     {"col1":"order01", "col2":"pr3", "col3":"2020/10~2021/6","col4":"△△がんプロジェクト","col5":"本受注","col6":"DM1","col7":"400,000","col8":""},
     {"col1":"order01", "col2":"pr4", "col3":"2020/4~2020/12","col4":"□□がんプロジェクト","col5":"受注終了","col6":"DM2","col7":"1,200,000","col8":""},
 ];
	 $bind.data = "1,2,3,4,5,6,7,8";
	 getdata();
	 Debug.console("11111");
}


function getdata() {
	Debug.console("2222");
	var database = new TenantDatabase();
	var result = database.execute("select * from imm_user");
	Debug.console(result);
	Debug.console("3333");

}

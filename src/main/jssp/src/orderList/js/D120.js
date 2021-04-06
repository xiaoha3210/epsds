/**
 * 
 */
var $bind = {};

var yearList = [
    {
        label: "",
        value: "0",
        selected: true
    },
    {
        label: "2021",
        value: "2021"
    },
    {
        label: "2022",
        value: "2022"
    },
    {
        label: "2023",
        value: "2023"
    },
    {
        label: "2024",
        value: "2024"
    },
    {
        label: "2025",
        value: "2025"
    },
    {
        label: "2026",
        value: "2026"
    },
    {
        label: "2027",
        value: "2027"
    },
    {
        label: "2028",
        value: "2028"
    },
    {
        label: "2029",
        value: "2029"
    },
    {
        label: "2030",
        value: "2030"
    }
];

var monthList = [
    {
        label: "",
        value: "0",
        selected: true
    },
    {
        label: "01",
        value: "01"
    },
    {
        label: "02",
        value: "02"
    },
    {
        label: "03",
        value: "03"
    },
    {
        label: "04",
        value: "04"
    },
    {
        label: "05",
        value: "05"
    },
    {
        label: "06",
        value: "06"
    },
    {
        label: "07",
        value: "07"
    },
    {
        label: "08",
        value: "08"
    },
    {
        label: "09",
        value: "09"
    },
    {
        label: "10",
        value: "10"
    },
    {
        label: "11",
        value: "11"
    },
    {
        label: "12",
        value: "12"
    }
];
 
function init(request) {
	 $bind.listtable = [
     {"col1":"order01", "col2":"pr1", "col3":"2021/1~2021/6","col4":"○○がんプロジェクト","col5":"本受注","col6":"DM1","col7":"2,500,000","col8":"当月売上確定済"},
     {"col1":"order02", "col2":"pr1", "col3":"2021/1~2021/6","col4":"○○がんプロジェクト","col5":"本受注","col6":"DM1","col7":"500,000","col8":""},
     {"col1":"order01", "col2":"pr2",   "col3":"2020/11~2021/3","col4":"★★プロジェクト","col5":"本受注","col6":"DM1","col7":"3,500,000","col8":""},
     {"col1":"order01", "col2":"pr3", "col3":"2020/10~2021/6","col4":"△△がんプロジェクト","col5":"本受注","col6":"DM1","col7":"400,000","col8":""},
     {"col1":"order01", "col2":"pr4", "col3":"2020/4~2020/12","col4":"□□がんプロジェクト","col5":"受注終了","col6":"DM2","col7":"1,200,000","col8":""},
 ];
	 $bind.data = "0,1,2,3,4,5,6,7,8";
	 
	 Debug.console("11111");
}


function getdata() {
	Debug.console("2222");
	var database = new TenantDatabase();
	var result = database.execute("select * from imm_user");
	Debug.console(result);
	Debug.console("3333");

}

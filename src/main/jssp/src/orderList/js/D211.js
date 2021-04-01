/**
 * 
 */
var $bind = {};
 
function init(request) {
	 $bind.listtable = [
     {"col1":"1001", "col2":"明細1", "col3":"なし","col4":"200,000","col6":'<input type="radio" value="1" name="radio1" onchange="func1()"> あり <input type="radio" value="2" name="radio1" onchange="func1()"> なし'},
     {"col1":"1002", "col2":"明細2", "col3":"なし","col4":"350,000","col6":'<input type="radio" value="1" name="radio2" onchange="func1()"> あり <input type="radio" value="2" name="radio2" onchange="func1()"> なし'},
     {"col1":"1003", "col2":"明細3", "col3":'なし',"col4":"840,000","col6":'<input type="radio" value="1" name="radio3" onchange="func1()"> あり <input type="radio" value="2" name="radio3" onchange="func1()"> なし'},
     {"col1":"1004", "col2":"明細4", "col3":'<a href="./orderList/js/D212?4">あり</a>',"col4":"100,000","col6":'<input type="radio" value="1" name="radio4" onchange="func1()"> あり <input type="radio" value="2" name="radio4" onchange="func1()"> なし'},
 ];
}


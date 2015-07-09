
<!--菜单栏高亮-->
<script type="text/javascript">menu_active="010"</script>

<h6>操作符表</h6>

<p>注意：使用组合操作符时，单个符号必须紧挨，不能有空格；函数调用时，函数名与左圆括号必须紧挨，不能有空格；</p>

<p>符号说明及使用示例：</p>

<style>
	table tr td:first-child{
		font-size: 18px !important;
	}
	table tr td{
		padding: 10px 14px !important;
	}
</style>
<table>
	<tr>
		<th>符号</th>
		<th>名称</td>
		<th>使用说明</td>
		<th>使用示例</th>
	</tr>
	<tr><td>#</td><td>井号</td><td>单行注释</td><td><em># 注释</em></td></tr>
	<tr><td>#--</td><td>组合</td><td>多行注释（块注释），以 '#--' 开始 '--#' 结束</td><td><em>#-- 块注释 --#</em></td></tr>
	<tr><td>:</td><td>冒号</td><td>变量赋值</td><td>num : 123</td></tr>
	<tr><td>:</td><td>冒号</td><td>变量赋值</td><td>num : 123</td></tr>
	<tr><td>::</td><td>双冒号</td><td>向上查找变量赋值</td><td>count :: 56.9</td></tr>
	<tr><td>.</td><td>点号</td><td>成员访问（模块、类）</td><td>fs.read(...)</td></tr>
	<tr><td>' '</td><td>单引号</td><td>字符串定义</td><td>name : 'Def'</td></tr>
	<tr><td>" "</td><td>双引号</td><td>字符串定义</td><td>"A Programming Language"</td>
	<tr><td>,</td><td>逗号</td><td>语句分割（可选）</td><td>list : (1 2 ,-3)</td></tr>
	<tr><td>;</td><td>分号</td><td>结构结束标记</td><td>if n>1<br/>　print('true')<br/>;</td></tr>

	</tr><tr><td>( )</td><td>圆括号</td><td>列表定义、优先级、函数调用</td><td>list : (1 2 3) <em># 列表定义</em><br/>(1+2)*3 <em># 优先级</em><br/>list : (9,) <em># 单个元素列表定义</em><br/>func(a b) <em># 函数调用</em></td></tr>
	</tr><tr><td>[ ]</td><td>方括号</td><td>字典定义、容器访问（列表、字典、代码块）</td><td>info : ['name' "Def" 'year' 2015] <em># 字典定义</em><br/>info['name'] <em># 字典项访问</em><br/>nums : (1 2 3)<br/>nums[1] <em># 列表下标访问（下标从1开始）</em></td></tr>
	</tr><tr><td>{ }</td><td>花括号</td><td>块定义、处理器调用</td><td>block : { n : n+1 print(n) } <em># 代码块定义</em><br/>foreach{ info k v ... } <em># 处理器调用</em></td></tr>

	</tr><tr><td>+</td><td>加号</td><td>加法运算</td><td>1 + 1 <em># 2</em></td></tr>
	</tr><tr><td>-</td><td>减号</td><td>减法运算</td><td>10 - 5 <em># 5</em></td></tr>
	</tr><tr><td>*</td><td>星号</td><td>乘法运算</td><td>2 * 3 <em># 6</em></td></tr>
	</tr><tr><td>/</td><td>正斜杠</td><td>除法运算</td><td>12 / 4 <em># 3</em></td></tr>

	</tr><tr><td>=</td><td>等号</td><td>相等判断</td><td>n : 1<br/>print(n=1) <em># true</em></td></tr>
	</tr><tr><td>></td><td>右尖括号</td><td>大于判断</td><td>n : 2<br/>print( n > 1 ) <em># true</em></td></tr>
	</tr><tr><td><</td><td>左尖括号</td><td>小于判断</td><td>n : 2<br/>print( n < 1 ) <em># false</em></td></tr>
	</tr><tr><td>>=</td><td>组合</td><td>大于等于判断</td><td>n : 1<br/>print( n >= 1 ) <em># true</em></td></tr>
	</tr><tr><td><=</td><td>组合</td><td>小于等于判断</td><td>n : 1<br/>print( n <= 1 ) <em># true</em></td></tr>
	</tr><tr><td>~=</td><td>组合</td><td>不等于判断</td><td>n : 1<br/>print( n ~= 1 ) <em># false</em></td></tr>

	</tr><tr><td>~</td><td>波浪号</td><td>条件取反</td><td>n : 1<br/>print( ~n=1 ) <em># false</em></td></tr>

	</tr><tr><td>&</td><td>and 符</td><td>逻辑运算 “与”</td><td>n : 1<br/>print( n&1 ) <em># true</em></td></tr>
	</tr><tr><td>|</td><td>or 符</td><td>逻辑运算 “或”（返回第一个为判断‘真’的值，忽略（不执行）后面的代码）</td><td>n : 1<br/>print( n|0 ) <em># 1</em></td></tr>
</table>

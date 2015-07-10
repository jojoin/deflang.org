
<!--菜单栏高亮-->
<script type="text/javascript">menu_active="020"</script>

<h5>关键字</h5>

<p>注意：关键字不能作为程序的变量名、函数名、处理器名或类成员名。</p>

<p>说明及使用示例：</p>
<style>
	table tr td:first-child{
		font-size: 18px !important;
		color: #007FD2 !important;
	}
	table tr td{
		padding: 10px 14px !important;
	}
</style>
<table>
	<tr>
		<th>关键字</th>
		<th>使用说明</td>
		<th>使用示例</td>
	</tr>

	<tr><td>none</td><td>空变量字面值</td><td>val : none</td></tr>
	<tr><td>true</td><td>布尔值 字面值 真</td><td>val : true</td></tr>
	<tr><td>false</td><td>布尔值 字面值 假</td><td>val : false</td></tr>

	<tr><td>def</td><td>定义处理器</td><td>def proc{a b}<br/>　v : evaluat(a)<br/>　assign(b v)<br/>;</td></tr>
	<tr><td>defun</td><td>定义函数</td><td>def func(a b)<br/>　a + b<br/>;</td></tr>
	<tr><td>class</td><td>定义类</td><td>保留</td></tr>

	<tr><td>return</td><td>函数或处理器返回值</td><td>def func(a b)<br/>　if a>b<br/>　　return a<br/>　;<br/>　b<br/>;</td></tr>
	<tr><td>continue</td><td>while 循环继续</td><td>while n>0<br/>　if a>b<br/>　　continue<br/>　;<br/>　b<br/>;</td></tr>
	<tr><td>break</td><td>while 循环跳出</td><td>def func(a b)<br/>　if n=5<br/>　　break<br/>　;<br/>　b : b + 1<br/>;</td></tr>

	<tr><td>if , elif, else</td><td>条件分支结构</td><td>if num=1<br/>　print('first')<br/>elif num=2<br/>　print('second')<br/>else<br/>　print('others')<br/>;</td></tr>
	<tr><td>while</td><td>循环结构</td><td>n : 10<br/>while n>0<br/>　print(n)<br/>　n : n - 1<br/>;</td></tr>

	<tr><td>for</td><td>容器遍历</td><td>con : (1 2 3)<br/>for con k v<br/>　print(v)<br/>;</td></tr>

	<tr><td>import</td><td>导入模块</td><td>import "fs" <em># 导入文件系统模块</em><br/>um : import "user_mod.d" <em># 导入用户自定义模块并重命名</em></td></tr>
</table>

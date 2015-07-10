<!--菜单栏高亮-->
<script type="text/javascript">menu_active="051"</script>

<h5>系统函数</h5>

<p>系统函数是 Def 语言内置操作，由 C++ 写成编译至语言内核，是 Def 语言的一部分。</p>

<p>注意：如果定义了与系统函数同名的函数，那么系统函数将被覆盖！</p>

<h6>print(), printl(), printr(), printlr()</h6>

<p>向控制台输出变量的内容。printl 调用时将在末尾添加一个换行符。printr 则会打印变量的字面量（用""引号包裹字符串，并递归打印容器类型）。而 printlr() 则是两者的结合。</p>

<p>可以一次传入多个变量，将自动打印每一个参数。</p>

<h6>type()</h6>

<p>以字符串形式返回变量的类型。如整数：'int'，字符串：'string' 等。</p>

<h6>time()</h6>

<p>获取当前的时间戳。返回以秒为单位的 int 类型。</p>

<h6>eval()</h6>

<p>在当前环境中执行 node 节点或 block 代码块。</p>

<code class="block"><span># eval 函数</span>
blockcode : {
	n : n + <b>100</b>
	<i>print</i>(n)
}
n : <b>1</b>
<span># 执行单个节点</span>
<i>eval</i>(blockcode[<b>1</b>])
<span># 执行代码块</span>
<i>eval</i>(blockcode)
<span># 打印：201</span>
</code>
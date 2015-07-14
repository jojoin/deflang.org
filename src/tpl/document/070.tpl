<!--菜单栏高亮-->
<script type="text/javascript">menu_active="070"</script>

<h5>处理器</h5>

<p>定义方式以关键字<code>def</code>开始，分号<code>;</code>结束。</p>

<p>Def 处理器是一个全新的概念，定义方式和使用方法与 <a href="/document/000.html">函数</a> 类似。不同的是，函数是用来处理数据的，而处理器是用来"处理代码"的。对，你可以像处理数据一样处理代码：获取代码的类型、调用代码取值、或给代码赋值等操作！</p>

<p>处理器与 Lisp 的宏一样，使用它，你可以方便地元编程、扩展语言的行为、定义 DSL 、在运行期随意改变代码的行为。真正做到数据及代码！</p>

<p>为了展示处理器的强大功能，我们尝试编写一些简单的语言扩展。</p>

<p>虽然 Def 已经原生支持 for 循环，但是我们还是可以自己编写一个数组的遍历处理器：</p>

<code class="block"><span># 定义数组遍历处理器</span>
<dfn>def</dfn> foreach{con k v}
	arr : <i>evaluat</i>(con)  <span># 执行取值</span>
	ii  : <i>size</i>(arr)
	i   : <b>1</b>
	<dfn>while</dfn> i<=ii
		<i>assign</i>(k i)  <span># 执行赋值</span>
		<i>assign</i>(v arr[i])
		j  : <b>4</b>
		jj : <i>size</i>(<em>_argv_</em>)
		<dfn>while</dfn> j<=jj
			<i>evaluat</i>(<em>_argv_</em>[j])  <span># 执行循环体</span>
			j : j + <b>1</b>
		;
		i : i + <b>1</b>
	;
;

<span># 使用数组遍历处理器</span>
list : (<b>1 2 3 4 5 6</b>)
total : <b>0</b>
foreach{ list k v
	<i>printl</i>(v)  <span># 打印列表的每一项</span>
	total : total + v  <span># 求和</span>
	<span># 此处可任意增加处理语句</span>
}
<i>print</i>(total)  <span>#求和结果： 21</span></code>


<p>Def 处理器自定义的 switch case 结构，支持 end 关键字（类似 C 中的 break）：</p>

<code class="block"><span># 自定义的 switch case 结构</span>
<dfn>def</dfn> myswitch{}
	base : <i>none</i>
	hd : <i>true</i>
	getcase : <i>false</i>
	k : <b>0</b>
	len : <i>size</i>(<em>_argv_</em>)
	<dfn>while</dfn> k < len
		k : k + <b>1</b>
		v : <em>_argv_</em>[k]
		<dfn>if</dfn> 1=k
			base : <i>evaluat</i>( v ) <span># 判断条件</span>
			<dfn>ctn</dfn>
		;
		<span># printl(v.type())</span>
		isbreak : <u>'variable'</u>=v.type() & <u>'end'</u>=v.name()
		<dfn>if</dfn> getcase
			<dfn>if</dfn> isbreak
				<dfn>brk</dfn>
			;
			<i>evaluat</i>( v ) <span># 执行case体</span>
			<dfn>ctn</dfn>
		;
		<dfn>if</dfn> hd
			cond : <i>evaluat</i>( v ) <span># case 条件</span>
			<dfn>if</dfn> base=cond <span># case 条件为真</span>
				getcase : <i>true</i>
			;
			hd : <i>false</i>
		;
		<dfn>if</dfn> isbreak
			hd : <i>true</i>
		;
	;
;

<span># 调用自定义的 switch 语句</span>
k : <u>'b'</u>
myswitch{ k
	<u>'a'</u>
		<i>printl</i>(<u>'k is "a"'</u>)
		<span># 此处添加行为 ...</span>
	end
	<u>'b'</u>
		<i>printl</i>(<u>'k is "b"'</u>)
		<span># 此处添加行为 ...</span>
	end
}
<span># 结果：k is "b"</span></code>



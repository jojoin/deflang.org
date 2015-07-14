<!--菜单栏高亮-->
<script type="text/javascript">menu_active="041"</script>

<h5>if 条件分支</h5>

<p>Def 的 if 语句与 C 或 Python 的 if 语句类似，包含三个关键字<code>if</code>、<code>elif</code>和<code>else</code>，并用分号<code>;</code>结束。</p>

<p>Def 的 if 语句是非常灵活的，可以任意组合使用，甚至定义一个空if语句（虽然并没有什么作用）。下面将通过一些可以运行的示例来说明：</p>

<p>空 if</p>
<code class="block"><dfn>if</dfn> ;</code>


<p>单一条件 if</p>
<code class="block"><dfn>if</dfn> n>1
	<i>print</i>(n)
	v : <i>true</i>
;
</code>

<p>包含 else</p>
<code class="block"><dfn>if</dfn> n>1
	v : <i>true</i>
<dfn>else</dfn>
	v : <i>false</i>
;</code>

<p>多条件分支</p>
<code class="block"><dfn>if</dfn> n=1
	v : <u>'1'</u>
<dfn>elif</dfn> n=2
	v : <u>'2'</u>
<dfn>elif</dfn> n=3
	v : <u>'3'</u>
<dfn>else</dfn>
	v : <u>'0'</u>
;</code>

<p>if 和 elif 关键字后面紧挨的第一条语句被当做分支条件，其后的所有语句作为分支体被执行。</p>

<p>注意：换行和缩进不是必须的，但这样做有利于结构清晰方便阅读代码。</p>
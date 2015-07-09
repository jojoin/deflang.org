<!--菜单栏高亮-->
<script type="text/javascript">menu_active="043"</script>

<h6>for 遍历结构</h6>

<p>关键字<code>for</code>开始，分号<code>;</code>结束。</p>

<p>Def 的 for 遍历结构十分强大，可遍历整数、字符串、列表、块、字典、模块等结构。请阅读下面的示例：</p>


<p>遍历整数：</p>
<code class="block">stp : <b>3</b>  <span># 步进（为 1 时相当于循环执行 10 次）</span>
<i>for</i> <b>10</b> stp num
	<i>print</i>(num)
;
<span># 结果：1,4,7,10</span>
</code>


<p>遍历字符串：</p>
<code class="block">sss : <u>"123 abc xyz"</u>
<i>for</i> sss <b>''</b> s  <span># 的二个参数为分隔符，为空字符串时依次遍历每一个字符</span>
	<i>printl</i>(s)
;
<span># 结果：1,2,3, ,a,b,c, ,x,y,z</span>
<span># 以空格为分隔符</span>
<i>for</i> sss <b>' '</b> s
	<i>print</i>(s)
;
<span># 结果：123,abc,xyz</span></code>


<p>遍历列表：</p>
<code class="block">con : (<b>1 2 3</b>)
<i>for</i> con k v
	<i>print</i>(v)
;
<span># 结果：1,2,3</span></code>


<p>遍历字典：</p>
<code class="block">con : [ <u>'name'</u> <u>"Def"</u> , <u>'year'</u> <b>2015</b>]
<i>for</i> con k v
	<i>print</i>(v)
;
<span># 结果：Def,2015</span></code>

<p>同样的，for 结构也可以用来遍历 module 模块、block 块等支持遍历的结构。</p>
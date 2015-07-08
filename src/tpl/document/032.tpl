
<!--菜单栏高亮-->
<script type="text/javascript">menu_active="032"</script>

<h6>高级类型变量</h6>

<p>3 种高级类型：func 函数、proc 处理器、node 节点。所有高级类型同基本类型一样，可作为函数参数、返回值或通过模块导出使用。</p>

<br/>
<h6>func 函数</h6>

<p>关键字 defun 。<a href="/document/060.html">点击这里</a>查看函数定义及调用详情。</p>

<br/>
<h6>proc 处理器</h6>

<p>关键字 def 。<a href="/document/050.html">点击这里</a>查看处理器定义及调用详情。</p>

<br/>
<h6>node 节点</h6>

<p>node 对象是一种比较特殊的对象，通过它可以像处理普通数据一样处理程序代码。用于 block 块结构容器对象下标访问返回值，和调用<a href="/document/050.html">处理器</a>所传参数。</p>

<code class="block">
<span># node 对象的使用</span><br/>
code : {<br/>
　　k<br/>
　　<i>print</i>(k)<br/>
　　k : k + <b>1</b><br/>
}<br/>
k : 1<br/>
<i>eval</i>(code[3])<br/>
<i>print</i>(k)　<span># 2</span>
</code>

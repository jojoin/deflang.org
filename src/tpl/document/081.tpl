<!--菜单栏高亮-->
<script type="text/javascript">menu_active="081"</script>

<h5>全局变量</h5>

<p>除了<a href="/document/051.html">系统函数</a>，Def 不支持自定义整个程序全局作用域可见的变量，而只能定义"文件作用域"的变量。

<p>虽然可以在当前函数作用域中直接访问顶层文件作用域中的变量，但赋值操作符<code>:</code>始终只是在当前作用域创建或修改变量。</p>

<p>当需要在函数中操作文件顶级变量时，则需要用到<code>::</code>向上查询赋值（两个紧挨的冒号）。</p>

<code class="block"><span># 向上查询赋值</span>
count : <b>1</b>
<span># 定义操作顶层变量的函数</span>
<dfn>defun</dfn> add(n)
    <i>print</i>(count)  <span># 可直接访问顶层变量</span>
    count :: count + n  <span># 向上查询赋值</span>
    <i>print</i>(count)
    count : <b>999</b>  <span># 在函数本地作用域中创建一个名为 count 的变量并赋值，与上层变量无关。</span>
;
<span># 执行</span>
add(<b>10</b>) <span># 打印：1 , 11</span>
<i>print</i>(count) <span># 11</span>
</code>
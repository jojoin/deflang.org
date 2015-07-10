<!--菜单栏高亮-->
<script type="text/javascript">menu_active="050"</script>

<h5>函数</h5>

<p>Def 的函数设计参考 Python 的实现，可传入任意个数参数、包含参数默认值、按名称传参等高级特征。</p>

<p>定义格式：<code>defun</code> + <code><函数名>(<参数> ...)</code> + 函数体 + <code>;</code></p>

<h6>返回值</h6>

<p>除了通过 return 关键字返回值，默认将函数体中最后一条语句的值，作为函数的返回值。</p>

<code class="block"><span># 默认返回值</span>
<div>defun</div> add(a b)
	a + b  <span># 无需 return ，返回a+b</span>
;
<span># return 语句</span>
<div>defun</div> div(a b)
	<div>if</div> b=<b>0</b>
		<div>return</div> <i>false</i>  <span># 除零错误</span>
	;
	a / b  <span># 无需 return ，返回 a 除 b</span>
;
</code>

<h6>任意数量参数</h6>

<p>虽然可以为函数指定特定数量的参数，但在使用时可以传入任意个数和类型的参数，这让函数具备强大的灵活性。</p>

<p>除了指定名字形式参数，在使用时，函数拥有一个参数列表变量：<code>_argv_</code>，按循序保存了所有传入的参数：</p>

<code class="block"><span># 任意数量的参数</span>
<div>defun</div> test(a b)
	<i>print</i>(a)
	<i>print</i>(b)
	<i>print</i>(<em>_argv_</em>)  <span># _argv_为全部实参列表</span>
;
<span># 调用函数，传入任意个数参数</span>
test(1  2.5  'def')
<span># 打印结果：1 , 2.5 , (1  2.5  'def')</span>
</code>

<h6>参数默认值</h6>

<p>为函数参数指定默认值，调用时如果未传入则使用默认值，如果未指定默认值且调用未传入时，则抛出参数未指定错误，终止脚本。</p>

<p>注意：默认参数必须从右向左顺序指定，不能跳过。</p>

<code class="block"><span># 指定默认参数</span>
<div>defun</div> test(a b c:<b>0</b>) <span>#参数 c 默认为 0</span>
	<i>print</i>(a)
	<i>print</i>(b)
	<i>print</i>(c)
;
<span># 调用函数，传入任意个数参数</span>
test(<b>1 2 3 4</b>)
<span># 打印结果：1 , 2 , 3</span>
<span># 使用默认值</span>
test(<b>1 2</b>)
<span># 打印结果：1 , 2 , 0</span>
test(<b>1</b>)  <span># 错误：参数 b 必须传入</span>
</code>

<h6>按名称传参</h6>

<p>支持按形式参数名称方式传参，按名传参时可按任意次序传递。</p>

<code class="block"><span># 按名称传参</span>
<div>defun</div> test(a b c:<b>0</b>)
	<i>print</i>(a)
	<i>print</i>(b)
	<i>print</i>(c)
	<i>print</i>(<em>_argv_</em>)
;
test(<b>1 2 3 4</b>)  <span># 打印结果：1 , 2 , 3 , (1 2 3 4)</span>
test(<b>1</b> b:<b>2</b>)  <span># 打印结果：1 , 2 , 0 , (1 2)</span>
test(c:<b>9</b> a:<b>7</b> b:<b>8</b>)  <span>#任意次序传参，打印结果：7 , 8 , 9 , (9 7 8)</span>
</code>


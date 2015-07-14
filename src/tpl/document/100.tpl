<!--菜单栏高亮-->
<script type="text/javascript">menu_active="100"</script>

<h5>异常</h5>

<p>Def 支持异常中断，你可以在代码里 throw 抛出任何类型的对象，并在执行上层用 try catch 捕获。</p>

<p>示例：</p>

<code class="block"><span># 异常处理</span>
<dfn>defun</dfn> run()
    <i>printl</i>(<u>'function run'</u>)
    <dfn>throw</dfn> <u>"I'm an Exception"</u> <span># 抛出异常（任意对象）</span>
;
<span># 执行代码，捕获异常</span>
<dfn>try</dfn>
    run()
<dfn>catch</dfn> e <span># 成功捕获</span>
    <i>print</i>(<u>'catch: '</u> e)
<dfn>else</dfn> <span># 代码成功执行，未捕获到异常时执行的代码（可省略）</span>
    <i>printl</i>(<u>'nothing'</u>)
;
</code>
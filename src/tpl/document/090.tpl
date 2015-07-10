<!--菜单栏高亮-->
<script type="text/javascript">menu_active="090"</script>

<h5>系统模块</h5>

<p>系统模块是 Def 语言内置操作，由 C++ 写成编译至语言内核，是 Def 语言的一部分。</p>

<p>同样采用 import 语句加载并使用：</p>

<code class="block"><span># 加载并使用自带的文件系统模块</span>
<div>import</div> <u>"fs"</u>
<span># 读取文件</span>
content : fs.read(<u>'test.txt'</u>)
<i>print</i>( content ) <span># 打印</span>
</code>

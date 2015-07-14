<!--菜单栏高亮-->
<script type="text/javascript">menu_active="080"</script>

<h5>module 模块</h5>

<p>模块化是一个语言必不可少的部分。Def 的模块即为一个独立的文件，通过 import 语句加载。</p>

<code class="block"><span># 模块加载</span>
<dfn>import</dfn> <u>"fs"</u>  <span># 加载文件系统模块（系统自带）</span>
<dfn>import</dfn> <u>"mymod.d"</u>  <span># 加载自定义模块</span>
<dfn>import</dfn> <u>"dir/mymod.d"</u>  <span># 加载其它目录下的模块</span>
<dfn>import</dfn> <u>"../mymod.d"</u>  <span># 加载上级目录模块</span>
</code>

<p>Def 的模块一旦首次加载变驻留在内存中直到程序退出。重复加载模块会指向内存已有中的模块变量。</p>

<p>import 语句会自动在当前作用域中添加一个与模块名称（文件名）相同的变量为模块变量。你也可以将 import 语句赋值给变量来重命名。</p>

<code class="block"><dfn>import</dfn> <u>"fs"</u>
<span># 自动添加一个名为 fs 的变量</span>
fs.read(<u>'test.txt'</u>)  <span># 读取文件</span>
<span># 为加载的模块取别名</span>
mod : <dfn>import</dfn> <u>"mymod.d"</u>
<span># mod 与 mymod 都可用</span>
mod.func()  <span># 可用</span>
mymod.func()  <span># 可用</span>
</code>

<h6>模块搜索</h6>

<p>加载模块时，Def 会首先判断是否为系统模块，然后按一定的规则搜索文件和目录，匹配第一个找到的文件，否则抛出错误。</p>

<code class="block"><span># 加载一个模块</span>
<dfn>import</dfn> <u>"fs.d"</u>
</code>

<p>当加载模块 <code>fs.d</code> 时，搜索优先级如下：</p>

<p>　　1. 判断 fs.d 是否为系统模块（fs是而fs.d不是）<br/>
　　2. 搜索 <code>./fs.d</code><br/>
　　3. 搜索 <code>./fs/index.d</code><br/>
　　4. 搜索 <code>./fs/fs.d</code><br/>
</p>

<p>如果找不到匹配的文件，则抛出错误。</p>

<h6>模块变量</h6>

<p>并不需要为导出的模块变量做特殊指定，Def 默认将模块文件中的全局变量留在内存中供使用。例如新建 math.d 并保存：</p>

<code class="block"><span># math 模块</span>
<span># 模块变量</span>
PI : 3.1415926
<span># 模块函数</span>
<dfn>defun</dfn> add(a b)
    a + b
;
</code>

<p>在另外一个文件中，即可以如此加载并使用这个模块：</p>

<code class="block"><span># 加载并使用 math.d 模块</span>
<dfn>import</dfn> <u>"./math.d"</u>
<span># 使用模块变量</span>
<i>print</i>( math.PI ) <span># 3.1415926</span>
<span># 使用模块函数</span>
<i>print</i>( math.add(<b>1 9</b>) ) <span># 10</span>
</code>

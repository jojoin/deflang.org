
<script type="text/javascript">nav_active="nav_getstart"</script>


<p>只需花费几分钟，便可轻松使用 Def !</p>

<p>接下来会有一个简单的教程。通过一些代码小例子，快速了解 Def 的语法。如果你具备 C++、Java、Python、JavaScript 或其它任何编程语言的经验，你会发现使用 Def 是如此的简单、便捷和符合直觉！</p>



<h5>§ 下载安装</h5>

<p>Def 通过虚拟机的方式解释运行代码。<a href="/download" target="_blank">点此下载</a>虚拟机，可选择直接下载对应平台的可执行文件，也可<a href="/download" target="_blank">下载源码</a>编译生成。</p>

<p>下面以 Windows 下为例（linux、OS X 环境下类似），下载或编译得到 def.exe 文件后双击它，会看到控制台出现欢迎和帮助信息：</p>

<p><img src="cmd.png" /></p>

<p>接着可输入提示可用的参数，执行相应的行为。例如输入 -c 打开交互式解释执行环境（REPL），输入代码并立即看到结果。</p>



<h5>§ Hello World !</h5>

<code class="block">
<i>print</i>(<u>"hello world !"</u>)　<span># 打印字符串</span>
</code>

<p>这就是 Def 的 hello world 程序：调用系统函数<code>print</code>向控制台输出内容。</p>

<p>你可以在交互式解释执行环境中输入这一行代码并立即看到结果，考虑到下面会有更多的代码示例用于测试练习，我们新建一个文件 hello.d 输入上面的代码并保存，然后在控制台输入<code>> def hello.d</code>执行保存的代码文件并得到结果。</p>




<h5>§ 简单示例</h5>

<p>如果你具备其它编程语言的使用经验，下面的例子将非常简单，并与其它脚本语言并没有本质的区别，只是需要注意某些符号的变化。下面给出的示例是完全可用的，你可以复制保存为文件并执行它。</p>

<code class="block">
<span>#--<br/>
　　块注释<br/>
--#<br/>
# 单行注释</span>
</code>
<code class="block">
num : <b>123</b>　<span># 整形变量赋值</span><br/>
nuf : <b>36.9</b>　<span># 浮点数赋值</span><br/>
name : <u>"Def Programming Language"</u>　<span># 字符串</span><br/>
author : <u>'杨捷'</u>　<span># 字符串</span><br/>
</code>

<code class="block">
<span># 可以包含任何类型的列表，使用空格分开（也可使用逗号 , 隔开，可避免歧义）</span><br/>
conli : (<b>1 2 </b>,<b>-3</b> <u>'a' 'b'</u> (<b>7 8 9</b>) name author)<br/>
<span># key value 字典（无需任何分隔符，单数位置作为键，双数位置为值）</span><br/>
condt : [<br/>
　　<u>'name'　"Def"</u><br/>
　　<u>'date'</u>　(<b>2015 3 16</b>)　<span># 嵌套</span><br/>
　　<u>'info'</u>　[　<span># value可包含任意类型</span><br/>
　　　　<u>'intro'　"A Programming Language"</u><br/>
　　　　<u>'author'　"yangjie"</u><br/>
　　]<br/>
]<br/>
<span># 容器访问</span><br/>
conli[<b>6</b>]　<span># 值 (7 8 9)，列表索引从 1 开始</span><br/>
condt[<u>'name'</u>]　<span># Def</span><br/>
condt[<u>'info'</u>][<u>'author'</u>]　<span># yangjie，多层访问</span><br/>
</code>

<code class="block">
<i>print</i>(num)　<span># 调用系统函数打印</span><br/>
<i>printl</i>(name)　<span># 打印并换行</span><br/>
<i>printr</i>(conli)　<span># 递归打印容器类型</span><br/>
<i>printlr</i>(condt)　<span># 递归打印容器并换行</span><br/>
</code>

<code class="block">
<span># 函数定义并调用</span><br/>
<div>defun</div> add(a b)　<span># 相加</span><br/>
　　a + b　<span># 无需 return，自动返回函数最后一个值</span><br/>
;　<span># 以分号结束</span><br/>
<span># 调用函数</span><br/>
result : add(1 9)　<span># 10</span><br/>
</code>
<p>注意：函数调用时函数名与括号之间不能有空格！<code>add (1 9)</code>错误！</p>
<p>从上面的示例可以看出，Def 与其它语言明显的区别是，精简了逗号或分号冒号等等一些格式化的字符，仅保留必须的符号，最大化降低使用者敲键盘的数次。</p>
<p>但这并不是 Def 最核心的价值。下面我们将会看到更强大的示例。</p>



<h5>§ 进阶示例</h5>

<p>Def 拥有强大的处理器语法，支持反射和元编程。如同 Lisp 的宏一样，可以用来扩展语言的内核，定义 Lambda 表达式(lambda expression)，像处理数据一样优雅的处理代码，让 Def 成为可编程的编程语言！</p>

<code class="block">
<span># 代码块结构</span><br/>
codeblock : {<br/>
　　num : num + <b>100</b><br/>
　　<i>print</i>(<u>"eval !"</u>)<br/>
　　a + b<br/>
}<br/>
</code>

<p>使用大括号将执行语句包含起来形成块结构，块结构并不会立即执行，而是像列表一样保存起来。在需要的时候再使用（执行）。</p>

<code class="block">
<span># 处理块结构</span><br/>
<i>eval</i>(codeblock[<b>2</b>])　<span># 执行代码块的第2条语句：print("eval !")</span><br/>
num : 11<br/>
<i>eval</i>(codeblock[<b>1</b>])　<span># 执行 num : num + 100</span><br/>
<i>print</i>(num)　<span># 111</span><br/>
a : <u>'def '</u><br/>
b : <u>'lang'</u><br/>
name : <i>eval</i>(codeblock)　<span># 执行整个代码块</span><br/>
<i>print</i>(num)　<span># 211</span><br/>
<i>print</i>(name)　<span># def lang</span><br/>
</code>

<p>下面我们通过建立一个名为 foreach 用于遍历数组的处理器，来了解一下 Def 强大的处理器语法（尽管 Def 已经有原生的容器遍历方式，类似的你还可以自己定义一个 switch case 语句！）。</p>

<code class="block">
<span># 定义数组遍历处理器</span><br/>
<div>def</div> foreach{con k v}<br/>
　　arr : <i>evaluat</i>(con)　<span># 执行取值</span><br/>
　　ii  : <i>size</i>(arr)<br/>
　　i   : <b>1</b><br/>
　　<div>while</div> i<=ii<br/>
　　　　<i>assign</i>(k i)　<span># 执行赋值</span><br/>
　　　　<i>assign</i>(v arr[i])<br/>
　　　　j  : <b>4</b><br/>
　　　　jj : <i>size</i>(<em>_argv_</em>)<br/>
　　　　<div>while</div> j<=jj<br/>
　　　　　　<i>evaluat</i>(<em>_argv_</em>[j])　<span># 执行循环体</span><br/>
　　　　　　j : j + <b>1</b><br/>
　　　　;<br/>
　　　　i : i + <b>1</b><br/>
　　;<br/>
;<br/>
</code>

<p>你可以像下面这样使用这个遍历处理器，替代其它语言中的回调函数或Lambda 表达式（虽然 Def 也支持）：</p>

<code class="block">
<span># 遍历列表</span><br/>
list : (<b>1 2 3 4 5 6</b>)<br/>
total : <b>0</b><br/>
foreach{ list k v<br/>
　　<i>printl</i>(v)　<span># 打印列表的每一项</span><br/>
　　total : total + v　<span># 求和</span><br/>
　　<span># 此处可任意增加处理语句</span><br/>
}<br/>
<i>print</i>(total)　<span>#求和结果： 21</span><br/>
</code>

<p>更多示例请查看 Def 语言的 <a href="https://github.com/yangjiePro/Def/tree/master/test" target="_blank">开发测试用例</a>，了解 Def 其它更多的高级特征。</p>


<br/>
<br/>
<br/>
<br/>
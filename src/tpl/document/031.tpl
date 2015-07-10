
<!--菜单栏高亮-->
<script type="text/javascript">menu_active="031"</script>

<h5>基本类型变量</h5>

<p>5 种基本类型：none 无、bool 布尔、int 整数、float 浮点数、string 字符串</p>

<h6>none 无</h6>

<p>‘无’是一个特殊的常量。可将 none 赋值给任何变量以释放其内存，和任何其他的数据类型比较永远返回 false。字典访问不存在的键名、列表访问下标超出最大值、欲读取的文件不存在等情况下，返回 none 值。</p>

<h6>bool 布尔</h6>

<p>布尔值有且仅有两个字面量：真 true、假 false。是进行条件判断的结果。也可随意赋值。</p>

<h6>int 整数</h6>

<p>十进制数即为其字面值。可直接书写用于变量赋值：<code>num : <b>123</b></code>，函数参数：<code>add(n <b>123</b>)</code>，以及列表下标：<code>list[<b>1</b>]</code>等。</p>

<h6>float 浮点数</h6>

<p>即通常所说的小数。字面量表示为 数字+点：<code><b>56.9</b></code>、<code><b>0.12</b></code>、<code><b>12.0</b></code>。其用法与整形值相似。</p>

<h6>string 字符串</h6>

<p>用单引号或双引号引用的任意长度的字符内容。空字符串：<code><u>''</u></code>或<code><u>""</u></code>，长度为 1 的字符串：<code><u>'a'</u></code>或<code><u>"x"</u></code>，包含空格引号或其它特殊字符的字符串<code><u>'word:"hi !"'</u></code>、<code><u>"say:'hello!' ！@#￥%~ +-*/"</u></code>，包含转义字符：<code><u>"he<b>\"</b>llo"</u></code>、<code><u>'it<b>\'</b>s yours'</u></code>，换行转义：<code><u>"line finished.<b>\n</b>newline !"</u></code>。</p>

<p>如下字符可用于转义：</p>

<table>
	<tr><td>\\</td><td>斜杠</td></tr>
	<tr><td>\'</td><td>单引号</td></tr>
	<tr><td>\"</td><td>双引号</td></tr>
	<tr><td>\n</td><td>换行</td></tr>
</table>
<!--
	\' // fall through
	case '"' :  // fall through
	case '\\': 
	return tok;
	case '0' : return '\0'; //NULL空字符
	case 'a' : return '\a'; //响铃
	case 'b' : return '\b'; //退格
	case 'f' : return '\f'; //换页
	case 'n' : return '\n'; //换行
	case 'r' : return '\r'; //回车
	case 't' : return '\t'; //水平制表
-->

<p>与其它语言不同的是，Def 的字符串字面量是可以直接换行而无需转义的，即下面的用法是合法的：</p>

<code class="block"><span># 包含换行的字符串</span>
str : <u>" 1. some...
2. some...
3. some..."</u>

<i>print</i>(str)</code>

<p>除了单引号和双引号包含的字符串，Def 还支持 3 个连续引号包裹的块字符串：</p>

<code class="block"><span># 块字符串</span>
bstr1 : 
<u>"""
on"e
tw'o
"""
</u>
bstr2 : <u>'''on"e
tw'o'''</u>
bstr3 : <u>"on<b>\"</b>e<b>\n</b>tw'o"</u>
<span># 上面 3 个字符串值完全相同</span></code>

<p>或许你已经看出来两点不同：1. 块字符串将不用转义；2. 块字符串会忽略开头与结尾的两个的换行符；</p>


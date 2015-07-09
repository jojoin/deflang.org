
<!--菜单栏高亮-->
<script type="text/javascript">menu_active="033"</script>

<h6>容器类型变量</h6>

<p>3 种容器类型：list 列表、dict 字典、block 块。所有高级类型同基本类型一样，可作为函数参数、返回值或通过模块导出使用。</p>

<br/>
<h6>list 列表</h6>

<p>列表是一种顺序储存结构，能够通过整数下标访问，支持在任意位置添加或删除元素，支持保存任何类型的变量（支持容器嵌套）。</p>

<code class="block"><span># list 列表的使用</span>
x : <b>1</b> , y : <u>'def'</u>
list : (<b>1 2 12.5</b> <u>'a' 'b'</u> (x y) )
list[] : <u>'deflang'</u>  <span># 末尾插入元素</span>
<i>print</i>(list[3])  <span># 12.5</span></code>

<p>注意：Def 列表的下标从 1 开始。</p>

<br/>
<h6>dict 字典</h6>

<p>字典是一种键值对数据结构，通过字符串的键访问元素，支持添加删除替换等操作。支持保存任何类型变量和容器嵌套。</p>

<code class="block"><span># dict 字典的使用</span>
dict : [
	<u>'name'</u>　<u>"Def"</u>
	<u>'year'</u>　<b>2015</b>
	<u>'num'</u>　(<b>1 3 9</b>)
	<u>'info'</u>　[
		<u>'author'</u>　<u>"yangjie"</u>
	]
]
dict[<u>'website'</u>] : <u>"www.def;lang.org"</u>  <span># 添加或替换项目</span>
<i>print</i>(dict[<u>'year'</u>])  <span># 2015</span></code>


<br/>
<h6>block 块</h6>

<p>block 是一种比较特殊的容器，结构和操作方式类似列表。保存的元素仅为 node 类型。块结构包含的语句不会立即执行，而是当做变量保存起来，在方便在需要的时候处理或执行。</p>


<code class="block"><span># node 对象的使用</span>
code : {
　　k
　　<i>print</i>(k)
　　k : k + <b>1</b>
}
k : <b>1</b>
<i>eval</i>(code[3])  <span># 执行第三条语句</span>
<i>print</i>(k)  <span># 2</span>
<i>eval</i>(code)  <span># 执行整个块</span>
<i>print</i>(k)  <span># 3</span></code>




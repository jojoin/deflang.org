<!--菜单栏高亮-->
<script type="text/javascript">menu_active="091"</script>

<h5>fs 文件系统</h5>

<p>Def 内置的处理文件的模块，支持一下函数：</p>

<h6>exist()</h6>

<p>检查文件或目录是否存在。返回 true 或 false。</p>

<h6>read()</h6>

<p>以字符串形式读取文件内容。参数为文件路径。返回 string 类型。如<code>fs.read(<u>'../test.txt'</u>)</code>。</p>

<h6>write()</h6>

<p>以字符串形式写入文件内容，如果文件不存在则创建一个。返回 bool 类型表示是否写入成功。例<code>fs.write(<u>'test.txt'</u>   <u>"def"</u>)</code>，向文件中写入 "def"。</p>

<h6>copy()</h6>

<p>复制文件到目标文件或目录，如果存在目标文件则覆盖它。</p>

<code class="block"><div>import</div> <u>"fs"</u>
fs.copy(<u>'f1.txt'  'f2.txt'</u>) <span># 复制文件 f1.txt 到 f2.txt</span>
fs.copy(<u>'f1.txt'  '../dir'</u>) <span># 复制文件 f1.txt 到 ../dir 目录下</span>
</code>

<h6>getfiles()</h6>

<p>获取某个目录下的所有文件（不含目录），以 list 形式返回所有文件名。</p>

<h6>getdirs()</h6>

<p>获取某个目录下的所有目录（不含文件），以 list 形式返回所有目录名。</p>

<h6>getchilds()</h6>

<p>获取某个目录下的所有目录和文件，以 list 形式返回。</p>

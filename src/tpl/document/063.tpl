<!--菜单栏高亮-->
<script type="text/javascript">menu_active="063"</script>

<h5>string 字符串</h5>

<h6>at()</h6>

<p>获取字符串中的指定位置的单个字符：<code><u>"def"</u>.at(<b>2</b>) <span># e</span></code></p>

<h6>split()</h6>

<p>分割字符串。接受一个字符串类型的参数表示分隔符，返回分割后的字符串数组。</p>

<code class="block">sss : <u>"def"</u>
<i>print</i>( sss.<i>split</i>(<u>''</u>) )  <span># ('d' 'e' 'f') 传空字符串分割为单个字符</span>
<i>print</i>( sss.<i>split</i>(<u>'e'</u>) )  <span># ('d' 'f') 按字符分割</span>
</code>

<h6>replace()</h6>

<p>替换字符串中的所有子字符串。返回替换后的新字符串。</p>

<code class="block">sss : <u>"def language age"</u>
<i>print</i>( sss.<i>replace</i>(<u>'age'  '!'</u>) )  <span># "def langu! !"</span>
</code>



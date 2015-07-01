#--
	Def 官方网站静态化生成程序

--#


import "fs"

dirtpl : './tpl/'
dirweb : "../website/"

# 缓存
html_header : fs.read("tpl/header.tpl")
html_footer : fs.read("tpl/footer.tpl")


# 添加css
defun addcss(html name)
	mk : '<!css!>'
	html.replace(mk  '<link rel="stylesheet" type="text/css" href="/css/'+name+'.css" />'+mk)
;


# #
# 拷贝 build.d 至网站目录
# #
fs.copy('build.d'  dirweb+'script/')


# #
# 生成首页 index
# #
html_index : addcss(html_header  'index') 
	+ fs.read(dirtpl+'index.tpl')
	+ html_footer
fs.write(dirweb+'index.html'  html_index)
printl('index.html')






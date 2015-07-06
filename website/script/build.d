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


# 生成一个页面
defun createhtml(name  isdir:false)
	fn : name
	if isdir
		fn : fn+'/index'
	;
	html_txt : addcss(html_header  name) 
		+ fs.read(dirtpl+fn+'.tpl')
		+ html_footer
	html_file : fn+'.html'
	isok : fs.write(dirweb+html_file  html_txt)
	if ~isok # 错误
		html_file : html_file + " fs write error !"
	;
	printl(html_file)
;



# #
# 拷贝 build.d 至网站目录
# #
fs.copy('build.d'  dirweb+'script/')

# #
# 生成页面
# #
createhtml( 'index' )    # 首页
createhtml( 'getstart' true)    # 快速开始
createhtml( 'download' true)    # 下载






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
defun createhtml(file  css:""  sta:""  end:"")
	if css=""
		css : file
	;
	html_txt : addcss(html_header  css) 
		+ sta
		+ fs.read(dirtpl+file+'.tpl')
		+ end
		+ html_footer
	html_file : file+'.html'
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
createhtml( 'index' 'index')    # 首页
createhtml( 'getstart/index' 'getstart' )    # 快速开始
# 文档
html_doc_menu : fs.read(dirtpl+'document/menu.tpl')
num : 0
docs : fs.getfiles(dirtpl+'document')
for docs i fn
	num : num + 1
	nn : fn.split('.')
	nn : nn[1] # 不带后缀的文件名
	if nn~='menu'
		createhtml( 'document/'+nn 'document' html_doc_menu '</div>')    # 文档
	;
;
createhtml( 'download/index' 'simple')    # 下载
createhtml( 'updatelog/index' 'simple')   # 更新日志
createhtml( 'news/index' 'simple')        # 新闻
createhtml( 'about/index' 'simple')       # 关于






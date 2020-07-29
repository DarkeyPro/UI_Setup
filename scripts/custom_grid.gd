extends Container
class_name custom_Container

tool
enum fit_type{Uniform,Width,Height,Fixed_rows,Fixed_columns}
export (fit_type) var Fit_type 
export var padding ={top=0,bottom=0,left=0,right=0}
export (int)var rows=1
export (int)var columns=1
export (Vector2) var cell_size 
export (Vector2) var spaceing
export (bool) var fit_x =false
export (bool) var fit_y =false

func _draw():
	containe()
func containe():
	if Fit_type == fit_type.Width or Fit_type == fit_type.Height or Fit_type == fit_type.Uniform:
		fit_x = true
		fit_y = true
		var sqr= sqrt(get_child_count())
		rows = int(ceil(sqr))
		columns = int(ceil(sqr))
	if Fit_type == fit_type.Width or Fit_type == fit_type.Fixed_columns:
		rows = int(ceil(get_child_count()/float(columns)))
	if Fit_type == fit_type.Height or Fit_type == fit_type.Fixed_rows:
		columns = int(ceil(get_child_count()/float(rows)))
	
	var check_padding = true if padding.bottom >0 else false
	var cell_rect= Vector2(0,0)
	if rows== 0:
		rows =1
	if columns ==0:
		columns =1
	cell_rect.y = rect_size.y /float(rows) - ((spaceing.y/float(rows))*2)-(padding.top/float(rows)) - (padding.bottom/float(rows))
	cell_rect.x = rect_size.x /float(columns)-((spaceing.x/float(columns))*2) - (padding.left/float(columns))-(padding.right/float(columns))
	
	cell_size.y= cell_rect.y if fit_y else cell_size.y
	cell_size.x= cell_rect.x if fit_x else cell_size.x

	var columns_count:= 0
	var rows_count:=0
	var count :=0
	while count < get_child_count():
		rows_count= count/columns 
		columns_count = count%columns
		var xpos =(cell_size.x*columns_count) + (spaceing.x*columns_count) +padding.left
		var ypos =(cell_size.y*rows_count) + (spaceing.y*rows_count) + padding.top
		var i = get_children()[count]
		i.rect_position =Vector2(xpos,ypos)
		i.rect_size =cell_size
		count+=1
func _set_size(value):
	containe()

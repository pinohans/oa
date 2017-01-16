from PIL import Image
# im=Image.open('bb.png')
# w,h=im.size
# print im.size
# for y in range(h):
# 	for x in range(w):
# 		r,g,b,a = im.getpixel((x,y))
# 		if x>108:
# 			if g>60 and b>60:
# 				im.putpixel((x,y),(255,255,255,0))
# 				continue
# 			else:
# 				im.putpixel((x,y),(255,255,255,255))
# 				continue
		
# 		print im.getpixel((x,y))
# im.save("b.png")

im=Image.open('c.jpg')
w,h=im.size
print im.size
for y in range(h):
	for x in range(w):
		if x+y<470:
			im.putpixel((x,y),255)
		
im.save("d.png")
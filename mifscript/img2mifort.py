from PIL import Image
import math

slika = "asd.jpg"
slika_prikaz = "imgpreview.png"
output_file = "images.mif"

im = Image.open(slika)
pix = im.load()
velicina = math.ceil(math.log(im.size[0]*im.size[1], 2))

f = open(output_file,"w+")
f.write("DEPTH = "+str(2**velicina)+";\n")
f.write("WIDTH = 12;\n")
f.write("ADDRESS_RADIX = HEX;\n")
f.write("DATA_RADIX = BIN;\n")
f.write("CONTENT\n")
f.write("BEGIN\n\n")

for y in range(im.size[1]):
	for x in range(im.size[0]):
		#print(pix[x,y])
		r = int(pix[x,y][0]/256*16)
		g = int(pix[x,y][1]/256*16)
		b = int(pix[x,y][2]/256*16)

		pix[x,y] = (r*16,g*16,b*16)

		formatiranje = '{0:0'+str(math.ceil(velicina/4))+'X}'
		f.write(formatiranje.format(x+y*im.size[0]))
		f.write(" : ")
		f.write('{0:04b}'.format(r) + '{0:04b}'.format(g) + '{0:04b}'.format(b)+";\n")
im.save(slika_prikaz)

f.write("END;")
f.close()
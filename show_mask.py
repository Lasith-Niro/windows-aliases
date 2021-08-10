import matplotlib.pyplot as plt
import sys
try:
    from PIL import Image
except ImportError:
    import Image

image = sys.argv[1] 
mask = sys.argv[2]
if (len(sys.argv)==4):
    blend = float(sys.argv[3])
else:
    blend = 0.5
    print(f"Using default blend value. {blend}")

background = Image.open(image)
overlay = Image.open(mask)
background = background.convert("RGBA")
overlay = overlay.convert("RGBA")

new_img = Image.blend(background, overlay, blend)
plt.imshow(new_img)
plt.axis('off')
plt.show()
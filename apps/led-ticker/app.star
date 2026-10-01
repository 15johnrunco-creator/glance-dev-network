START_VALUE = 2837641
STEP = 18
INTERVAL = 20
START_EPOCH = 1790874588

def main(c, ctx):
    elapsed = max(0, ctx.now.unix - START_EPOCH)
    value = START_VALUE + STEP * (elapsed // INTERVAL)
    text = str(value)
    if len(text) <= 7:
        c.fill("black")
        c.text_center(text, 6, font="16x20_bold", color="#015289")
    else:
        c.fill("black")
        c.text_center(text, 8, font="10x16_bold", color="#015289")
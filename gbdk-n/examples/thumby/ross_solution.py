# terrible patch format
changes="""
890 10 0
7aa 20 0
7ab 03 0
""".strip().split("\n")
data = bytearray(open("thumby.gb").read())
changes = [map(lambda y: int(y,16), x.split()) for x in changes]
for addr, oldval, newval in changes:
    addr -= 0x100
    assert data[addr] == oldval
    data[addr] = newval
open("thumbymod.bin", "wb").write(data)
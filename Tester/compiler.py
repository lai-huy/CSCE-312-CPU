import sys
import argparse


def parse(line):
    data = line.split("|")[0].strip()
    if ":" not in data:
        return None, None

    addr = data.split(":")[0].strip()[2:]
    data = data.split(":")[1].strip()

    if len(data) == 0:
        return None, None

    assert len(data) % 2 == 0
    num_bytes = int(len(data) / 2)

    data_split = ""
    for offset in range(num_bytes):
        # print('offset: %d, idx: %d' % (offset, offset*2))
        data_split += data[offset * 2 : offset * 2 + 2] + " "
    return addr, data_split[:-1]


def add(memory, addr, data):
    # assert(len(data) % 2 == 0)
    addr = int(addr, 16)
    memory[addr] = data


def translate(yo, mem):
    # print("yo: %s, mem: %s" % (yo, mem))
    memory = []
    with open(yo, "r") as f:
        for line in f:
            addr, data = parse(line)
            if addr is not None:
                # print('addr: %s data: %s(%d)' % (addr, data, len(data)))
                memory.append((addr, data))

    f = open(mem, "w")
    f.write("v3.0 hex words addressed\n")
    for addr, data in memory:
        f.write("%s: %s\n" % (addr, data))
    f.close()
    print("Translated %s file to memory file logisim-evolution. Find %s." % (yo, mem))


def main():
    parser = argparse.ArgumentParser(
        prog="yo2mem",
        description="y86-64 object file to logisim-evolution memory file translator",
        formatter_class=argparse.ArgumentDefaultsHelpFormatter,
    )
    parser.set_defaults(func=lambda x: parser.print_help())
    parser.add_argument("yo", action="store", type=str, help="input yo file")
    parser.add_argument("mem", action="store", type=str, help="output memory file")

    args = parser.parse_args(sys.argv[1:])
    translate(args.yo, args.mem)


if __name__ == "__main__":
    sys.exit(main())

all: array_test	call_test op_test pp_test register_test

array_test:
	./yas "Array Test/array.ys"
	python3 compiler.py "Array Test/array.yo" "Array Test/array.asm"
	./yis "Array Test/array.yo"

call_test:
	./yas "Call Test/call_test.ys"
	python3 compiler.py "Call Test/call_test.yo" "Call Test/call_test.asm"
	./yis "Call Test/call_test.yo"

op_test:
	./yas "OP Test/op_test.ys"
	python3 compiler.py "OP Test/op_test.yo" "OP Test/op_test.asm"
	./yis "OP Test/op_test.yo"

pp_test:
	./yas "Push Pop Test/pp_test.ys"
	python3 compiler.py "Push Pop Test/pp_test.yo" "Push Pop Test/pp_test.asm"
	./yis "Push Pop Test/pp_test.yo"

register_test:
	./yas "Register Test/register_test.ys"
	python3 compiler.py "Register Test/register_test.yo" "Register Test/register_test.asm"
	./yis "Register Test/register_test.yo"

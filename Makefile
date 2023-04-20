all: hello_py/hello.c hello_pyx/hello.c hello_twice_pyx/hello.c

hello_py/hello.c: hello_py/hello.py
	cd hello_py && poetry run cython *.py

hello_pyx/hello.c: hello_pyx/hello.pyx
	cd hello_pyx && poetry run cython *.pyx

hello_twice_pyx/hello.c: hello_twice_pyx/hello.pyx
	cd hello_twice_pyx && poetry run cython *.pyx

clean:
	find -name *.c -exec rm {} \;

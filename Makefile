all: sdist bdist_wheel docs

.DELETE_ON_ERROR:

.PHONY: all sdist bdist_wheel clean docs prepare test install

export PYTHONUTF8 := 1
export PYTHONIOENCODING := UTF-8

INCLUDES := \
    src/VERSION.inc src/DESCRIPTION.inc \
    src/_decoder_recursive_select.hpp src/_unicode_cat_of.hpp \
    src/_escape_dct.hpp src/_stack_heap_string.hpp src/native.hpp \
    src/dragonbox.cc

FILES := Makefile MANIFEST.in pyjson5x.pyx README.rst setup.py ${INCLUDES}

DerivedGeneralCategory.txt: DerivedGeneralCategory.txt.sha
	curl -s -o $@ https://www.unicode.org/Public/15.0.0/ucd/extracted/DerivedGeneralCategory.txt
	python sha512sum.py -c $@.sha

src/_unicode_cat_of.hpp: DerivedGeneralCategory.txt make_unicode_categories.py
	python make_unicode_categories.py $< $@

src/_decoder_recursive_select.py.hpp: make_decoder_recursive_select.py
	python $< $@

src/_escape_dct.hpp: make_escape_dct.py
	python $< $@

pyjson5x.cpp: pyjson5x.pyx $(wildcard src/*.pyx) $(wildcard src/*.hpp)
	python -m cython -f -o $@ $<

prepare: pyjson5x.cpp ${FILES}

sdist: prepare
	rm -f -- dist/pyjson5x-*.tar.gz
	python setup.py sdist

bdist_wheel: pyjson5x.cpp ${FILES} | sdist
	rm -f -- dist/pyjson5x-*.whl
	python setup.py bdist_wheel

install: bdist_wheel
	pip install --force dist/pyjson5x-*.whl

docs: install $(wildcard docs/* docs/*/*)
	python -m sphinx -M html docs/ dist/

clean:
	[ ! -d build/ ] || rm -r -- build/
	[ ! -d dist/ ] || rm -r -- dist/
	[ ! -d pyjson5x.egg-info/ ] || rm -r -- pyjson5x.egg-info/
	rm -f -- pyjson5x.*.so python5.cpp

test: bdist_wheel
	pip install --force dist/pyjson5x-*.whl
	python run-minefield-test.py
	python run-tests.py

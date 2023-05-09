#!/usr/bin/env python3

from setuptools import setup, Extension

extra_compile_args = [
    '-std=c++11', '-O3', '-fPIC', '-ggdb1', '-pipe',
    '-fomit-frame-pointer', '-fstack-protector-strong',
]

setup(
    ext_modules=[Extension(
        'pyjson5x.pyjson5x',
        sources=['pyjson5x.pyx'],
        include_dirs=['src'],
        extra_compile_args=extra_compile_args,
        extra_link_args=extra_compile_args,
        language='c++',
    )],
)

# travis_qmake_gcc_cpp98_oclint

[![Travis CI logo](TravisCI.png)](https://travis-ci.org)

[![Build Status](https://travis-ci.org/richelbilderbeek/travis_qmake_gcc_cpp98_oclint.svg?branch=master)](https://travis-ci.org/richelbilderbeek/travis_qmake_gcc_cpp98_oclint)

Minimal C++ project that is checked by OCLint and checked by Travis.

This GitHub is part of [the Travis C++ Tutorial](https://github.com/richelbilderbeek/travis_cpp_tutorial).

The goal of this project is to have a clean Travis CI build, with specs:
 * Build system: `qmake`
 * C++ compiler: `gcc`
 * C++ version: `C++98`
 * Libraries: `STL` only
 * Code coverage: none
 * Source: one single file, `main.cpp`
 * Checked by OCLint

Less builds:
 * No OCLint: [travis_qmake_gcc_cpp98](https://www.github.com/richelbilderbeek/travis_qmake_gcc_cpp98)
 
More complex builds:
 * Use of C++11: [travis_qmake_gcc_cpp11_oclint](https://www.github.com/richelbilderbeek/travis_qmake_gcc_cpp11_oclint)

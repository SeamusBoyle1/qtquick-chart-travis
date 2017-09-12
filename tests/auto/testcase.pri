CONFIG += testcase

# gcov
with_gcov {
QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage
LIBS += -lgcov
}

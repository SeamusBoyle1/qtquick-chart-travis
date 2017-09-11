#include <QString>
#include <QtTest>

class MyapptestTest : public QObject
{
    Q_OBJECT

public:
    MyapptestTest();

private Q_SLOTS:
    void testCase1();
};

MyapptestTest::MyapptestTest()
{
}

void MyapptestTest::testCase1()
{
    QVERIFY2(true, "Failure");
}

QTEST_APPLESS_MAIN(MyapptestTest)

#include "tst_myapptesttest.moc"

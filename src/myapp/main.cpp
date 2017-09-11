#include <QApplication>
#include <QQmlApplicationEngine>

#include <QDebug>

#include <boost/optional.hpp>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    boost::optional<int> amIAnInt;
    {
        amIAnInt = boost::make_optional(true, 111);
    }
    if (amIAnInt) {
        qDebug() << "Yes, I'm" << *amIAnInt;
    }

    return app.exec();
}

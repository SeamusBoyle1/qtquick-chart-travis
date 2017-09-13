// Copyright 2017

#ifndef MYAPP_H
#define MYAPP_H

#include <QObject>

class MyApp : public QObject
{
    Q_OBJECT
public:
    explicit MyApp(QObject *parent = nullptr);

signals:

public slots:
};

#endif // MYAPP_H

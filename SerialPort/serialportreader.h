#ifndef SERIALPORTREADER_H
#define SERIALPORTREADER_H

#include <QObject>

class SerialPortReader : public QObject
{
    Q_OBJECT
public:
    explicit SerialPortReader(QObject *parent = nullptr);

signals:

};

#endif // SERIALPORTREADER_H

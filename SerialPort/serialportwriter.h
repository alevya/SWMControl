#ifndef SERIALPORTWRITER_H
#define SERIALPORTWRITER_H

#include <QObject>

class SerialPortWriter : public QObject
{
    Q_OBJECT
public:
    explicit SerialPortWriter(QObject *parent = nullptr);

signals:

};

#endif // SERIALPORTWRITER_H

#ifndef SERIALPORTREADER_H
#define SERIALPORTREADER_H

#include <QObject>
#include <QSerialPort>
#include <QTextStream>
#include <QByteArray>
#include <QTimer>

class SerialPortReader : public QObject
{
    Q_OBJECT
public:
    explicit SerialPortReader(QSerialPort* serialPort, QObject *parent = nullptr);

private slots:
    void handleReadyRead();
    void handleTimeout();
    void handleError(QSerialPort::SerialPortError error);

private:
    const int READ_TIMEOUT = 3000;
    QSerialPort* m_serialPort = nullptr;
    QByteArray m_readData;
    QTextStream m_standardOutput;
    QTimer m_timer;

};

#endif // SERIALPORTREADER_H

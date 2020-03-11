#ifndef SERIALPORTWRITER_H
#define SERIALPORTWRITER_H

#include <QObject>
#include <QSerialPort>
#include <QTextStream>
#include <QByteArray>
#include <QTimer>

class SerialPortWriter : public QObject
{
    Q_OBJECT
public:
    explicit SerialPortWriter(QSerialPort* serialPort, QObject *parent = nullptr);
    void write(const QByteArray& writeData);

private slots:
    void handleBytesWritten(qint32 bytes);
    void handleTimeout();
    void handleError(QSerialPort::SerialPortError error);

private:
    const int WRITE_TIMEOUT = 3000;
    QSerialPort* m_serialPort = nullptr;
    QByteArray m_writeData;
    QTextStream m_standardOutput;
    qint32 m_bytesWritten = 0;
    QTimer m_timer;

};

#endif // SERIALPORTWRITER_H

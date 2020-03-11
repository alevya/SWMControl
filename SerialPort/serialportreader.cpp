#include "serialportreader.h"

SerialPortReader::SerialPortReader(QSerialPort* serialPort, QObject *parent)
    : QObject(parent),
      m_serialPort(serialPort), m_standardOutput(stdout)
{
    connect(m_serialPort, &QSerialPort::readyRead, this, &SerialPortReader::handleReadyRead);
    connect(m_serialPort, &QSerialPort::errorOccurred, this, &SerialPortReader::handleError);
    connect(&m_timer, &QTimer::timeout, this, &SerialPortReader::handleTimeout);

    m_timer.start(READ_TIMEOUT);
}

void SerialPortReader::handleReadyRead()
{
    m_readData.append(m_serialPort->readAll());
    if( !m_timer.isActive())
        m_timer.start(READ_TIMEOUT);
}

void SerialPortReader::handleError(QSerialPort::SerialPortError error)
{
    if(error == QSerialPort::ReadError){
        m_standardOutput << QObject::tr("An I/O error occurred while reading "
                                        "the data from port %1, error: %2")
                            .arg(m_serialPort->portName())
                            .arg(m_serialPort->errorString())
                         << endl;
    }

}

void SerialPortReader::handleTimeout()
{
    if(m_readData.isEmpty()){
        m_standardOutput << QObject::tr("No data ws currently avaiable "
                                        "for reading from port %1")
                            .arg(m_serialPort->portName())
                         << endl;
    }
    else{
        m_standardOutput << QObject::tr("Data successfully received from port %1")
                            .arg(m_serialPort->portName())
                         << endl;
        m_standardOutput << m_readData << endl;

    }
}

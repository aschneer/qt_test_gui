#ifndef QMLSERIALPORTINFO_H
#define QMLSERIALPORTINFO_H

#include <QObject>
#include <iostream>
#include <QSerialPort>
#include <QSerialPortInfo>

//using namespace std;

class QMLSerialPortInfo : public QObject
{
	Q_OBJECT
	Q_PROPERTY(QSerialPortInfo port_info MEMBER port_info)
public:
	explicit QMLSerialPortInfo(QObject *parent = 0);

	QSerialPortInfo port_info;

	// Returns the number of serial ports
	// currently available.
	int numPortsAvailable();
	// These functions are used to access information
	// about the available serial ports by specifying
	// the number of the port in the list of available
	// ports, starting with zero.
	// If 3 ports are found, their numbers will be
	// (arbitrarily) 0, 1, and 2.
	std::string getPortName(int portNum);
	std::string getPortDescription(int portNum);
	std::string getPortManufacturer(int portNum);

signals:

public slots:
};

#endif // QMLSERIALPORTINFO_H

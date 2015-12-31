#include "qmlserialportinfo.h"

QMLSerialPortInfo::QMLSerialPortInfo(QObject *parent) : QObject(parent)
{
	return;
}

int QMLSerialPortInfo::numPortsAvailable() {
	int count = 0;
	foreach (const QSerialPortInfo &info, QSerialPortInfo::availablePorts()) {
		count++;
	}
	return count;
}

std::string QMLSerialPortInfo::getPortName(int portNum) {
	return "name";
}

std::string QMLSerialPortInfo::getPortDescription(int portNum) {
	return "description";
}

std::string QMLSerialPortInfo::getPortManufacturer(int portNum) {
	return "manufacturer";
}

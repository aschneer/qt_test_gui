#include <iostream>
#include <QApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
#include <QSerialPort>
#include <QSerialPortInfo>
#include <QtQml>
#include "qmlserialportinfo.h"
#include "qmlserialportinfo.cpp"

//using namespace std;

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

	qmlRegisterType<QMLSerialPortInfo>("Serial", 1, 0, "QMLSerialPortInfo");

/*
	// Example use QSerialPortInfo
	foreach (const QSerialPortInfo &info, QSerialPortInfo::availablePorts()) {
		qDebug() << "Name : " << info.portName();
		qDebug() << "Description : " << info.description();
		qDebug() << "Manufacturer: " << info.manufacturer();

		// Example use QSerialPort
		QSerialPort serial;
		serial.setPort(info);
		if (serial.open(QIODevice::ReadWrite))
			serial.close();
	}
*/

    return app.exec();
}

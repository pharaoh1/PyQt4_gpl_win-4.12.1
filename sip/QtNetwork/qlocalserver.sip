// qlocalserver.sip generated by MetaSIP
//
// This file is part of the QtNetwork Python extension module.
//
// Copyright (c) 2016 Riverbank Computing Limited <info@riverbankcomputing.com>
// 
// This file is part of PyQt4.
// 
// This file may be used under the terms of the GNU General Public License
// version 3.0 as published by the Free Software Foundation and appearing in
// the file LICENSE included in the packaging of this file.  Please review the
// following information to ensure the GNU General Public License version 3.0
// requirements will be met: http://www.gnu.org/copyleft/gpl.html.
// 
// If you do not wish to use this file under the terms of the GPL version 3.0
// then you may purchase a commercial license.  For more information contact
// info@riverbankcomputing.com.
// 
// This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
// WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.


%If (Qt_4_4_0 -)

class QLocalServer : QObject
{
%TypeHeaderCode
#include <qlocalserver.h>
%End

public:
%If (Qt_5_0_0 -)
    explicit QLocalServer(QObject *parent /TransferThis/ = 0);
%End
%If (- Qt_5_0_0)
    QLocalServer(QObject *parent /TransferThis/ = 0);
%End
    virtual ~QLocalServer();
    void close();
    QString errorString() const;
    virtual bool hasPendingConnections() const;
    bool isListening() const;
    bool listen(const QString &name);
%If (Qt_5_0_0 -)
    bool listen(qintptr socketDescriptor);
%End
    int maxPendingConnections() const;
    virtual QLocalSocket *nextPendingConnection();
    QString serverName() const;
    QString fullServerName() const;
    QAbstractSocket::SocketError serverError() const;
    void setMaxPendingConnections(int numConnections);
    bool waitForNewConnection(int msecs = 0, bool *timedOut = 0) /ReleaseGIL/;
%If (Qt_4_5_0 -)
    static bool removeServer(const QString &name);
%End

signals:
    void newConnection();

protected:
    virtual void incomingConnection(quintptr socketDescriptor);

public:
%If (Qt_5_0_0 -)

    enum SocketOption
    {
        UserAccessOption,
        GroupAccessOption,
        OtherAccessOption,
        WorldAccessOption,
    };

%End
%If (Qt_5_0_0 -)
    typedef QFlags<QLocalServer::SocketOption> SocketOptions;
%End
%If (Qt_5_0_0 -)
    void setSocketOptions(QFlags<QLocalServer::SocketOption> options);
%End
%If (Qt_5_0_0 -)
    QFlags<QLocalServer::SocketOption> socketOptions() const;
%End

private:
    QLocalServer(const QLocalServer &);
};

%End
%If (Qt_5_0_0 -)
QFlags<QLocalServer::SocketOption> operator|(QLocalServer::SocketOption f1, QFlags<QLocalServer::SocketOption> f2);
%End

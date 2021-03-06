// qabstractscrollarea.sip generated by MetaSIP
//
// This file is part of the QtGui Python extension module.
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


class QAbstractScrollArea : QFrame
{
%TypeHeaderCode
#include <qabstractscrollarea.h>
%End

public:
    explicit QAbstractScrollArea(QWidget *parent /TransferThis/ = 0);
    virtual ~QAbstractScrollArea();
    Qt::ScrollBarPolicy verticalScrollBarPolicy() const;
    void setVerticalScrollBarPolicy(Qt::ScrollBarPolicy);
    QScrollBar *verticalScrollBar() const /Transfer/;
    Qt::ScrollBarPolicy horizontalScrollBarPolicy() const;
    void setHorizontalScrollBarPolicy(Qt::ScrollBarPolicy);
    QScrollBar *horizontalScrollBar() const /Transfer/;
    QWidget *viewport() const /Transfer/;
    QSize maximumViewportSize() const;
    virtual QSize minimumSizeHint() const;
    virtual QSize sizeHint() const;

protected:
    void setViewportMargins(int left, int top, int right, int bottom);
    virtual bool event(QEvent *);
    virtual bool viewportEvent(QEvent *);
    virtual void resizeEvent(QResizeEvent *);
    virtual void paintEvent(QPaintEvent *);
    virtual void mousePressEvent(QMouseEvent *);
    virtual void mouseReleaseEvent(QMouseEvent *);
    virtual void mouseDoubleClickEvent(QMouseEvent *);
    virtual void mouseMoveEvent(QMouseEvent *);
    virtual void wheelEvent(QWheelEvent *);
    virtual void contextMenuEvent(QContextMenuEvent *);
    virtual void dragEnterEvent(QDragEnterEvent *);
    virtual void dragMoveEvent(QDragMoveEvent *);
    virtual void dragLeaveEvent(QDragLeaveEvent *);
    virtual void dropEvent(QDropEvent *);
    virtual void keyPressEvent(QKeyEvent *);
%If (Qt_5_0_0 -)
    virtual bool eventFilter(QObject *, QEvent *);
%End
    virtual void scrollContentsBy(int dx, int dy);

public:
%If (Qt_4_2_0 -)
    void setVerticalScrollBar(QScrollBar *scrollbar /Transfer/);
%End
%If (Qt_4_2_0 -)
    void setHorizontalScrollBar(QScrollBar *scrollbar /Transfer/);
%End
%If (Qt_4_2_0 -)
    QWidget *cornerWidget() const;
%End
%If (Qt_4_2_0 -)
    void setCornerWidget(QWidget *widget /Transfer/);
%End
%If (Qt_4_2_0 -)
    void addScrollBarWidget(QWidget *widget /Transfer/, Qt::Alignment alignment);
%End
%If (Qt_4_2_0 -)
    QWidgetList scrollBarWidgets(Qt::Alignment alignment) /Transfer/;
%End
%If (Qt_4_2_0 -)
    void setViewport(QWidget *widget /Transfer/);
%End
%If (Qt_5_0_0 -)
    virtual void setupViewport(QWidget *viewport);
%End

protected slots:
%If (Qt_4_2_0 - Qt_5_0_0)
    void setupViewport(QWidget *viewport);
%End

protected:
%If (Qt_4_6_0 -)
    void setViewportMargins(const QMargins &margins);
%End

private:
    QAbstractScrollArea(const QAbstractScrollArea &);
};

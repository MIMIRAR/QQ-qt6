/****************************************************************************
** QQ-Like 响应点击操作的 QLabel
****************************************************************************/

#ifndef CLICKABLELABEL_H
#define CLICKABLELABEL_H

#include <QLabel>
#include <QWidget>
#include <QEnterEvent>


class ClickableLabel : public QLabel
{
    Q_OBJECT
public:
    explicit ClickableLabel(QWidget *parent = nullptr);

protected:
    virtual void mousePressEvent(QMouseEvent *) override;
    virtual void enterEvent(QEnterEvent *) override;
    virtual void leaveEvent(QEvent *) override;

signals:
    void clickSignal(ClickableLabel* label);

public slots:

};


#endif // CLICKABLELABEL_H

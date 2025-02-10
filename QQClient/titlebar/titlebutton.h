#ifndef TITLEBUTTON_H
#define TITLEBUTTON_H

#include <QPushButton>
#include <QEvent>

class TitleButton : public QPushButton
{
    Q_OBJECT

public:
    TitleButton(QWidget *parent = nullptr,int tag = 0,QString iconName = "");
    ~TitleButton();
    void enterEvent(QEnterEvent*);
    void leaveEvent(QEvent*);

private:
    int tag;
};



#endif // TITLEBUTTON_H

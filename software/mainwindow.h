#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QSerialPort>
#include <QSerialPortInfo>
#include <QtWidgets>


QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

signals:
    void error(const QString &s);

private slots:
    void on_connectButton_clicked();
    void on_refreshportsButton_clicked();
    void on_readButton_clicked();
    void handleReadEPROM();
    void clearvars();
    int roundUp(int numToRound, int multiple);
    void on_startSlider_valueChanged(int value);
    void on_endSlider_valueChanged(int value);
    void on_startSlider_sliderMoved(int position);
    void on_endSlider_sliderMoved(int position);

    void on_startSpin_valueChanged(int arg1);

    void on_endSpin_valueChanged(int arg1);

private:
    Ui::MainWindow *ui;
    QSerialPort serial;
    QString s_port;
    QByteArray b_data;
    QString s_out;
    int EPROM_addr = 0;
    uint32_t max_size_EPROM = 65534;
    uint8_t max_byte_line = 16;
    uint8_t byte_line_count = 0;
    QString Hex_EPROM_addr;
    QString TextBox_line;
    int startValue;
    int endValue;
    int barValue;
    QString asciiEPROM;
    QProgressBar *m_progress = new QProgressBar;
};
#endif // MAINWINDOW_H

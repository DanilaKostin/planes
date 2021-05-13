#ifndef HELPER_H
#define HELPER_H
#include <QVector>
#include <QObject>


class Helper : public QObject
{
    Q_OBJECT
public:
    explicit Helper(QObject *parent = nullptr);

signals:

public slots:
    QVector<double> vector(double x,double y);
    QVector<double> rand();
    QVector<double> atang(double x,double y);
    QVector<double> reject(double x,double y);

};

#endif // HELPER_H

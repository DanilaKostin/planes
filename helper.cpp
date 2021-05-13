#include "helper.h"
#include <QDebug>
#include "QtMath"
Helper::Helper(QObject *parent) : QObject(parent)
{

}
QVector<double> Helper::vector(double x, double y){
    QVector<double> copy;
    double x2 = x/(sqrt(x*x+y*y));
    double y2 = y/(sqrt(x*x+y*y));

    copy.push_back(x2);
    copy.push_back(y2);
    return copy;
}
QVector<double>Helper::rand(){
   QVector<double> copy;
   double x2 = qrand() % 1200;
   double y2 = qrand() % 800;


   copy.push_back(x2);
   copy.push_back(y2);
   return copy;
}

QVector<double>Helper::atang(double x, double y){
   QVector<double> copy;
   double tan = (y/x);
   double atan = qAtan(tan)*180/M_PI-90;
   if ((x > 0 && y < 0) || (x>0 && y>0))
       atan +=180;

   QVector<double> cop;
   cop.push_back(atan);
   return cop;
}
QVector<double> Helper::reject(double x,double y){
QVector<double> coqy;
double tan = (y/x);
double atan = qAtan(tan)*180/M_PI-90;
double grad = 180 - 2*atan;
coqy.push_back(grad);
return coqy;
}


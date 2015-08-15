#include <iostream>
#include <sstream>
#include <iomanip>
#include <time.h>
#include <vector>
#include <string>
#include <math.h>
#include <stdlib.h>
#include <stdio.h>
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

#include "header.h"
#include "param.h"

#define CONVERT 11.811

using namespace std;
using namespace cv;

FILE *infile;
cv::Mat img = cv::Mat(3508,2480, CV_8UC3);
//x0,y0 is the start point 
void draw(double x0,  double y0, int n, int length, int w1, int w2,double degree, int height){
    
    cv::Point pt[200];
    cv::Point rook_points[1][2000];
    double deltax = (double)(w2 -w1) / 200;
    double deltay =(double)length / 100;
    cout << "deltay" << deltay << endl;
    cout << "deltax" << deltax << endl;
    cv::Point pt2[200];
    cv::Point rook_points2[1][200];
    double omega = (double)M_PI * n /length;
    double k1, k2;
    //	double x1,y1;
    cout << degree << endl;
    int i;
    for ( i = 0; i < 100; i++){
        pt[i] = cv::Point((height*sin(omega *(y0 + i* deltay ) + degree + 2*degree)+ x0-i*deltax)* CONVERT, (y0 + i*deltay)*CONVERT);
        // pt2[i] = cv::Point((height*sin(omega *(y0-14-i* deltay ) + degree)+ x0-i*deltax)* CONVERT, (y0-14 -i*deltay)*CONVERT);
        pt2[i] = cv::Point((height*sin(omega *(y0 + i* deltay ) + degree + 2*degree)+ x0-i*deltax)* CONVERT,(2*146.5-(y0+i*deltay))*CONVERT);
        //x1 = height*sin(omega *(y0 -14-i* deltay ) + degree)+ x0-i*deltax;
        //y1 = y0 + i*deltay;
        // pt[i] = cv::Point(x1*CONVERT, (2*148-y1)*CONVERT);
        // pt[i] = cv::Point((50+i*deltax)*CONVERT, (5*sin(0.2*(50+i*deltax))-i*deltay + 50)*CONVERT);
        cout <<(height*sin(omega *(y0 + i* deltay ) + degree + 2*degree)+ x0-i*deltax)* CONVERT  << endl;
        //cout << (height*sin(omega *(y0 + i* deltay ) + degree + 2*degree)+ x0-i*deltax)* CONVERT <<endl;
        
    }
    
    for(i = 100; i < 200; i++){
        //cout << " 100 "<<(50+(200-i-1)*deltax)*CONVERT << endl;
        k1 = y0+(200-i-1)*deltay;
        /*if(i == 101){
         cout << "k1 =" << k1 << endl;
         }*/
        //k2 = y0 - 14 -(200-i-1)* deltay;
        //cout << "w1 =" << w1;
        pt[i] = cv::Point((height*sin(omega*k1 +degree + 2*degree) +x0+ w1  + (199-i)*deltax) * CONVERT, k1*CONVERT);
        //pt2[i] = cv::Point((height*sin(omega*k2 +degree) +x0+w1 + (199-i)*deltax) * CONVERT, k2*CONVERT);
        pt2[i] = cv::Point((height*sin(omega*k1 +degree + 2*degree) +x0+ w1  + (199-i)*deltax) * CONVERT, (2*146.5-k1)*CONVERT);
        //cout<<height*sin(omega*k1 +degree + 2*degree) +x0+ w1  + (199-i)*deltax << endl;
        cout << k1 << endl;
        cout <<2*146.5-k1 << endl;
        //x1 =height*sin(omega*k2 +degree) +x0+w1  + (199-i)*deltax;
        //y1 = k2;
        //pt[i] = cv::Point(x1*CONVERT, (2*148-y1)*CONVERT);
        //pt[i] = cv::Point(k*CONVERT, (5*sin(0.2*k) + (200-i-1)*deltay + 60)*CONVERT);
    }
    
    cv::Point match1 = pt[0];
    cv::Point p1  = pt[199];
    cv::Point match2 = pt2[0];
    cv::Point p2 = pt2[199];
    cout << match1.x << endl;
    cout << match2.x << endl;
    cout << p1.x << endl;
    cout << p2.x << endl;
    
    
    
    for(i = 0; i < 200; i++){
        rook_points[0][i] = pt[i];
        rook_points2[0][i] = pt2[i];
    }
    
    const Point * ppt[1] = {rook_points[0]};
    const Point * ppt2[1] = {rook_points2[0]};
    int npt[] = {200};
    fillPoly(img,ppt,npt,1,Scalar(0,0,0));
    fillPoly(img,ppt2, npt, 1, Scalar(0,0,0));
    //cv::fillConvexPoly(img, pt, 99, cv::Scalar(0,0,0));
    
}


int main(){
    // cv::Mat img = cv::Mat(3508,2480, CV_8UC3);
    //double x0;
    //double y0;
    int n =2;
    int length=100;
    int  w1 = 5;
    int  w2 = 40;
    double degree = M_PI_4;
    int height = 5;
    int i,j;
    int num = 0;
    char buf[2048] = {0};
    char *ary[NVARS];
    double number[NVARS];
    //-----------------------読み込みーーーーーーーーーーーーーーーー
    infile = fopen("5ptype.txt", "r");//input file
   
    for(i =0; i < POPSIZE; i++){
        fgets(buf,2048,infile);
        ary[0] = strtok(buf," ");
        for( j = 1; j < NVARS; j++){
            ary[j] = strtok(NULL, " ");
        }
        for(j = 0; j < NVARS; j++){
            number[j] = atof(ary[j]);
            //cout << "i = " << i << endl;
            //cout << "koko num = " << number[i] <<endl;
        }
        w1 = 5*number[0];
        w2 = 5*number[1];
        length = number[2] +  95;
        height = number[3];
        n = number[4];
        degree = number[5] * M_PI_4 *0.5;
        if(i%2 == 0){ // if this is a new page, draw the ports first
            img = Scalar(Vec4b(255,255,255,0));
            
	    //port 1 left, 2 rectangles(5mm*15mm)
	    cv::rectangle(img, cv::Point(40*CONVERT,141*CONVERT), cv::Point(55*CONVERT ,146*CONVERT),cv::Scalar(0,0,0), -1, CV_AA);
            cv::rectangle(img, cv::Point(40*CONVERT, 147*CONVERT), cv::Point(55*CONVERT ,152*CONVERT),cv::Scalar(0,0,0), -1, CV_AA);
	    //port 2 right, 2 rectangles(5mm*15mm)
            cv::rectangle(img, cv::Point(140*CONVERT,141*CONVERT), cv::Point(155*CONVERT ,146*CONVERT),cv::Scalar(0,0,0), -1, CV_AA);
	       cv::rectangle(img, cv::Point(140*CONVERT, 147*CONVERT), cv::Point(155*CONVERT ,152*CONVERT),cv::Scalar(0,0,0), -1, CV_AA);
            
            
            draw(45,152,n,length,w1,w2,degree,height);
            cout << "draw" << endl;
        }
        else{
            draw(145, 152, n, length, w1, w2, degree,height);
            stringstream Filename;
            Filename << "5" << setw(2) << setfill('0') << num << ".jpg";
            num++;
            cv::imwrite(Filename.str(),img);
        }
    }
    fclose(infile);
    return 0;
}

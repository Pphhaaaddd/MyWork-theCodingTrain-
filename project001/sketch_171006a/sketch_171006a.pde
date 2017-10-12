size(640,360);


int centx= 320,centy =180,wid = 640-30,ht = 360-30;

ellipse(centx,centy,wid,ht); //faceoutline
stroke(255,0,0); fill(200,100,0);
rect(centx-wid*610/125,centy+ht*70/330,wid*250/610,ht*50/330); //mouth

stroke(0);
fill(0,0,255,128);
ellipse(centx-wid*150/610,centy-ht*80/330,wid*30/610,ht*30/330); //Eye1
//line(320-150-50,100-30,320-150+50,100-30-15); //brow1
ellipse(centx+wid*150/610,centy-ht*80/330,wid*30/610,ht*30/330); //Eye2
//line(320+150+50,100-30,320+150-50,100-30-15); //brow2

ellipse(centx,centy+ht*10/330,wid*30/610,ht*30/330); //nose
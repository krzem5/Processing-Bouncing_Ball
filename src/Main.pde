final int SIZE=30;
final PVector GRAVITY=new PVector(0,0.981);
final float BOUNCE=0.85;
final float FRICTION=0.15;



PVector pos;
PVector vel;



void setup(){
	size(650,375);
	pos=new PVector(width/2,height/2);
	vel=new PVector(2,2.9);
}



void draw(){
	background(0);
	pos.add(vel);
	vel.add(GRAVITY);
	if (pos.x>=width-SIZE||pos.x<=SIZE){
		vel.x*=-(1-FRICTION);
	}
	if (pos.y>=height-SIZE||pos.y<=SIZE){
		vel.y*=-BOUNCE;
	}
	fill(220,40,40);
	ellipse(pos.x,pos.y,SIZE*2,SIZE*2);
}

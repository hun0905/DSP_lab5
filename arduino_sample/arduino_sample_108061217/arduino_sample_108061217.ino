int pot = A0;
int val = 0;
int start_time;
int now_time;


void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  pinMode(pot,INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:

  start_time = micros();

  val = analogRead(pot);    //read analog input

  //val = map(val,0,1023,0,7);    //mapping 

  Serial.println(val,DEC);     //print on Matlab  

  now_time = micros();
  
  while(now_time-start_time<2000){    //sample rate  
    now_time = micros();
  }
   
}
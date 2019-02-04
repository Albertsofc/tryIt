import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.io.File;
import java.util.Collections;
import static java.lang.System.*;
PImage oscar=new PImage();
PImage envelope=new PImage();
int clicks;

MovieList m=new MovieList();
void setup(){
  oscar=loadImage("oscar.jpg");
  envelope=loadImage("envelope.png");
  size(1500,968);
  background(oscar);
  try{
    Scanner scan=new Scanner(new File("movieReview.txt"));
    while (scan.hasNext()){
      //m.loadMovies(scan.nextLine());
      m.loadMovies();
    }
  }
  catch(Exception e){
   println(e);
  }
  println(m);
  
}
void draw(){
  if(clicks%2==1){
    image(envelope, 50,50);
  }
}

void mouseClicked(MouseEvent e){
  clicks++;
}

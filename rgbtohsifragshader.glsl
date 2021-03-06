/*
 * An attempt of face (skin) detection algorithm. The resulting pixels with value of 1 will represent a skin pixel, 0 otherwise.
 * The value for the threshold of the 'h' channel was based on the article "Driver Fatigue Detection Based on Eye Tracking and Dynamic Template Matching"
 * by Wen-Bing Horng, Chih-Yuan Chen and Yi Chang.
 * The threshold value for the hue ('h') was adjusted. This code uses a different color conversion method than the used previously.
 */

varying vec2 tcoord;
uniform sampler2D tex;

float rgb2HSIThreshold(vec4 color){
	float r, g, b, a;
	float h,s,v;
	float pi = 3.14159265359;
	h=vec4(0,0,0,0).x;
	r = color.r;
	g = color.g;
	b = color.b;
	a = color.a;
	r/=(r+g+b);
	g/=(r+g+b);
	b/=(r+g+b);
	
	if(r==g && g==b){
		h=0.0;
	}else{
		float w=0.5*(r-g+r-b)/sqrt((r-g)*(r-g)+(r-b)*(g-b));
		if(w>1.0) w=1.0;
		if(w<-1.0) w=-1.0;
		h=acos(w);
		if(h<0.0) h=0.0;
		if(b>g) h=2.0*pi-h;
	}
	//here depending on the threshold values, more os less noise will be detected in the output image.
	if(h>0.174532925 && h<0.785392163)
		return 1.0;
	else
		return 0.0;
}

void main(void) 
{
	/* texture2D returns a vec4 type. It could return for and rgba image the values for the r-g-b-a channels.
	 * Therefore, problably to change for the HSI color space  changes must be made in this return value, and then
	 * assign the new value for the gl_FragColor variable.
	 */
    
    vec4 color = texture2D(tex,tcoord);
    float result = rgb2HSIThreshold(color);
    gl_FragColor = vec4(result,result,result,1);

    //SAMPLE CODE HERE, DO NOT ERASE UNTIL FINAL SHADER CODE IS WORKING PROPERLY
    /*
    vec4 texelVal = texture2D(tex,tcoord);
    if(texelVal.g > 0.5){
    	gl_FragColor = vec4(0,1,0,1);
    }
    else{
    	gl_FragColor = texelVal.brga;
    }
    */
}

/*
 * An attempt of face (skin) detection algorithm. The resulting pixels with value of 1 will represent a skin pixel, 0 otherwise.
 * The value for the threshold of the 'h' channel was based on the article "Driver Fatigue Detection Based on Eye Tracking and Dynamic Template Matching"
 * by Wen-Bing Horng, Chih-Yuan Chen and Yi Chang.
 */

varying vec2 tcoord;
uniform sampler2D tex;

float rgb2HSIThreshold(vec4 color){
	float r, g, b, a;
	float h,s,v;
	h=vec4(0,0,0,0).x;
	r = color.r;
	g = color.g;
	b = color.b;
	a = color.a;
	
	//r=r/(r+g+b);
	//g=g/(r+g+b);
	//b=b/(r+g+b);
	//Convert from RGB to HSV	
	float upper = 0.5*((r-g)+(r-b));
	float lower = sqrt(pow((r-g),2.0) + (r-b)*(g-b));
	h=(1.0/cos(upper/lower));
	
	if(b>g)
		h-=360.0;
	
	if(h>10.0 && h<45.0)
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
    /*
    if(rgb2HSIThreshold(color)){
    	gl_FragColor = vec4(1,0.5,1,1);
    }else{
    	gl_FragColor = vec4(0,0,0,0.5);
	}
	*/
    
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

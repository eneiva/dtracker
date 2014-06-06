varying vec2 tcoord;
uniform sampler2D tex;
void main(void) 
{
	/* texture2D returns a vec4 type. It could return for and rgba image the values for the r-g-b-a channels.
	 * Therefore, problably to change for the HSI color space  changes must be made in this return value, and then
	 * assign the new value for the gl_FragColor variable.
	 */
    
    vec4 color = texture2D(tex,tcoord);
    float r, g, b, a, delta;
	float colorMax, colorMin;
	float h=0; float s=0; float v=0;
	r = color.r;
	g = color.g;
	b = color.b;
	a = color.a;
	colorMax = max (r,g);
	colorMax = max (colorMax,b);
	colorMin = min (r,g);
	colorMin = min (colorMin,b);
	
	//Convert from RGB to HSV	
	v = colorMax;
	if (colorMax != 0)
	{
		s = (colorMax - colorMin) / colorMax;
	}
	if (s != 0)
	{
		delta = colorMax - colorMin;
		if (r == colorMax)
		{
			h = (g-b)/delta;
		}
		else if (g == colorMax)
		{
			h = 2.0 + (b-r)/delta;
		}
		else 
		{
			h = 4.0 + (r-g)/delta;
		}
		h *= 60;
		//apply the offsets from the spinners multiply it by the alpha channel from the diffuse map.
		h += (hOffset * a);
		s += (sOffset * a);
		v += (vOffset * a);
		//Make sure that the values are not out of range after the offset
		if (h<0) {h += 360;}
		if (h>360) {h -= 360;}
		if (s<0.0) {s = 0.0;}
		if (s>1.0) {s = 1.0;}
		if (v<0.0) {v = 0.0;}
		if (v>1.0) {v = 1.0;}
	}
    
    if(h>10 && h<45){
    	gl_FragColor = vec4(1,1,1,1);
    }else{
    	gl_FragColor = vec4(0,0,0,1);
	}
    
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

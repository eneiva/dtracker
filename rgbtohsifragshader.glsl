varying vec2 tcoord;
uniform sampler2D tex;
void main(void) 
{
	/* texture2D returns a vec4 type. It could return for and rgba image the values for the r-g-b-a channels.
	 * Therefore, problably to change for the HSI color space  changes must be made in this return value, and then
	 * assign the new value for the gl_FragColor variable.
	 */
    vec4 texelVal = texture2D(tex,tcoord);
    if(texelVal.g > 0.5f)
    	gl_FragColor = vec4(0,1.f,0,1.f);
    else
    	gl_FragColor = texelVal.brga;
}

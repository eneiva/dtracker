#pragma once

#include "GLES2/gl2.h"
#include "EGL/egl.h"
#include "EGL/eglext.h"

void InitGraphics(bool convertToHSI);
void ReleaseGraphics();
void BeginFrame();
void EndFrame();

class GfxShader
{
	GLchar* Src;
	GLuint Id;
	GLuint GlShaderType;

public:

	GfxShader() : Src(NULL), Id(0), GlShaderType(0) {}
	~GfxShader() { if(Src) delete[] Src; }

	bool LoadVertexShader(const char* filename);
	bool LoadFragmentShader(const char* filename);
	GLuint GetId() { return Id; }
};

class GfxProgram
{
	GfxShader* VertexShader;
	GfxShader* FragmentShader;
	GLuint Id;

public:

	GfxProgram() {}
	~GfxProgram() {}

	bool Create(GfxShader* vertex_shader, GfxShader* fragment_shader);
	GLuint GetId() { return Id; }
};

class GfxTexture
{
	int Width;
	int Height;
	GLuint Id;

public:

	GfxTexture() : Width(0), Height(0) {}
	~GfxTexture() {}

	bool Create(int width, int height, const void* data = NULL);
	void SetPixels(const void* data, bool user_argb_conversion);
	GLuint GetId() { return Id; }
};

void DrawTextureRect(GfxTexture* texture, float x0, float y0, float x1, float y1);

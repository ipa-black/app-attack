package com.google.android.exoplayer2.util;

import android.content.Context;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.GLU;
import androidx.work.Data;
import java.io.IOException;
import java.io.InputStream;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class GlUtil {
    private static final String EXTENSION_PROTECTED_CONTENT = "EGL_EXT_protected_content";
    private static final String EXTENSION_SURFACELESS_CONTEXT = "EGL_KHR_surfaceless_context";
    private static final int GL_SAMPLER_EXTERNAL_2D_Y2Y_EXT = 35815;
    public static final int RECTANGLE_VERTICES_COUNT = 4;
    private static final String TAG = "GlUtil";
    public static boolean glAssertionsEnabled = false;
    private static final int[] EGL_WINDOW_SURFACE_ATTRIBUTES_NONE = {12344};
    private static final int EGL_GL_COLORSPACE_KHR = 12445;
    private static final int EGL_GL_COLORSPACE_BT2020_PQ_EXT = 13120;
    private static final int[] EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_PQ = {EGL_GL_COLORSPACE_KHR, EGL_GL_COLORSPACE_BT2020_PQ_EXT, 12344};
    private static final int[] EGL_CONFIG_ATTRIBUTES_RGBA_8888 = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12344};
    private static final int[] EGL_CONFIG_ATTRIBUTES_RGBA_1010102 = {12352, 4, 12324, 10, 12323, 10, 12322, 10, 12321, 2, 12325, 0, 12326, 0, 12344};

    /* loaded from: classes3.dex */
    public static final class GlException extends RuntimeException {
        public GlException(String str) {
            super(str);
        }
    }

    /* loaded from: classes3.dex */
    public static final class Program {
        private final Map<String, Attribute> attributeByName;
        private final Attribute[] attributes;
        private final int programId;
        private final Map<String, Uniform> uniformByName;
        private final Uniform[] uniforms;

        public Program(Context context, String str, String str2) throws IOException {
            this(GlUtil.loadAsset(context, str), GlUtil.loadAsset(context, str2));
        }

        public Program(String str, String str2) {
            int glCreateProgram = GLES20.glCreateProgram();
            this.programId = glCreateProgram;
            GlUtil.checkGlError();
            GlUtil.addShader(glCreateProgram, 35633, str);
            GlUtil.addShader(glCreateProgram, 35632, str2);
            GLES20.glLinkProgram(glCreateProgram);
            int[] iArr = {0};
            GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
            if (iArr[0] != 1) {
                String valueOf = String.valueOf(GLES20.glGetProgramInfoLog(glCreateProgram));
                GlUtil.throwGlException(valueOf.length() != 0 ? "Unable to link shader program: \n".concat(valueOf) : new String("Unable to link shader program: \n"));
            }
            GLES20.glUseProgram(glCreateProgram);
            this.attributeByName = new HashMap();
            int[] iArr2 = new int[1];
            GLES20.glGetProgramiv(glCreateProgram, 35721, iArr2, 0);
            this.attributes = new Attribute[iArr2[0]];
            for (int i = 0; i < iArr2[0]; i++) {
                Attribute create = Attribute.create(this.programId, i);
                this.attributes[i] = create;
                this.attributeByName.put(create.name, create);
            }
            this.uniformByName = new HashMap();
            int[] iArr3 = new int[1];
            GLES20.glGetProgramiv(this.programId, 35718, iArr3, 0);
            this.uniforms = new Uniform[iArr3[0]];
            for (int i2 = 0; i2 < iArr3[0]; i2++) {
                Uniform create2 = Uniform.create(this.programId, i2);
                this.uniforms[i2] = create2;
                this.uniformByName.put(create2.name, create2);
            }
            GlUtil.checkGlError();
        }

        public void use() {
            GLES20.glUseProgram(this.programId);
            GlUtil.checkGlError();
        }

        public void delete() {
            GLES20.glDeleteProgram(this.programId);
            GlUtil.checkGlError();
        }

        public int getAttributeArrayLocationAndEnable(String str) {
            int attributeLocation = getAttributeLocation(str);
            GLES20.glEnableVertexAttribArray(attributeLocation);
            GlUtil.checkGlError();
            return attributeLocation;
        }

        private int getAttributeLocation(String str) {
            return GlUtil.getAttributeLocation(this.programId, str);
        }

        public int getUniformLocation(String str) {
            return GlUtil.getUniformLocation(this.programId, str);
        }

        public void setBufferAttribute(String str, float[] fArr, int i) {
            ((Attribute) Assertions.checkNotNull(this.attributeByName.get(str))).setBuffer(fArr, i);
        }

        public void setSamplerTexIdUniform(String str, int i, int i2) {
            ((Uniform) Assertions.checkNotNull(this.uniformByName.get(str))).setSamplerTexId(i, i2);
        }

        public void setFloatUniform(String str, float f2) {
            ((Uniform) Assertions.checkNotNull(this.uniformByName.get(str))).setFloat(f2);
        }

        public void setFloatsUniform(String str, float[] fArr) {
            ((Uniform) Assertions.checkNotNull(this.uniformByName.get(str))).setFloats(fArr);
        }

        public void bindAttributesAndUniforms() {
            for (Attribute attribute : this.attributes) {
                attribute.bind();
            }
            for (Uniform uniform : this.uniforms) {
                uniform.bind();
            }
        }
    }

    private GlUtil() {
    }

    public static float[] getNormalizedCoordinateBounds() {
        return new float[]{-1.0f, -1.0f, 0.0f, 1.0f, 1.0f, -1.0f, 0.0f, 1.0f, -1.0f, 1.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f};
    }

    public static float[] getTextureCoordinateBounds() {
        return new float[]{0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f};
    }

    public static boolean isProtectedContentExtensionSupported(Context context) {
        String eglQueryString;
        if (Util.SDK_INT < 24) {
            return false;
        }
        if (Util.SDK_INT >= 26 || !("samsung".equals(Util.MANUFACTURER) || "XT1650".equals(Util.MODEL))) {
            return (Util.SDK_INT >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && eglQueryString.contains(EXTENSION_PROTECTED_CONTENT);
        }
        return false;
    }

    public static boolean isSurfacelessContextExtensionSupported() {
        String eglQueryString;
        return Util.SDK_INT >= 17 && (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && eglQueryString.contains(EXTENSION_SURFACELESS_CONTEXT);
    }

    public static EGLDisplay createEglDisplay() {
        return Api17.createEglDisplay();
    }

    public static EGLContext createEglContext(EGLDisplay eGLDisplay) {
        return Api17.createEglContext(eGLDisplay, 2, EGL_CONFIG_ATTRIBUTES_RGBA_8888);
    }

    public static EGLContext createEglContextEs3Rgba1010102(EGLDisplay eGLDisplay) {
        return Api17.createEglContext(eGLDisplay, 3, EGL_CONFIG_ATTRIBUTES_RGBA_1010102);
    }

    public static EGLSurface getEglSurface(EGLDisplay eGLDisplay, Object obj) {
        return Api17.getEglSurface(eGLDisplay, obj, EGL_CONFIG_ATTRIBUTES_RGBA_8888, EGL_WINDOW_SURFACE_ATTRIBUTES_NONE);
    }

    public static EGLSurface getEglSurfaceBt2020Pq(EGLDisplay eGLDisplay, Object obj) {
        return Api17.getEglSurface(eGLDisplay, obj, EGL_CONFIG_ATTRIBUTES_RGBA_1010102, EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_PQ);
    }

    public static void checkGlError() {
        int i = 0;
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError == 0) {
                break;
            }
            String valueOf = String.valueOf(GLU.gluErrorString(glGetError));
            Log.e(TAG, valueOf.length() != 0 ? "glError: ".concat(valueOf) : new String("glError: "));
            i = glGetError;
        }
        if (i != 0) {
            String valueOf2 = String.valueOf(GLU.gluErrorString(i));
            throwGlException(valueOf2.length() != 0 ? "glError: ".concat(valueOf2) : new String("glError: "));
        }
    }

    public static void focusSurface(EGLDisplay eGLDisplay, EGLContext eGLContext, EGLSurface eGLSurface, int i, int i2) {
        Api17.focusSurface(eGLDisplay, eGLContext, eGLSurface, i, i2);
    }

    public static void deleteTexture(int i) {
        GLES20.glDeleteTextures(1, new int[]{i}, 0);
        checkGlError();
    }

    public static void destroyEglContext(EGLDisplay eGLDisplay, EGLContext eGLContext) {
        Api17.destroyEglContext(eGLDisplay, eGLContext);
    }

    public static FloatBuffer createBuffer(float[] fArr) {
        return (FloatBuffer) createBuffer(fArr.length).put(fArr).flip();
    }

    public static FloatBuffer createBuffer(int i) {
        return ByteBuffer.allocateDirect(i * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    }

    public static String loadAsset(Context context, String str) throws IOException {
        InputStream inputStream = null;
        try {
            inputStream = context.getAssets().open(str);
            return Util.fromUtf8Bytes(Util.toByteArray(inputStream));
        } finally {
            Util.closeQuietly(inputStream);
        }
    }

    public static int createExternalTexture() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, IntBuffer.wrap(iArr));
        GLES20.glBindTexture(36197, iArr[0]);
        GLES20.glTexParameteri(36197, 10241, 9729);
        GLES20.glTexParameteri(36197, Data.MAX_DATA_BYTES, 9729);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        checkGlError();
        return iArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void addShader(int i, int i2, String str) {
        int glCreateShader = GLES20.glCreateShader(i2);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 1) {
            String glGetShaderInfoLog = GLES20.glGetShaderInfoLog(glCreateShader);
            throwGlException(new StringBuilder(String.valueOf(glGetShaderInfoLog).length() + 10 + String.valueOf(str).length()).append(glGetShaderInfoLog).append(", source: ").append(str).toString());
        }
        GLES20.glAttachShader(i, glCreateShader);
        GLES20.glDeleteShader(glCreateShader);
        checkGlError();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getAttributeLocation(int i, String str) {
        return GLES20.glGetAttribLocation(i, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getUniformLocation(int i, String str) {
        return GLES20.glGetUniformLocation(i, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void throwGlException(String str) {
        Log.e(TAG, str);
        if (glAssertionsEnabled) {
            throw new GlException(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void checkEglException(boolean z, String str) {
        if (z) {
            return;
        }
        throwGlException(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int strlen(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            if (bArr[i] == 0) {
                return i;
            }
        }
        return bArr.length;
    }

    /* loaded from: classes3.dex */
    private static final class Attribute {
        private Buffer buffer;
        private final int index;
        private final int location;
        public final String name;
        private int size;

        public static Attribute create(int i, int i2) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i, 35722, iArr, 0);
            int i3 = iArr[0];
            byte[] bArr = new byte[i3];
            GLES20.glGetActiveAttrib(i, i2, i3, new int[1], 0, new int[1], 0, new int[1], 0, bArr, 0);
            String str = new String(bArr, 0, GlUtil.strlen(bArr));
            return new Attribute(str, i2, GlUtil.getAttributeLocation(i, str));
        }

        private Attribute(String str, int i, int i2) {
            this.name = str;
            this.index = i;
            this.location = i2;
        }

        public void setBuffer(float[] fArr, int i) {
            this.buffer = GlUtil.createBuffer(fArr);
            this.size = i;
        }

        public void bind() {
            GLES20.glBindBuffer(34962, 0);
            GLES20.glVertexAttribPointer(this.location, this.size, 5126, false, 0, (Buffer) Assertions.checkNotNull(this.buffer, "call setBuffer before bind"));
            GLES20.glEnableVertexAttribArray(this.index);
            GlUtil.checkGlError();
        }
    }

    /* loaded from: classes3.dex */
    private static final class Uniform {
        private final int location;
        public final String name;
        private int texId;
        private final int type;
        private int unit;
        private final float[] value = new float[16];

        public static Uniform create(int i, int i2) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i, 35719, iArr, 0);
            int[] iArr2 = new int[1];
            int i3 = iArr[0];
            byte[] bArr = new byte[i3];
            GLES20.glGetActiveUniform(i, i2, i3, new int[1], 0, new int[1], 0, iArr2, 0, bArr, 0);
            String str = new String(bArr, 0, GlUtil.strlen(bArr));
            return new Uniform(str, GlUtil.getUniformLocation(i, str), iArr2[0]);
        }

        private Uniform(String str, int i, int i2) {
            this.name = str;
            this.location = i;
            this.type = i2;
        }

        public void setSamplerTexId(int i, int i2) {
            this.texId = i;
            this.unit = i2;
        }

        public void setFloat(float f2) {
            this.value[0] = f2;
        }

        public void setFloats(float[] fArr) {
            System.arraycopy(fArr, 0, this.value, 0, fArr.length);
        }

        public void bind() {
            int i = this.type;
            if (i == 5126) {
                GLES20.glUniform1fv(this.location, 1, this.value, 0);
                GlUtil.checkGlError();
            } else if (i == 35675) {
                GLES20.glUniformMatrix3fv(this.location, 1, false, this.value, 0);
                GlUtil.checkGlError();
            } else if (i == 35676) {
                GLES20.glUniformMatrix4fv(this.location, 1, false, this.value, 0);
                GlUtil.checkGlError();
            } else if (this.texId == 0) {
                throw new IllegalStateException("No call to setSamplerTexId() before bind.");
            } else {
                GLES20.glActiveTexture(this.unit + 33984);
                int i2 = this.type;
                if (i2 == 36198 || i2 == GlUtil.GL_SAMPLER_EXTERNAL_2D_Y2Y_EXT) {
                    GLES20.glBindTexture(36197, this.texId);
                } else if (i2 == 35678) {
                    GLES20.glBindTexture(3553, this.texId);
                } else {
                    throw new IllegalStateException(new StringBuilder(36).append("Unexpected uniform type: ").append(this.type).toString());
                }
                GLES20.glUniform1i(this.location, this.unit);
                GLES20.glTexParameteri(3553, Data.MAX_DATA_BYTES, 9729);
                GLES20.glTexParameteri(3553, 10241, 9729);
                GLES20.glTexParameteri(3553, 10242, 33071);
                GLES20.glTexParameteri(3553, 10243, 33071);
                GlUtil.checkGlError();
            }
        }
    }

    /* loaded from: classes3.dex */
    private static final class Api17 {
        private Api17() {
        }

        public static EGLDisplay createEglDisplay() {
            EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
            GlUtil.checkEglException(!eglGetDisplay.equals(EGL14.EGL_NO_DISPLAY), "No EGL display.");
            if (!EGL14.eglInitialize(eglGetDisplay, new int[1], 0, new int[1], 0)) {
                GlUtil.throwGlException("Error in eglInitialize.");
            }
            GlUtil.checkGlError();
            return eglGetDisplay;
        }

        public static EGLContext createEglContext(EGLDisplay eGLDisplay, int i, int[] iArr) {
            EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay, getEglConfig(eGLDisplay, iArr), EGL14.EGL_NO_CONTEXT, new int[]{12440, i, 12344}, 0);
            if (eglCreateContext == null) {
                EGL14.eglTerminate(eGLDisplay);
                GlUtil.throwGlException(new StringBuilder(103).append("eglCreateContext() failed to create a valid context. The device may not support EGL version ").append(i).toString());
            }
            GlUtil.checkGlError();
            return eglCreateContext;
        }

        public static EGLSurface getEglSurface(EGLDisplay eGLDisplay, Object obj, int[] iArr, int[] iArr2) {
            return EGL14.eglCreateWindowSurface(eGLDisplay, getEglConfig(eGLDisplay, iArr), obj, iArr2, 0);
        }

        public static void focusSurface(EGLDisplay eGLDisplay, EGLContext eGLContext, EGLSurface eGLSurface, int i, int i2) {
            int[] iArr = new int[1];
            GLES20.glGetIntegerv(36006, iArr, 0);
            if (iArr[0] != 0) {
                GLES20.glBindFramebuffer(36160, 0);
            }
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eGLContext);
            GLES20.glViewport(0, 0, i, i2);
        }

        public static void destroyEglContext(EGLDisplay eGLDisplay, EGLContext eGLContext) {
            if (eGLDisplay == null) {
                return;
            }
            EGL14.eglMakeCurrent(eGLDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
            int eglGetError = EGL14.eglGetError();
            GlUtil.checkEglException(eglGetError == 12288, new StringBuilder(36).append("Error releasing context: ").append(eglGetError).toString());
            if (eGLContext != null) {
                EGL14.eglDestroyContext(eGLDisplay, eGLContext);
                int eglGetError2 = EGL14.eglGetError();
                GlUtil.checkEglException(eglGetError2 == 12288, new StringBuilder(37).append("Error destroying context: ").append(eglGetError2).toString());
            }
            EGL14.eglReleaseThread();
            int eglGetError3 = EGL14.eglGetError();
            GlUtil.checkEglException(eglGetError3 == 12288, new StringBuilder(35).append("Error releasing thread: ").append(eglGetError3).toString());
            EGL14.eglTerminate(eGLDisplay);
            int eglGetError4 = EGL14.eglGetError();
            GlUtil.checkEglException(eglGetError4 == 12288, new StringBuilder(38).append("Error terminating display: ").append(eglGetError4).toString());
        }

        private static EGLConfig getEglConfig(EGLDisplay eGLDisplay, int[] iArr) {
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            if (!EGL14.eglChooseConfig(eGLDisplay, iArr, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
                GlUtil.throwGlException("eglChooseConfig failed.");
            }
            return eGLConfigArr[0];
        }
    }
}

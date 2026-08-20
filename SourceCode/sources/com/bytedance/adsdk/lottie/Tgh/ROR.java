package com.bytedance.adsdk.lottie.Tgh;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.RectF;
import android.provider.Settings;
import com.bytedance.adsdk.lottie.Qhi.Qhi.EBS;
import java.io.Closeable;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import javax.net.ssl.SSLException;
/* compiled from: Utils.java */
/* loaded from: classes2.dex */
public final class ROR {
    private static final ThreadLocal<PathMeasure> Qhi = new ThreadLocal<PathMeasure>() { // from class: com.bytedance.adsdk.lottie.Tgh.ROR.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: Qhi */
        public PathMeasure initialValue() {
            return new PathMeasure();
        }
    };
    private static final ThreadLocal<Path> cJ = new ThreadLocal<Path>() { // from class: com.bytedance.adsdk.lottie.Tgh.ROR.2
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: Qhi */
        public Path initialValue() {
            return new Path();
        }
    };
    private static final ThreadLocal<Path> ac = new ThreadLocal<Path>() { // from class: com.bytedance.adsdk.lottie.Tgh.ROR.3
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: Qhi */
        public Path initialValue() {
            return new Path();
        }
    };
    private static final ThreadLocal<float[]> CJ = new ThreadLocal<float[]>() { // from class: com.bytedance.adsdk.lottie.Tgh.ROR.4
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: Qhi */
        public float[] initialValue() {
            return new float[4];
        }
    };
    private static final float fl = (float) (Math.sqrt(2.0d) / 2.0d);

    public static int Qhi(float f2, float f3, float f4, float f5) {
        int i = f2 != 0.0f ? (int) (f2 * 527.0f) : 17;
        if (f3 != 0.0f) {
            i = (int) (i * 31 * f3);
        }
        if (f4 != 0.0f) {
            i = (int) (i * 31 * f4);
        }
        return f5 != 0.0f ? (int) (i * 31 * f5) : i;
    }

    public static boolean Qhi(int i, int i2, int i3, int i4, int i5, int i6) {
        if (i < i4) {
            return false;
        }
        if (i > i4) {
            return true;
        }
        if (i2 < i5) {
            return false;
        }
        return i2 > i5 || i3 >= i6;
    }

    public static Path Qhi(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        Path path = new Path();
        path.moveTo(pointF.x, pointF.y);
        if (pointF3 != null && pointF4 != null && (pointF3.length() != 0.0f || pointF4.length() != 0.0f)) {
            path.cubicTo(pointF3.x + pointF.x, pointF.y + pointF3.y, pointF2.x + pointF4.x, pointF2.y + pointF4.y, pointF2.x, pointF2.y);
        } else {
            path.lineTo(pointF2.x, pointF2.y);
        }
        return path;
    }

    public static void Qhi(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    public static float Qhi(Matrix matrix) {
        float[] fArr = CJ.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        float f2 = fl;
        fArr[2] = f2;
        fArr[3] = f2;
        matrix.mapPoints(fArr);
        return (float) Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1]);
    }

    public static boolean cJ(Matrix matrix) {
        float[] fArr = CJ.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 37394.73f;
        fArr[3] = 39575.234f;
        matrix.mapPoints(fArr);
        return fArr[0] == fArr[2] || fArr[1] == fArr[3];
    }

    public static void Qhi(Path path, EBS ebs) {
        if (ebs == null || ebs.Tgh()) {
            return;
        }
        Qhi(path, ((com.bytedance.adsdk.lottie.Qhi.cJ.fl) ebs.ac()).hm() / 100.0f, ((com.bytedance.adsdk.lottie.Qhi.cJ.fl) ebs.CJ()).hm() / 100.0f, ((com.bytedance.adsdk.lottie.Qhi.cJ.fl) ebs.fl()).hm() / 360.0f);
    }

    public static void Qhi(Path path, float f2, float f3, float f4) {
        com.bytedance.adsdk.lottie.Tgh.Qhi("applyTrimPathIfNeeded");
        PathMeasure pathMeasure = Qhi.get();
        Path path2 = cJ.get();
        Path path3 = ac.get();
        pathMeasure.setPath(path, false);
        float length = pathMeasure.getLength();
        if (f2 == 1.0f && f3 == 0.0f) {
            com.bytedance.adsdk.lottie.Tgh.cJ("applyTrimPathIfNeeded");
        } else if (length < 1.0f || Math.abs((f3 - f2) - 1.0f) < 0.01d) {
            com.bytedance.adsdk.lottie.Tgh.cJ("applyTrimPathIfNeeded");
        } else {
            float f5 = f2 * length;
            float f6 = f3 * length;
            float f7 = f4 * length;
            float min = Math.min(f5, f6) + f7;
            float max = Math.max(f5, f6) + f7;
            if (min >= length && max >= length) {
                min = Tgh.Qhi(min, length);
                max = Tgh.Qhi(max, length);
            }
            if (min < 0.0f) {
                min = Tgh.Qhi(min, length);
            }
            if (max < 0.0f) {
                max = Tgh.Qhi(max, length);
            }
            int i = (min > max ? 1 : (min == max ? 0 : -1));
            if (i == 0) {
                path.reset();
                com.bytedance.adsdk.lottie.Tgh.cJ("applyTrimPathIfNeeded");
                return;
            }
            if (i >= 0) {
                min -= length;
            }
            path2.reset();
            pathMeasure.getSegment(min, max, path2, true);
            if (max > length) {
                path3.reset();
                pathMeasure.getSegment(0.0f, max % length, path3, true);
                path2.addPath(path3);
            } else if (min < 0.0f) {
                path3.reset();
                pathMeasure.getSegment(min + length, length, path3, true);
                path2.addPath(path3);
            }
            path.set(path2);
            com.bytedance.adsdk.lottie.Tgh.cJ("applyTrimPathIfNeeded");
        }
    }

    public static float Qhi() {
        return Resources.getSystem().getDisplayMetrics().density;
    }

    public static float Qhi(Context context) {
        return Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
    }

    public static Bitmap Qhi(Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            return bitmap;
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i, i2, true);
        bitmap.recycle();
        return createScaledBitmap;
    }

    public static boolean Qhi(Throwable th) {
        return (th instanceof SocketException) || (th instanceof ClosedChannelException) || (th instanceof InterruptedIOException) || (th instanceof ProtocolException) || (th instanceof SSLException) || (th instanceof UnknownHostException) || (th instanceof UnknownServiceException);
    }

    public static void Qhi(Canvas canvas, RectF rectF, Paint paint) {
        Qhi(canvas, rectF, paint, 31);
    }

    public static void Qhi(Canvas canvas, RectF rectF, Paint paint, int i) {
        com.bytedance.adsdk.lottie.Tgh.Qhi("Utils#saveLayer");
        canvas.saveLayer(rectF, paint);
        com.bytedance.adsdk.lottie.Tgh.cJ("Utils#saveLayer");
    }
}

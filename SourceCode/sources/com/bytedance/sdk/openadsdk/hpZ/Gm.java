package com.bytedance.sdk.openadsdk.hpZ;

import android.content.Context;
import android.hardware.SensorEventListener;
import android.os.Vibrator;
import java.lang.ref.WeakReference;
/* compiled from: SensorHub.java */
/* loaded from: classes2.dex */
public class Gm {
    public static WeakReference<Qhi> Qhi;
    protected static final float[] cJ = new float[3];
    protected static final float[] ac = new float[3];
    protected static final float[] CJ = new float[9];
    protected static final float[] fl = new float[3];

    public static void Qhi(Context context, SensorEventListener sensorEventListener) {
    }

    public static void Qhi(Qhi qhi) {
        Qhi = new WeakReference<>(qhi);
    }

    public static void Qhi(Context context, SensorEventListener sensorEventListener, int i) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            WeakReference<Qhi> weakReference = Qhi;
            if (weakReference != null) {
                weakReference.get();
            }
        } catch (Throwable th) {
            Sf.Qhi("SensorHub", "startListenAccelerometer error", th);
        }
    }

    public static void cJ(Context context, SensorEventListener sensorEventListener, int i) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            WeakReference<Qhi> weakReference = Qhi;
            if (weakReference != null) {
                weakReference.get();
            }
        } catch (Throwable th) {
            Sf.Qhi("SensorHub", "startListenGyroscope error", th);
        }
    }

    public static void ac(Context context, SensorEventListener sensorEventListener, int i) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            WeakReference<Qhi> weakReference = Qhi;
            if (weakReference != null) {
                weakReference.get();
            }
        } catch (Throwable th) {
            Sf.Qhi("SensorHub", "startListenLinearAcceleration error", th);
        }
    }

    public static void CJ(Context context, SensorEventListener sensorEventListener, int i) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            WeakReference<Qhi> weakReference = Qhi;
            if (weakReference != null) {
                weakReference.get();
            }
        } catch (Throwable th) {
            Sf.Qhi("SensorHub", "startListenRotationVector err", th);
        }
    }

    public static void Qhi(Context context, long j) {
        if (context == null) {
            return;
        }
        ((Vibrator) context.getSystemService("vibrator")).vibrate(j);
    }
}

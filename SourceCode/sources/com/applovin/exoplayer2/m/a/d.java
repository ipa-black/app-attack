package com.applovin.exoplayer2.m.a;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
/* loaded from: classes.dex */
final class d implements SensorEventListener {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f3890a;

    /* renamed from: b  reason: collision with root package name */
    private final float[] f3891b;

    /* renamed from: c  reason: collision with root package name */
    private final float[] f3892c;

    /* renamed from: d  reason: collision with root package name */
    private final float[] f3893d;

    /* renamed from: e  reason: collision with root package name */
    private final Display f3894e;

    /* renamed from: f  reason: collision with root package name */
    private final a[] f3895f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f3896g;

    /* loaded from: classes.dex */
    public interface a {
        void a(float[] fArr, float f2);
    }

    private void a(float[] fArr) {
        if (!this.f3896g) {
            c.a(this.f3892c, fArr);
            this.f3896g = true;
        }
        float[] fArr2 = this.f3891b;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        Matrix.multiplyMM(fArr, 0, this.f3891b, 0, this.f3892c, 0);
    }

    private void a(float[] fArr, float f2) {
        for (a aVar : this.f3895f) {
            aVar.a(fArr, f2);
        }
    }

    private void a(float[] fArr, int i) {
        if (i != 0) {
            int i2 = TsExtractor.TS_STREAM_TYPE_AC3;
            int i3 = 1;
            if (i == 1) {
                i3 = 129;
                i2 = 2;
            } else if (i == 2) {
                i3 = 130;
            } else if (i != 3) {
                throw new IllegalStateException();
            } else {
                i2 = 130;
            }
            float[] fArr2 = this.f3891b;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            SensorManager.remapCoordinateSystem(this.f3891b, i2, i3, fArr);
        }
    }

    private float b(float[] fArr) {
        SensorManager.remapCoordinateSystem(fArr, 1, 131, this.f3891b);
        SensorManager.getOrientation(this.f3891b, this.f3893d);
        return this.f3893d[2];
    }

    private static void c(float[] fArr) {
        Matrix.rotateM(fArr, 0, 90.0f, 1.0f, 0.0f, 0.0f);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        SensorManager.getRotationMatrixFromVector(this.f3890a, sensorEvent.values);
        a(this.f3890a, this.f3894e.getRotation());
        float b2 = b(this.f3890a);
        c(this.f3890a);
        a(this.f3890a);
        a(this.f3890a, b2);
    }
}

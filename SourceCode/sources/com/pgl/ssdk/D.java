package com.pgl.ssdk;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import java.util.ArrayList;
import java.util.List;
/* compiled from: SDKSensorCollector.java */
/* loaded from: classes3.dex */
public final class D implements SensorEventListener {

    /* renamed from: f  reason: collision with root package name */
    private static D f12154f;

    /* renamed from: a  reason: collision with root package name */
    private SensorManager f12155a;

    /* renamed from: b  reason: collision with root package name */
    private int f12156b;

    /* renamed from: c  reason: collision with root package name */
    private int f12157c = 0;

    /* renamed from: d  reason: collision with root package name */
    private float[] f12158d = new float[3];

    /* renamed from: e  reason: collision with root package name */
    private List<String> f12159e = new ArrayList();

    private D(Context context) {
        this.f12155a = null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            try {
                this.f12155a = (SensorManager) applicationContext.getSystemService("sensor");
            } catch (Throwable unused) {
            }
        }
    }

    private synchronized void c() {
        try {
            SensorManager sensorManager = this.f12155a;
            if (sensorManager != null) {
                int i = this.f12156b - 1;
                this.f12156b = i;
                if (i == 0) {
                    sensorManager.unregisterListener(this);
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0017, code lost:
        if (r7.f12155a.registerListener(r7, r3.getDefaultSensor(1), 3) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a() {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.ssdk.D.a():void");
    }

    public synchronized String b() {
        String str = "";
        int size = this.f12159e.size();
        if (size <= 0) {
            return "";
        }
        if (size == 1) {
            return this.f12159e.get(0);
        }
        try {
            List<String> list = this.f12159e;
            int i = size - 10;
            if (i <= 0) {
                i = 0;
            }
            List<String> subList = list.subList(i, size);
            for (int i2 = 0; i2 < subList.size(); i2++) {
                str = str + subList.get(i2) + "|";
            }
            str = str.substring(0, str.length() - 1);
        } catch (Throwable unused) {
        }
        return str;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        this.f12158d = sensorEvent.values;
        this.f12157c = 1;
    }

    public static D a(Context context) {
        if (f12154f == null) {
            synchronized (D.class) {
                if (f12154f == null) {
                    f12154f = new D(context);
                }
            }
        }
        return f12154f;
    }
}

package com.applovin.impl.sdk.utils;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.SessionTracker;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class o implements SensorEventListener, AppLovinBroadcastManager.Receiver {

    /* renamed from: a  reason: collision with root package name */
    private final int f6180a;

    /* renamed from: b  reason: collision with root package name */
    private final float f6181b;

    /* renamed from: c  reason: collision with root package name */
    private final SensorManager f6182c;

    /* renamed from: d  reason: collision with root package name */
    private final Sensor f6183d;

    /* renamed from: e  reason: collision with root package name */
    private final Sensor f6184e;

    /* renamed from: f  reason: collision with root package name */
    private final com.applovin.impl.sdk.n f6185f;

    /* renamed from: g  reason: collision with root package name */
    private float[] f6186g;

    /* renamed from: h  reason: collision with root package name */
    private float f6187h;

    public o(com.applovin.impl.sdk.n nVar) {
        this.f6185f = nVar;
        SensorManager sensorManager = (SensorManager) nVar.P().getSystemService("sensor");
        this.f6182c = sensorManager;
        this.f6183d = sensorManager.getDefaultSensor(9);
        this.f6184e = sensorManager.getDefaultSensor(4);
        this.f6180a = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.ea)).intValue();
        this.f6181b = ((Float) nVar.a(com.applovin.impl.sdk.c.b.dZ)).floatValue();
        nVar.am().registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
        nVar.am().registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
    }

    public void a() {
        this.f6182c.unregisterListener(this);
        if (((Boolean) this.f6185f.O().a(com.applovin.impl.sdk.c.b.dX)).booleanValue()) {
            this.f6182c.registerListener(this, this.f6183d, (int) TimeUnit.MILLISECONDS.toMicros(this.f6180a));
        }
        if (((Boolean) this.f6185f.O().a(com.applovin.impl.sdk.c.b.dY)).booleanValue()) {
            this.f6182c.registerListener(this, this.f6184e, (int) TimeUnit.MILLISECONDS.toMicros(this.f6180a));
        }
    }

    public float b() {
        return this.f6187h;
    }

    public float c() {
        float[] fArr = this.f6186g;
        if (fArr == null) {
            return 0.0f;
        }
        return (float) Math.toDegrees(Math.acos(fArr[2] / 9.81f));
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            this.f6182c.unregisterListener(this);
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            a();
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() == 9) {
            this.f6186g = sensorEvent.values;
        } else if (sensorEvent.sensor.getType() == 4) {
            float f2 = this.f6187h * this.f6181b;
            this.f6187h = f2;
            this.f6187h = f2 + Math.abs(sensorEvent.values[0]) + Math.abs(sensorEvent.values[1]) + Math.abs(sensorEvent.values[2]);
        }
    }
}

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
public class j implements SensorEventListener, AppLovinBroadcastManager.Receiver {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.n f6082a;

    /* renamed from: b  reason: collision with root package name */
    private final SensorManager f6083b;

    /* renamed from: c  reason: collision with root package name */
    private final Sensor f6084c;

    /* renamed from: d  reason: collision with root package name */
    private final a f6085d;

    /* renamed from: e  reason: collision with root package name */
    private float f6086e;

    /* loaded from: classes.dex */
    public interface a {
        void d();

        void e();
    }

    public j(com.applovin.impl.sdk.n nVar, a aVar) {
        this.f6082a = nVar;
        SensorManager sensorManager = (SensorManager) nVar.P().getSystemService("sensor");
        this.f6083b = sensorManager;
        this.f6084c = sensorManager.getDefaultSensor(1);
        this.f6085d = aVar;
    }

    public void a() {
        this.f6083b.unregisterListener(this);
        this.f6083b.registerListener(this, this.f6084c, (int) TimeUnit.MILLISECONDS.toMicros(50L));
        this.f6082a.am().unregisterReceiver(this);
        this.f6082a.am().registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
        this.f6082a.am().registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            this.f6083b.unregisterListener(this);
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            a();
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() == 1) {
            float max = Math.max(Math.min(sensorEvent.values[2] / 9.81f, 1.0f), -1.0f);
            float f2 = this.f6086e;
            float f3 = (f2 * 0.5f) + (max * 0.5f);
            this.f6086e = f3;
            if (f2 < 0.8f && f3 > 0.8f) {
                this.f6085d.e();
            } else if (f2 <= -0.8f || f3 >= -0.8f) {
            } else {
                this.f6085d.d();
            }
        }
    }
}

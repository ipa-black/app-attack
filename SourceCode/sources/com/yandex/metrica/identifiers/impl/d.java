package com.yandex.metrica.identifiers.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
/* loaded from: classes3.dex */
public class d implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private final Intent f12578a;

    /* renamed from: b  reason: collision with root package name */
    private IBinder f12579b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f12580c = new Object();

    public d(Intent intent, String str) {
        this.f12578a = intent;
        String.format("[AdServiceConnection-%s]", str);
    }

    public Intent a() {
        return this.f12578a;
    }

    public IBinder a(long j) {
        if (this.f12579b == null) {
            synchronized (this.f12580c) {
                if (this.f12579b == null) {
                    try {
                        this.f12580c.wait(j);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
        return this.f12579b;
    }

    public boolean a(Context context) {
        return context.bindService(this.f12578a, this, 1);
    }

    public void b(Context context) {
        synchronized (this.f12580c) {
            this.f12579b = null;
            this.f12580c.notifyAll();
        }
        context.unbindService(this);
    }

    @Override // android.content.ServiceConnection
    public void onBindingDied(ComponentName componentName) {
        synchronized (this.f12580c) {
            this.f12579b = null;
            this.f12580c.notifyAll();
        }
    }

    @Override // android.content.ServiceConnection
    public void onNullBinding(ComponentName componentName) {
        synchronized (this.f12580c) {
            this.f12580c.notifyAll();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.f12580c) {
            this.f12579b = iBinder;
            this.f12580c.notifyAll();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f12580c) {
            this.f12579b = null;
            this.f12580c.notifyAll();
        }
    }
}

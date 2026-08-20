package com.yandex.metrica.impl.ob;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
/* renamed from: com.yandex.metrica.impl.ob.b0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1423b0 {

    /* renamed from: a  reason: collision with root package name */
    private final BroadcastReceiver f14429a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f14430b = false;

    /* renamed from: com.yandex.metrica.impl.ob.b0$a */
    /* loaded from: classes5.dex */
    public static class a {
        public C1423b0 a(BroadcastReceiver broadcastReceiver) {
            return new C1423b0(broadcastReceiver);
        }
    }

    public C1423b0(BroadcastReceiver broadcastReceiver) {
        this.f14429a = broadcastReceiver;
    }

    public synchronized Intent a(Context context, IntentFilter intentFilter) {
        Intent intent;
        try {
            intent = context.registerReceiver(this.f14429a, intentFilter);
            try {
                this.f14430b = true;
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            intent = null;
        }
        return intent;
    }

    public synchronized void a(Context context) {
        if (this.f14430b) {
            try {
                context.unregisterReceiver(this.f14429a);
                this.f14430b = false;
            } catch (Throwable unused) {
            }
        }
    }
}

package com.applovin.impl.sdk.utils;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.SessionTracker;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class f implements AppLovinBroadcastManager.Receiver {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<f> f6072a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    private final p f6073b;

    /* renamed from: c  reason: collision with root package name */
    private final com.applovin.impl.sdk.n f6074c;

    private f(long j, com.applovin.impl.sdk.n nVar, final Runnable runnable) {
        this.f6073b = p.a(j, nVar, new Runnable() { // from class: com.applovin.impl.sdk.utils.f.1
            @Override // java.lang.Runnable
            public void run() {
                f.this.a();
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
        this.f6074c = nVar;
        f6072a.add(this);
        nVar.am().registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
        nVar.am().registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
    }

    public static f a(long j, com.applovin.impl.sdk.n nVar, Runnable runnable) {
        return new f(j, nVar, runnable);
    }

    public void a() {
        this.f6073b.d();
        this.f6074c.am().unregisterReceiver(this);
        f6072a.remove(this);
    }

    public long b() {
        return this.f6073b.a();
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            this.f6073b.b();
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            this.f6073b.c();
        }
    }
}

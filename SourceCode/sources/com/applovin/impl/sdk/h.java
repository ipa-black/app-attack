package com.applovin.impl.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class h extends BroadcastReceiver implements AppLovinBroadcastManager.Receiver {

    /* renamed from: a  reason: collision with root package name */
    public static int f5791a = -1;

    /* renamed from: b  reason: collision with root package name */
    private final AudioManager f5792b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f5793c;

    /* renamed from: d  reason: collision with root package name */
    private final n f5794d;

    /* renamed from: e  reason: collision with root package name */
    private final Set<a> f5795e = new HashSet();

    /* renamed from: f  reason: collision with root package name */
    private final Object f5796f = new Object();

    /* renamed from: g  reason: collision with root package name */
    private boolean f5797g;

    /* renamed from: h  reason: collision with root package name */
    private int f5798h;

    /* loaded from: classes.dex */
    public interface a {
        void a(int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(n nVar) {
        this.f5794d = nVar;
        Context P = nVar.P();
        this.f5793c = P;
        this.f5792b = (AudioManager) P.getSystemService("audio");
    }

    public static boolean a(int i) {
        return i == 0 || i == 1;
    }

    private void b() {
        this.f5794d.D();
        if (v.a()) {
            this.f5794d.D().b("AudioSessionManager", "Observing ringer mode...");
        }
        this.f5798h = f5791a;
        this.f5793c.registerReceiver(this, new IntentFilter("android.media.RINGER_MODE_CHANGED"));
        this.f5794d.am().registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
        this.f5794d.am().registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
    }

    private void b(final int i) {
        if (this.f5797g) {
            return;
        }
        this.f5794d.D();
        if (v.a()) {
            this.f5794d.D().b("AudioSessionManager", "Ringer mode is " + i);
        }
        synchronized (this.f5796f) {
            for (final a aVar : this.f5795e) {
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.h.1
                    @Override // java.lang.Runnable
                    public void run() {
                        aVar.a(i);
                    }
                });
            }
        }
    }

    private void c() {
        this.f5794d.D();
        if (v.a()) {
            this.f5794d.D().b("AudioSessionManager", "Stopping observation of mute switch state...");
        }
        this.f5793c.unregisterReceiver(this);
        this.f5794d.am().unregisterReceiver(this);
    }

    public int a() {
        return this.f5792b.getRingerMode();
    }

    public void a(a aVar) {
        synchronized (this.f5796f) {
            if (this.f5795e.contains(aVar)) {
                return;
            }
            this.f5795e.add(aVar);
            if (this.f5795e.size() == 1) {
                b();
            }
        }
    }

    public void b(a aVar) {
        synchronized (this.f5796f) {
            if (this.f5795e.contains(aVar)) {
                this.f5795e.remove(aVar);
                if (this.f5795e.isEmpty()) {
                    c();
                }
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.media.RINGER_MODE_CHANGED".equals(intent.getAction())) {
            b(this.f5792b.getRingerMode());
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            this.f5797g = true;
            this.f5798h = this.f5792b.getRingerMode();
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            this.f5797g = false;
            if (this.f5798h != this.f5792b.getRingerMode()) {
                this.f5798h = f5791a;
                b(this.f5792b.getRingerMode());
            }
        }
    }
}

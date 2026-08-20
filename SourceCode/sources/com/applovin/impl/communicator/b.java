package com.applovin.impl.communicator;

import android.content.Context;
import android.content.Intent;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.v;
import java.lang.ref.WeakReference;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class b implements AppLovinBroadcastManager.Receiver {

    /* renamed from: b  reason: collision with root package name */
    private final String f4611b;

    /* renamed from: c  reason: collision with root package name */
    private final WeakReference<AppLovinCommunicatorSubscriber> f4612c;

    /* renamed from: a  reason: collision with root package name */
    private boolean f4610a = true;

    /* renamed from: d  reason: collision with root package name */
    private final Set<String> f4613d = new LinkedHashSet();

    /* renamed from: e  reason: collision with root package name */
    private final Object f4614e = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(String str, AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber) {
        this.f4611b = str;
        this.f4612c = new WeakReference<>(appLovinCommunicatorSubscriber);
    }

    public String a() {
        return this.f4611b;
    }

    public void a(boolean z) {
        this.f4610a = z;
    }

    public AppLovinCommunicatorSubscriber b() {
        return this.f4612c.get();
    }

    public boolean c() {
        return this.f4610a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber = this.f4612c.get();
            b bVar = (b) obj;
            AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber2 = bVar.f4612c.get();
            if (a().equals(bVar.a())) {
                if (appLovinCommunicatorSubscriber != null) {
                    if (appLovinCommunicatorSubscriber.equals(appLovinCommunicatorSubscriber2)) {
                        return true;
                    }
                } else if (appLovinCommunicatorSubscriber == appLovinCommunicatorSubscriber2) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.f4611b.hashCode();
        AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber = this.f4612c.get();
        return (hashCode * 31) + (appLovinCommunicatorSubscriber != null ? appLovinCommunicatorSubscriber.hashCode() : 0);
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        boolean z;
        if (b() == null) {
            v.i("AppLovinCommunicator", "Message received for GC'd subscriber");
            return;
        }
        CommunicatorMessageImpl communicatorMessageImpl = (CommunicatorMessageImpl) intent;
        synchronized (this.f4614e) {
            if (this.f4613d.contains(communicatorMessageImpl.getUniqueId())) {
                z = false;
            } else {
                this.f4613d.add(communicatorMessageImpl.getUniqueId());
                z = true;
            }
        }
        if (z) {
            b().onMessageReceived((AppLovinCommunicatorMessage) communicatorMessageImpl);
        }
    }
}

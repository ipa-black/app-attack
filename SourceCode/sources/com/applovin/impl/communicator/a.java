package com.applovin.impl.communicator;

import android.content.Context;
import android.content.IntentFilter;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.v;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f4607a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<b> f4608b = new HashSet(32);

    /* renamed from: c  reason: collision with root package name */
    private final Object f4609c = new Object();

    public a(Context context) {
        this.f4607a = context;
    }

    private b a(String str, AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber) {
        for (b bVar : this.f4608b) {
            if (str.equals(bVar.a()) && appLovinCommunicatorSubscriber.equals(bVar.b())) {
                return bVar;
            }
        }
        return null;
    }

    public boolean a(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        if (appLovinCommunicatorSubscriber == null || !StringUtils.isValidString(str)) {
            v.i("AppLovinCommunicator", "Unable to subscribe - invalid subscriber (" + appLovinCommunicatorSubscriber + ") or topic (" + str + ")");
            return false;
        }
        synchronized (this.f4609c) {
            b a2 = a(str, appLovinCommunicatorSubscriber);
            if (a2 == null) {
                b bVar = new b(str, appLovinCommunicatorSubscriber);
                this.f4608b.add(bVar);
                AppLovinBroadcastManager.getInstance(this.f4607a).registerReceiver(bVar, new IntentFilter(str));
                return true;
            }
            v.i("AppLovinCommunicator", "Attempting to re-subscribe subscriber (" + appLovinCommunicatorSubscriber + ") to topic (" + str + ")");
            if (!a2.c()) {
                a2.a(true);
                AppLovinBroadcastManager.getInstance(this.f4607a).registerReceiver(a2, new IntentFilter(str));
            }
            return true;
        }
    }

    public boolean a(String str) {
        synchronized (this.f4609c) {
            for (b bVar : this.f4608b) {
                if (str.equals(bVar.a())) {
                    return true;
                }
            }
            return false;
        }
    }

    public void b(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        b a2;
        if (StringUtils.isValidString(str)) {
            synchronized (this.f4609c) {
                a2 = a(str, appLovinCommunicatorSubscriber);
            }
            if (a2 != null) {
                a2.a(false);
                AppLovinBroadcastManager.getInstance(this.f4607a).unregisterReceiver(a2);
            }
        }
    }
}

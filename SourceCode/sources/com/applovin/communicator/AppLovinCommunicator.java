package com.applovin.communicator;

import android.content.Context;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.impl.communicator.MessagingServiceImpl;
import com.applovin.impl.communicator.a;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.v;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class AppLovinCommunicator {

    /* renamed from: a  reason: collision with root package name */
    private static AppLovinCommunicator f1196a;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f1197b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private n f1198c;

    /* renamed from: d  reason: collision with root package name */
    private v f1199d;

    /* renamed from: e  reason: collision with root package name */
    private final a f1200e;

    /* renamed from: f  reason: collision with root package name */
    private final MessagingServiceImpl f1201f;

    private AppLovinCommunicator(Context context) {
        this.f1200e = new a(context);
        this.f1201f = new MessagingServiceImpl(context);
    }

    private void a(String str) {
        if (this.f1199d == null || !v.a()) {
            return;
        }
        this.f1199d.b("AppLovinCommunicator", str);
    }

    public static AppLovinCommunicator getInstance(Context context) {
        synchronized (f1197b) {
            if (f1196a == null) {
                f1196a = new AppLovinCommunicator(context.getApplicationContext());
            }
        }
        return f1196a;
    }

    public void a(n nVar) {
        this.f1198c = nVar;
        this.f1199d = nVar.D();
        a("Attached SDK instance: " + nVar + APSSharedUtil.TRUNCATE_SEPARATOR);
    }

    public AppLovinCommunicatorMessagingService getMessagingService() {
        return this.f1201f;
    }

    public boolean hasSubscriber(String str) {
        return this.f1200e.a(str);
    }

    public boolean respondsToTopic(String str) {
        return this.f1198c.aj().c(str);
    }

    public void subscribe(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        subscribe(appLovinCommunicatorSubscriber, Collections.singletonList(str));
    }

    public void subscribe(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, List<String> list) {
        for (String str : list) {
            if (!this.f1200e.a(appLovinCommunicatorSubscriber, str)) {
                a("Unable to subscribe " + appLovinCommunicatorSubscriber + " to topic: " + str);
            }
        }
    }

    public String toString() {
        return "AppLovinCommunicator{sdk=" + this.f1198c + '}';
    }

    public void unsubscribe(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        unsubscribe(appLovinCommunicatorSubscriber, Collections.singletonList(str));
    }

    public void unsubscribe(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, List<String> list) {
        for (String str : list) {
            a("Unsubscribing " + appLovinCommunicatorSubscriber + " from topic: " + str);
            this.f1200e.b(appLovinCommunicatorSubscriber, str);
        }
    }
}

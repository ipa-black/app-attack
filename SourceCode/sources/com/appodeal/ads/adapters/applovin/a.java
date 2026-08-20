package com.appodeal.ads.adapters.applovin;

import com.applovin.sdk.AppLovinAd;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Queue;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f6456a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public static final HashMap f6457b = new HashMap();

    static {
        new HashMap();
    }

    public static AppLovinAd a(String str) {
        AppLovinAd appLovinAd;
        synchronized (f6456a) {
            Queue queue = (Queue) f6457b.get(str);
            appLovinAd = (queue == null || queue.isEmpty()) ? null : (AppLovinAd) queue.poll();
        }
        return appLovinAd;
    }

    public static void a(AppLovinAd appLovinAd) {
        synchronized (f6456a) {
            HashMap hashMap = f6457b;
            Queue queue = (Queue) hashMap.get(appLovinAd.getZoneId());
            if (queue == null) {
                queue = new LinkedList();
                hashMap.put(appLovinAd.getZoneId(), queue);
            }
            queue.offer(appLovinAd);
        }
    }
}

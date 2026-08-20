package com.explorestack.iab.vast;

import android.text.TextUtils;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static final Map<VastRequest, Boolean> f9571a = new WeakHashMap();

    public static synchronized VastRequest a(String str) {
        synchronized (c.class) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            for (Map.Entry<VastRequest, Boolean> entry : f9571a.entrySet()) {
                VastRequest key = entry.getKey();
                if (key.getId().equals(str)) {
                    return key;
                }
            }
            return null;
        }
    }

    public static synchronized void a(VastRequest vastRequest) {
        synchronized (c.class) {
            if (vastRequest == null) {
                return;
            }
            f9571a.remove(vastRequest);
        }
    }

    public static synchronized void b(VastRequest vastRequest) {
        synchronized (c.class) {
            if (vastRequest == null) {
                return;
            }
            f9571a.put(vastRequest, Boolean.TRUE);
        }
    }
}

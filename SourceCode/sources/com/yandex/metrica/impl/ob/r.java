package com.yandex.metrica.impl.ob;

import android.app.Activity;
import java.util.WeakHashMap;
/* loaded from: classes5.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private final WeakHashMap<Activity, a> f15596a = new WeakHashMap<>();

    /* loaded from: classes5.dex */
    public enum a {
        UNDEFINED,
        RESUMED,
        PAUSED
    }

    public boolean a(Activity activity, a aVar) {
        if (activity == null || this.f15596a.get(activity) != aVar) {
            if (activity != null) {
                this.f15596a.put(activity, aVar);
                return true;
            }
            return true;
        }
        return false;
    }
}

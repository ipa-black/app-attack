package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: com.yandex.metrica.impl.ob.um  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1913um {

    /* renamed from: c  reason: collision with root package name */
    private static volatile C1913um f15888c;

    /* renamed from: a  reason: collision with root package name */
    private final Context f15889a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, C1865sm> f15890b = new HashMap();

    C1913um(Context context) {
        this.f15889a = context;
    }

    public static C1913um a(Context context) {
        if (f15888c == null) {
            synchronized (C1913um.class) {
                if (f15888c == null) {
                    f15888c = new C1913um(context);
                }
            }
        }
        return f15888c;
    }

    public C1865sm a(String str) {
        if (!this.f15890b.containsKey(str)) {
            synchronized (this) {
                if (!this.f15890b.containsKey(str)) {
                    this.f15890b.put(str, new C1865sm(new ReentrantLock(), new C1889tm(this.f15889a, str)));
                }
            }
        }
        return this.f15890b.get(str);
    }
}

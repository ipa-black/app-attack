package com.apm.insight.runtime;

import android.os.Handler;
import android.os.HandlerThread;
/* loaded from: classes.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private static volatile u f1145a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile Handler f1146b;

    public static HandlerThread a() {
        if (f1145a == null) {
            synchronized (p.class) {
                if (f1145a == null) {
                    f1145a = new u("default_npth_thread");
                    f1145a.b();
                }
            }
        }
        return f1145a.c();
    }

    public static u b() {
        if (f1145a == null) {
            a();
        }
        return f1145a;
    }
}

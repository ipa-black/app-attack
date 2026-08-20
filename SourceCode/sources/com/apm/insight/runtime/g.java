package com.apm.insight.runtime;

import com.apm.insight.nativecrash.NativeImpl;
import com.apm.insight.runtime.q;
import java.util.Comparator;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static final Comparator<a> f1112a = new Comparator<a>() { // from class: com.apm.insight.runtime.g.1
        @Override // java.util.Comparator
        /* renamed from: a */
        public final int compare(a aVar, a aVar2) {
            int i = aVar.f1115b + aVar.f1116c;
            int i2 = aVar2.f1115b + aVar2.f1116c;
            if (i != i2) {
                return i > i2 ? -1 : 1;
            }
            return 0;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static byte[] f1113b = new byte[4096];

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f1114a = "unknown";

        /* renamed from: b  reason: collision with root package name */
        public int f1115b;

        /* renamed from: c  reason: collision with root package name */
        public int f1116c;

        a() {
        }
    }

    public static long a(int i) {
        return NativeImpl.c(i) * q.a.a();
    }
}

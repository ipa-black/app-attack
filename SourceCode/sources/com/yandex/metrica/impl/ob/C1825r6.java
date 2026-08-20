package com.yandex.metrica.impl.ob;

import android.util.SparseArray;
/* renamed from: com.yandex.metrica.impl.ob.r6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1825r6 {

    /* renamed from: c  reason: collision with root package name */
    private static SparseArray<C1825r6> f15618c;

    /* renamed from: a  reason: collision with root package name */
    public final String f15619a;

    /* renamed from: b  reason: collision with root package name */
    public final String f15620b;

    static {
        SparseArray<C1825r6> sparseArray = new SparseArray<>();
        f15618c = sparseArray;
        sparseArray.put(EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED.b(), new C1825r6("jvm", "binder"));
        f15618c.put(EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF.b(), new C1825r6("jvm", "binder"));
        f15618c.put(EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_INTENT.b(), new C1825r6("jvm", "intent"));
        f15618c.put(EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_FILE.b(), new C1825r6("jvm", "file"));
        f15618c.put(EnumC1399a1.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH.b(), new C1825r6("jni_native", "file"));
        f15618c.put(EnumC1399a1.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH_PROTOBUF.b(), new C1825r6("jni_native", "file"));
        f15618c.put(EnumC1399a1.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH.b(), new C1825r6("jni_native", "file"));
        f15618c.put(EnumC1399a1.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH_PROTOBUF.b(), new C1825r6("jni_native", "file"));
        f15618c.put(EnumC1399a1.EVENT_TYPE_CURRENT_SESSION_CRASHPAD_CRASH_PROTOBUF.b(), new C1825r6("jni_native", "file"));
        f15618c.put(EnumC1399a1.EVENT_TYPE_API_NATIVE_CRASH_PROTOBUF.b(), new C1825r6("jni_native", "binder"));
    }

    private C1825r6(String str, String str2) {
        this.f15619a = str;
        this.f15620b = str2;
    }

    public static C1825r6 a(int i) {
        return f15618c.get(i);
    }
}

package com.yandex.metrica.impl.ob;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
/* loaded from: classes5.dex */
public class I4 extends K4<X4> {

    /* renamed from: a  reason: collision with root package name */
    private final E5 f13060a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<EnumC1399a1, AbstractC1968x5<X4>> f13061b;

    /* renamed from: c  reason: collision with root package name */
    private C1872t5<X4> f13062c;

    public I4(L3 l3) {
        E5 e5 = new E5(l3);
        this.f13060a = e5;
        this.f13062c = new C1872t5(e5);
        this.f13061b = a();
    }

    private HashMap<EnumC1399a1, AbstractC1968x5<X4>> a() {
        HashMap<EnumC1399a1, AbstractC1968x5<X4>> hashMap = new HashMap<>();
        hashMap.put(EnumC1399a1.EVENT_TYPE_ACTIVATION, new C1848s5(this.f13060a));
        hashMap.put(EnumC1399a1.EVENT_TYPE_START, new H5(this.f13060a));
        hashMap.put(EnumC1399a1.EVENT_TYPE_REGULAR, new B5(this.f13060a));
        C2016z5 c2016z5 = new C2016z5(this.f13060a);
        hashMap.put(EnumC1399a1.EVENT_TYPE_EXCEPTION_USER, c2016z5);
        hashMap.put(EnumC1399a1.EVENT_TYPE_EXCEPTION_USER_PROTOBUF, c2016z5);
        hashMap.put(EnumC1399a1.EVENT_TYPE_EXCEPTION_USER_CUSTOM_PROTOBUF, c2016z5);
        hashMap.put(EnumC1399a1.EVENT_TYPE_SEND_REFERRER, c2016z5);
        hashMap.put(EnumC1399a1.EVENT_TYPE_STATBOX, c2016z5);
        hashMap.put(EnumC1399a1.EVENT_TYPE_CUSTOM_EVENT, c2016z5);
        EnumC1399a1 enumC1399a1 = EnumC1399a1.EVENT_TYPE_SET_SESSION_EXTRA;
        E5 e5 = this.f13060a;
        hashMap.put(enumC1399a1, new G5(e5, e5.u()));
        hashMap.put(EnumC1399a1.EVENT_TYPE_APP_OPEN, new D5(this.f13060a));
        hashMap.put(EnumC1399a1.EVENT_TYPE_PURGE_BUFFER, new A5(this.f13060a));
        EnumC1399a1 enumC1399a12 = EnumC1399a1.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH;
        E5 e52 = this.f13060a;
        hashMap.put(enumC1399a12, new G5(e52, e52.l()));
        EnumC1399a1 enumC1399a13 = EnumC1399a1.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH_PROTOBUF;
        E5 e53 = this.f13060a;
        hashMap.put(enumC1399a13, new G5(e53, e53.l()));
        hashMap.put(EnumC1399a1.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH, new C1944w5(this.f13060a));
        hashMap.put(EnumC1399a1.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH_PROTOBUF, new C1944w5(this.f13060a));
        hashMap.put(EnumC1399a1.EVENT_TYPE_CURRENT_SESSION_CRASHPAD_CRASH_PROTOBUF, new C1920v5(this.f13060a));
        EnumC1399a1 enumC1399a14 = EnumC1399a1.EVENT_TYPE_API_NATIVE_CRASH_PROTOBUF;
        E5 e54 = this.f13060a;
        hashMap.put(enumC1399a14, new G5(e54, e54.l()));
        hashMap.put(EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_FILE, new J5(this.f13060a));
        I5 i5 = new I5(this.f13060a);
        hashMap.put(EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED, i5);
        hashMap.put(EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF, i5);
        hashMap.put(EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_INTENT, i5);
        hashMap.put(EnumC1399a1.EVENT_TYPE_ANR, c2016z5);
        hashMap.put(EnumC1399a1.EVENT_TYPE_IDENTITY, new C1992y5(this.f13060a));
        hashMap.put(EnumC1399a1.EVENT_TYPE_SET_USER_INFO, new F5(this.f13060a));
        EnumC1399a1 enumC1399a15 = EnumC1399a1.EVENT_TYPE_REPORT_USER_INFO;
        E5 e55 = this.f13060a;
        hashMap.put(enumC1399a15, new G5(e55, e55.o()));
        EnumC1399a1 enumC1399a16 = EnumC1399a1.EVENT_TYPE_APP_ENVIRONMENT_UPDATED;
        E5 e56 = this.f13060a;
        hashMap.put(enumC1399a16, new G5(e56, e56.d()));
        EnumC1399a1 enumC1399a17 = EnumC1399a1.EVENT_TYPE_APP_ENVIRONMENT_CLEARED;
        E5 e57 = this.f13060a;
        hashMap.put(enumC1399a17, new G5(e57, e57.c()));
        hashMap.put(EnumC1399a1.EVENT_TYPE_SEND_USER_PROFILE, c2016z5);
        EnumC1399a1 enumC1399a18 = EnumC1399a1.EVENT_TYPE_SET_USER_PROFILE_ID;
        E5 e58 = this.f13060a;
        hashMap.put(enumC1399a18, new G5(e58, e58.x()));
        hashMap.put(EnumC1399a1.EVENT_TYPE_SEND_REVENUE_EVENT, c2016z5);
        hashMap.put(EnumC1399a1.EVENT_TYPE_SEND_AD_REVENUE_EVENT, c2016z5);
        hashMap.put(EnumC1399a1.EVENT_TYPE_IDENTITY_LIGHT, c2016z5);
        hashMap.put(EnumC1399a1.EVENT_TYPE_CLEANUP, c2016z5);
        hashMap.put(EnumC1399a1.EVENT_TYPE_VIEW_TREE, c2016z5);
        hashMap.put(EnumC1399a1.EVENT_TYPE_RAW_VIEW_TREE, c2016z5);
        hashMap.put(EnumC1399a1.EVENT_TYPE_SEND_ECOMMERCE_EVENT, c2016z5);
        hashMap.put(EnumC1399a1.EVENT_TYPE_STATBOX_EXP, c2016z5);
        hashMap.put(EnumC1399a1.EVENT_TYPE_WEBVIEW_SYNC, c2016z5);
        return hashMap;
    }

    public E5 b() {
        return this.f13060a;
    }

    public void a(EnumC1399a1 enumC1399a1, AbstractC1968x5<X4> abstractC1968x5) {
        this.f13061b.put(enumC1399a1, abstractC1968x5);
    }

    @Override // com.yandex.metrica.impl.ob.K4
    public H4<X4> a(int i) {
        LinkedList linkedList = new LinkedList();
        EnumC1399a1 a2 = EnumC1399a1.a(i);
        C1872t5<X4> c1872t5 = this.f13062c;
        if (c1872t5 != null) {
            c1872t5.a(a2, linkedList);
        }
        AbstractC1968x5<X4> abstractC1968x5 = this.f13061b.get(a2);
        if (abstractC1968x5 != null) {
            abstractC1968x5.a(linkedList);
        }
        return new H4<>(linkedList);
    }
}

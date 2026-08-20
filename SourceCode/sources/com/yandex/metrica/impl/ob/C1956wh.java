package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.wh  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1956wh {

    /* renamed from: a  reason: collision with root package name */
    private final String f15985a;

    /* renamed from: b  reason: collision with root package name */
    private final String f15986b;

    /* renamed from: c  reason: collision with root package name */
    private final C1507e9 f15987c;

    public C1956wh(String str, String str2) {
        this(str, str2, F0.g().s());
    }

    public String a() {
        C1507e9 c1507e9 = this.f15987c;
        String str = this.f15985a;
        String str2 = this.f15986b;
        c1507e9.getClass();
        return c1507e9.a(new Rd("LAST_SOCKET_REPORT_TIMES_" + str + "_" + str2, null).a(), (String) null);
    }

    C1956wh(String str, String str2, C1507e9 c1507e9) {
        this.f15985a = str;
        this.f15986b = str2;
        this.f15987c = c1507e9;
    }

    public void a(String str) {
        this.f15987c.a(this.f15985a, this.f15986b, str);
    }
}

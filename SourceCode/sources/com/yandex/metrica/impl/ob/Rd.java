package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Rd {

    /* renamed from: a  reason: collision with root package name */
    private final String f13801a;

    /* renamed from: b  reason: collision with root package name */
    private final String f13802b;

    public Rd(String str) {
        this(str, null);
    }

    public String a() {
        return this.f13802b;
    }

    public String b() {
        return this.f13801a;
    }

    public Rd(String str, String str2) {
        this.f13801a = str;
        this.f13802b = a(str2);
    }

    public final String a(String str) {
        return str != null ? this.f13801a + str : this.f13801a;
    }
}

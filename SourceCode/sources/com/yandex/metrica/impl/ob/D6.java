package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public final class D6 {

    /* renamed from: a  reason: collision with root package name */
    private final String f12793a;

    /* renamed from: b  reason: collision with root package name */
    private final String f12794b;

    /* renamed from: c  reason: collision with root package name */
    private final Integer f12795c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f12796d;

    /* renamed from: e  reason: collision with root package name */
    private final String f12797e;

    /* renamed from: f  reason: collision with root package name */
    private final Boolean f12798f;

    public D6(String str, String str2, Integer num, Integer num2, String str3, Boolean bool) {
        this.f12793a = str;
        this.f12794b = str2;
        this.f12795c = num;
        this.f12796d = num2;
        this.f12797e = str3;
        this.f12798f = bool;
    }

    public final String a() {
        return this.f12793a;
    }

    public final Integer b() {
        return this.f12796d;
    }

    public final String c() {
        return this.f12794b;
    }

    public final Integer d() {
        return this.f12795c;
    }

    public final String e() {
        return this.f12797e;
    }

    public final Boolean f() {
        return this.f12798f;
    }

    public D6(StackTraceElement stackTraceElement) {
        this(stackTraceElement.getClassName(), stackTraceElement.getFileName(), Integer.valueOf(stackTraceElement.getLineNumber()), null, stackTraceElement.getMethodName(), Boolean.valueOf(stackTraceElement.isNativeMethod()));
    }
}

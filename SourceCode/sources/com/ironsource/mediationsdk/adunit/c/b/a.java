package com.ironsource.mediationsdk.adunit.c.b;
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public EnumC0323a f11004a;

    /* renamed from: b  reason: collision with root package name */
    public long f11005b;

    /* renamed from: c  reason: collision with root package name */
    public long f11006c;

    /* renamed from: com.ironsource.mediationsdk.adunit.c.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public enum EnumC0323a {
        MANUAL,
        MANUAL_WITH_AUTOMATIC_RELOAD,
        AUTOMATIC_LOAD_AFTER_CLOSE,
        AUTOMATIC_LOAD_WHILE_SHOW
    }

    public a(EnumC0323a enumC0323a, long j, long j2) {
        this.f11004a = enumC0323a;
        this.f11005b = j;
        this.f11006c = j2;
    }

    public final boolean a() {
        return this.f11004a == EnumC0323a.MANUAL || this.f11004a == EnumC0323a.MANUAL_WITH_AUTOMATIC_RELOAD;
    }

    public final boolean b() {
        return this.f11004a == EnumC0323a.AUTOMATIC_LOAD_AFTER_CLOSE || this.f11004a == EnumC0323a.AUTOMATIC_LOAD_WHILE_SHOW;
    }
}

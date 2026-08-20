package com.unity3d.services.identifiers.installationid;

import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public String f12279a;

    /* renamed from: b  reason: collision with root package name */
    public final a f12280b;

    /* renamed from: c  reason: collision with root package name */
    public final a f12281c;

    /* renamed from: d  reason: collision with root package name */
    public final a f12282d;

    public b(a installationIdProvider, a analyticsIdProvider, a unityAdsIdProvider) {
        Intrinsics.checkNotNullParameter(installationIdProvider, "installationIdProvider");
        Intrinsics.checkNotNullParameter(analyticsIdProvider, "analyticsIdProvider");
        Intrinsics.checkNotNullParameter(unityAdsIdProvider, "unityAdsIdProvider");
        this.f12280b = installationIdProvider;
        this.f12281c = analyticsIdProvider;
        this.f12282d = unityAdsIdProvider;
        this.f12279a = "";
        a();
        b();
    }

    public final void a() {
        String uuid;
        a aVar;
        if (this.f12280b.a().length() > 0) {
            aVar = this.f12280b;
        } else if (this.f12281c.a().length() > 0) {
            aVar = this.f12281c;
        } else if (this.f12282d.a().length() <= 0) {
            uuid = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(uuid, "UUID.randomUUID().toString()");
            this.f12279a = uuid;
        } else {
            aVar = this.f12282d;
        }
        uuid = aVar.a();
        this.f12279a = uuid;
    }

    public final void b() {
        this.f12280b.a(this.f12279a);
        this.f12281c.a(this.f12279a);
        this.f12282d.a(this.f12279a);
    }
}

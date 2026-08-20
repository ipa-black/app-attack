package com.iab.omid.library.applovin.internal;

import android.view.View;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final com.iab.omid.library.applovin.weakreference.a f10067a;

    /* renamed from: b  reason: collision with root package name */
    private final String f10068b;

    /* renamed from: c  reason: collision with root package name */
    private final FriendlyObstructionPurpose f10069c;

    /* renamed from: d  reason: collision with root package name */
    private final String f10070d;

    public e(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        this.f10067a = new com.iab.omid.library.applovin.weakreference.a(view);
        this.f10068b = view.getClass().getCanonicalName();
        this.f10069c = friendlyObstructionPurpose;
        this.f10070d = str;
    }

    public String a() {
        return this.f10070d;
    }

    public FriendlyObstructionPurpose b() {
        return this.f10069c;
    }

    public com.iab.omid.library.applovin.weakreference.a c() {
        return this.f10067a;
    }

    public String d() {
        return this.f10068b;
    }
}

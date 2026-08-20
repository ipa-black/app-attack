package com.iab.omid.library.appodeal.b;

import android.view.View;
import com.iab.omid.library.appodeal.adsession.FriendlyObstructionPurpose;
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final com.iab.omid.library.appodeal.e.a f10168a;

    /* renamed from: b  reason: collision with root package name */
    private final String f10169b;

    /* renamed from: c  reason: collision with root package name */
    private final FriendlyObstructionPurpose f10170c;

    /* renamed from: d  reason: collision with root package name */
    private final String f10171d;

    public c(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        this.f10168a = new com.iab.omid.library.appodeal.e.a(view);
        this.f10169b = view.getClass().getCanonicalName();
        this.f10170c = friendlyObstructionPurpose;
        this.f10171d = str;
    }

    public com.iab.omid.library.appodeal.e.a a() {
        return this.f10168a;
    }

    public String b() {
        return this.f10169b;
    }

    public FriendlyObstructionPurpose c() {
        return this.f10170c;
    }

    public String d() {
        return this.f10171d;
    }
}

package com.iab.omid.library.adcolony.b;

import android.view.View;
import com.iab.omid.library.adcolony.adsession.FriendlyObstructionPurpose;
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final com.iab.omid.library.adcolony.e.a f9840a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9841b;

    /* renamed from: c  reason: collision with root package name */
    private final FriendlyObstructionPurpose f9842c;

    /* renamed from: d  reason: collision with root package name */
    private final String f9843d;

    public c(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        this.f9840a = new com.iab.omid.library.adcolony.e.a(view);
        this.f9841b = view.getClass().getCanonicalName();
        this.f9842c = friendlyObstructionPurpose;
        this.f9843d = str;
    }

    public com.iab.omid.library.adcolony.e.a a() {
        return this.f9840a;
    }

    public String b() {
        return this.f9841b;
    }

    public FriendlyObstructionPurpose c() {
        return this.f9842c;
    }

    public String d() {
        return this.f9843d;
    }
}

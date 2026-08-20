package com.iab.omid.library.amazon.b;

import android.view.View;
import com.iab.omid.library.amazon.adsession.FriendlyObstructionPurpose;
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final com.iab.omid.library.amazon.e.a f9947a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9948b;

    /* renamed from: c  reason: collision with root package name */
    private final FriendlyObstructionPurpose f9949c;

    /* renamed from: d  reason: collision with root package name */
    private final String f9950d;

    public c(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        this.f9947a = new com.iab.omid.library.amazon.e.a(view);
        this.f9948b = view.getClass().getCanonicalName();
        this.f9949c = friendlyObstructionPurpose;
        this.f9950d = str;
    }

    public com.iab.omid.library.amazon.e.a a() {
        return this.f9947a;
    }

    public String b() {
        return this.f9948b;
    }

    public FriendlyObstructionPurpose c() {
        return this.f9949c;
    }

    public String d() {
        return this.f9950d;
    }
}

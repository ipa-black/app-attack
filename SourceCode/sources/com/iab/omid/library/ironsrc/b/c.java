package com.iab.omid.library.ironsrc.b;

import android.view.View;
import com.iab.omid.library.ironsrc.adsession.FriendlyObstructionPurpose;
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final com.iab.omid.library.ironsrc.e.a f10391a;

    /* renamed from: b  reason: collision with root package name */
    private final String f10392b;

    /* renamed from: c  reason: collision with root package name */
    private final FriendlyObstructionPurpose f10393c;

    /* renamed from: d  reason: collision with root package name */
    private final String f10394d;

    public c(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        this.f10391a = new com.iab.omid.library.ironsrc.e.a(view);
        this.f10392b = view.getClass().getCanonicalName();
        this.f10393c = friendlyObstructionPurpose;
        this.f10394d = str;
    }

    public com.iab.omid.library.ironsrc.e.a a() {
        return this.f10391a;
    }

    public String b() {
        return this.f10392b;
    }

    public FriendlyObstructionPurpose c() {
        return this.f10393c;
    }

    public String d() {
        return this.f10394d;
    }
}

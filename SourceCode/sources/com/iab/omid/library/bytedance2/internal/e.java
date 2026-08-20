package com.iab.omid.library.bytedance2.internal;

import android.view.View;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final com.iab.omid.library.bytedance2.weakreference.a f10288a;

    /* renamed from: b  reason: collision with root package name */
    private final String f10289b;

    /* renamed from: c  reason: collision with root package name */
    private final FriendlyObstructionPurpose f10290c;

    /* renamed from: d  reason: collision with root package name */
    private final String f10291d;

    public e(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        this.f10288a = new com.iab.omid.library.bytedance2.weakreference.a(view);
        this.f10289b = view.getClass().getCanonicalName();
        this.f10290c = friendlyObstructionPurpose;
        this.f10291d = str;
    }

    public String a() {
        return this.f10291d;
    }

    public FriendlyObstructionPurpose b() {
        return this.f10290c;
    }

    public com.iab.omid.library.bytedance2.weakreference.a c() {
        return this.f10288a;
    }

    public String d() {
        return this.f10289b;
    }
}

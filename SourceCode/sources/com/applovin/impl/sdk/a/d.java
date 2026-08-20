package com.applovin.impl.sdk.a;

import android.view.View;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final View f5457a;

    /* renamed from: b  reason: collision with root package name */
    private final FriendlyObstructionPurpose f5458b;

    /* renamed from: c  reason: collision with root package name */
    private final String f5459c;

    public d(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        this.f5457a = view;
        this.f5458b = friendlyObstructionPurpose;
        this.f5459c = str;
    }

    public View a() {
        return this.f5457a;
    }

    public FriendlyObstructionPurpose b() {
        return this.f5458b;
    }

    public String c() {
        return this.f5459c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        View view = this.f5457a;
        if (view == null ? dVar.f5457a == null : view.equals(dVar.f5457a)) {
            if (this.f5458b != dVar.f5458b) {
                return false;
            }
            String str = this.f5459c;
            String str2 = dVar.f5459c;
            return str != null ? str.equals(str2) : str2 == null;
        }
        return false;
    }

    public int hashCode() {
        View view = this.f5457a;
        int hashCode = (view != null ? view.hashCode() : 0) * 31;
        FriendlyObstructionPurpose friendlyObstructionPurpose = this.f5458b;
        int hashCode2 = (hashCode + (friendlyObstructionPurpose != null ? friendlyObstructionPurpose.hashCode() : 0)) * 31;
        String str = this.f5459c;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }
}

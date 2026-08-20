package com.applovin.exoplayer2.g.e;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.ironsource.mediationsdk.logger.IronSourceError;
/* loaded from: classes.dex */
public final class e extends h {
    public static final Parcelable.Creator<e> CREATOR = new Parcelable.Creator<e>() { // from class: com.applovin.exoplayer2.g.e.e.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public e createFromParcel(Parcel parcel) {
            return new e(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public e[] newArray(int i) {
            return new e[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f2887a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2888b;

    /* renamed from: c  reason: collision with root package name */
    public final String f2889c;

    e(Parcel parcel) {
        super(CommentFrame.ID);
        this.f2887a = (String) ai.a(parcel.readString());
        this.f2888b = (String) ai.a(parcel.readString());
        this.f2889c = (String) ai.a(parcel.readString());
    }

    public e(String str, String str2, String str3) {
        super(CommentFrame.ID);
        this.f2887a = str;
        this.f2888b = str2;
        this.f2889c = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return ai.a((Object) this.f2888b, (Object) eVar.f2888b) && ai.a((Object) this.f2887a, (Object) eVar.f2887a) && ai.a((Object) this.f2889c, (Object) eVar.f2889c);
    }

    public int hashCode() {
        String str = this.f2887a;
        int hashCode = (IronSourceError.ERROR_NON_EXISTENT_INSTANCE + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f2888b;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f2889c;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // com.applovin.exoplayer2.g.e.h
    public String toString() {
        return this.f2899f + ": language=" + this.f2887a + ", description=" + this.f2888b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2899f);
        parcel.writeString(this.f2887a);
        parcel.writeString(this.f2889c);
    }
}

package com.applovin.exoplayer2.g.e;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.l.ai;
import com.ironsource.mediationsdk.logger.IronSourceError;
/* loaded from: classes.dex */
public final class m extends h {
    public static final Parcelable.Creator<m> CREATOR = new Parcelable.Creator<m>() { // from class: com.applovin.exoplayer2.g.e.m.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public m createFromParcel(Parcel parcel) {
            return new m(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public m[] newArray(int i) {
            return new m[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f2912a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2913b;

    m(Parcel parcel) {
        super((String) ai.a(parcel.readString()));
        this.f2912a = parcel.readString();
        this.f2913b = (String) ai.a(parcel.readString());
    }

    public m(String str, String str2, String str3) {
        super(str);
        this.f2912a = str2;
        this.f2913b = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        m mVar = (m) obj;
        return this.f2899f.equals(mVar.f2899f) && ai.a((Object) this.f2912a, (Object) mVar.f2912a) && ai.a((Object) this.f2913b, (Object) mVar.f2913b);
    }

    public int hashCode() {
        int hashCode = (IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.f2899f.hashCode()) * 31;
        String str = this.f2912a;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f2913b;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // com.applovin.exoplayer2.g.e.h
    public String toString() {
        return this.f2899f + ": url=" + this.f2913b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2899f);
        parcel.writeString(this.f2912a);
        parcel.writeString(this.f2913b);
    }
}

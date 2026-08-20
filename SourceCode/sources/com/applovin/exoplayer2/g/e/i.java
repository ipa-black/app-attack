package com.applovin.exoplayer2.g.e;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.ironsource.mediationsdk.logger.IronSourceError;
/* loaded from: classes.dex */
public final class i extends h {
    public static final Parcelable.Creator<i> CREATOR = new Parcelable.Creator<i>() { // from class: com.applovin.exoplayer2.g.e.i.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public i createFromParcel(Parcel parcel) {
            return new i(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public i[] newArray(int i) {
            return new i[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f2900a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2901b;

    /* renamed from: c  reason: collision with root package name */
    public final String f2902c;

    i(Parcel parcel) {
        super(InternalFrame.ID);
        this.f2900a = (String) ai.a(parcel.readString());
        this.f2901b = (String) ai.a(parcel.readString());
        this.f2902c = (String) ai.a(parcel.readString());
    }

    public i(String str, String str2, String str3) {
        super(InternalFrame.ID);
        this.f2900a = str;
        this.f2901b = str2;
        this.f2902c = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return ai.a((Object) this.f2901b, (Object) iVar.f2901b) && ai.a((Object) this.f2900a, (Object) iVar.f2900a) && ai.a((Object) this.f2902c, (Object) iVar.f2902c);
    }

    public int hashCode() {
        String str = this.f2900a;
        int hashCode = (IronSourceError.ERROR_NON_EXISTENT_INSTANCE + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f2901b;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f2902c;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // com.applovin.exoplayer2.g.e.h
    public String toString() {
        return this.f2899f + ": domain=" + this.f2900a + ", description=" + this.f2901b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2899f);
        parcel.writeString(this.f2900a);
        parcel.writeString(this.f2902c);
    }
}

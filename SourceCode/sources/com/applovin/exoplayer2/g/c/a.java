package com.applovin.exoplayer2.g.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.l.ai;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class a implements a.InterfaceC0042a {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator<a>() { // from class: com.applovin.exoplayer2.g.c.a.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public a[] newArray(int i) {
            return new a[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f2848a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2849b;

    /* renamed from: c  reason: collision with root package name */
    public final String f2850c;

    /* renamed from: d  reason: collision with root package name */
    public final int f2851d;

    /* renamed from: e  reason: collision with root package name */
    public final int f2852e;

    /* renamed from: f  reason: collision with root package name */
    public final int f2853f;

    /* renamed from: g  reason: collision with root package name */
    public final int f2854g;

    /* renamed from: h  reason: collision with root package name */
    public final byte[] f2855h;

    public a(int i, String str, String str2, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.f2848a = i;
        this.f2849b = str;
        this.f2850c = str2;
        this.f2851d = i2;
        this.f2852e = i3;
        this.f2853f = i4;
        this.f2854g = i5;
        this.f2855h = bArr;
    }

    a(Parcel parcel) {
        this.f2848a = parcel.readInt();
        this.f2849b = (String) ai.a(parcel.readString());
        this.f2850c = (String) ai.a(parcel.readString());
        this.f2851d = parcel.readInt();
        this.f2852e = parcel.readInt();
        this.f2853f = parcel.readInt();
        this.f2854g = parcel.readInt();
        this.f2855h = (byte[]) ai.a(parcel.createByteArray());
    }

    @Override // com.applovin.exoplayer2.g.a.InterfaceC0042a
    public void a(ac.a aVar) {
        aVar.a(this.f2855h, this.f2848a);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f2848a == aVar.f2848a && this.f2849b.equals(aVar.f2849b) && this.f2850c.equals(aVar.f2850c) && this.f2851d == aVar.f2851d && this.f2852e == aVar.f2852e && this.f2853f == aVar.f2853f && this.f2854g == aVar.f2854g && Arrays.equals(this.f2855h, aVar.f2855h);
    }

    public int hashCode() {
        return ((((((((((((((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.f2848a) * 31) + this.f2849b.hashCode()) * 31) + this.f2850c.hashCode()) * 31) + this.f2851d) * 31) + this.f2852e) * 31) + this.f2853f) * 31) + this.f2854g) * 31) + Arrays.hashCode(this.f2855h);
    }

    public String toString() {
        return "Picture: mimeType=" + this.f2849b + ", description=" + this.f2850c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f2848a);
        parcel.writeString(this.f2849b);
        parcel.writeString(this.f2850c);
        parcel.writeInt(this.f2851d);
        parcel.writeInt(this.f2852e);
        parcel.writeInt(this.f2853f);
        parcel.writeInt(this.f2854g);
        parcel.writeByteArray(this.f2855h);
    }
}

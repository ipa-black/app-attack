package com.applovin.exoplayer2.g.a;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.g.a;
/* loaded from: classes.dex */
public final class a implements a.InterfaceC0042a {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator<a>() { // from class: com.applovin.exoplayer2.g.a.a.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public a createFromParcel(Parcel parcel) {
            return new a(parcel.readInt(), (String) com.applovin.exoplayer2.l.a.b(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public a[] newArray(int i) {
            return new a[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f2835a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2836b;

    public a(int i, String str) {
        this.f2835a = i;
        this.f2836b = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "Ait(controlCode=" + this.f2835a + ",url=" + this.f2836b + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2836b);
        parcel.writeInt(this.f2835a);
    }
}

package com.yandex.metrica.impl.ob;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes5.dex */
public class W0 implements Parcelable {
    public static final Parcelable.Creator<W0> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final String f14173a;

    /* renamed from: b  reason: collision with root package name */
    public final U0 f14174b;

    /* renamed from: c  reason: collision with root package name */
    public final String f14175c;

    /* loaded from: classes5.dex */
    class a implements Parcelable.Creator<W0> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public W0 createFromParcel(Parcel parcel) {
            return new W0(parcel.readString(), U0.a(parcel.readString()), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public W0[] newArray(int i) {
            return new W0[i];
        }
    }

    public W0(String str, U0 u0, String str2) {
        this.f14173a = str;
        this.f14174b = u0;
        this.f14175c = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || W0.class != obj.getClass()) {
            return false;
        }
        W0 w0 = (W0) obj;
        String str = this.f14173a;
        if (str == null ? w0.f14173a == null : str.equals(w0.f14173a)) {
            if (this.f14174b != w0.f14174b) {
                return false;
            }
            String str2 = this.f14175c;
            if (str2 != null) {
                return str2.equals(w0.f14175c);
            }
            return w0.f14175c == null;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f14173a;
        int hashCode = (((str != null ? str.hashCode() : 0) * 31) + this.f14174b.hashCode()) * 31;
        String str2 = this.f14175c;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "IdentifiersResultInternal{mId='" + this.f14173a + "', mStatus=" + this.f14174b + ", mErrorExplanation='" + this.f14175c + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f14173a);
        parcel.writeString(this.f14174b.a());
        parcel.writeString(this.f14175c);
    }
}

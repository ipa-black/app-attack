package com.applovin.exoplayer2.g.f;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.l.ai;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class a implements a.InterfaceC0042a {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator<a>() { // from class: com.applovin.exoplayer2.g.f.a.1
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
    public final String f2922a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f2923b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2924c;

    /* renamed from: d  reason: collision with root package name */
    public final int f2925d;

    private a(Parcel parcel) {
        this.f2922a = (String) ai.a(parcel.readString());
        this.f2923b = (byte[]) ai.a(parcel.createByteArray());
        this.f2924c = parcel.readInt();
        this.f2925d = parcel.readInt();
    }

    public a(String str, byte[] bArr, int i, int i2) {
        this.f2922a = str;
        this.f2923b = bArr;
        this.f2924c = i;
        this.f2925d = i2;
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
        return this.f2922a.equals(aVar.f2922a) && Arrays.equals(this.f2923b, aVar.f2923b) && this.f2924c == aVar.f2924c && this.f2925d == aVar.f2925d;
    }

    public int hashCode() {
        return ((((((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.f2922a.hashCode()) * 31) + Arrays.hashCode(this.f2923b)) * 31) + this.f2924c) * 31) + this.f2925d;
    }

    public String toString() {
        return "mdta: key=" + this.f2922a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2922a);
        parcel.writeByteArray(this.f2923b);
        parcel.writeInt(this.f2924c);
        parcel.writeInt(this.f2925d);
    }
}

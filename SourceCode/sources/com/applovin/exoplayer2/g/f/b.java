package com.applovin.exoplayer2.g.f;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.g.a;
import com.ironsource.mediationsdk.logger.IronSourceError;
/* loaded from: classes.dex */
public final class b implements a.InterfaceC0042a {
    public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator<b>() { // from class: com.applovin.exoplayer2.g.f.b.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public b[] newArray(int i) {
            return new b[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final long f2926a;

    /* renamed from: b  reason: collision with root package name */
    public final long f2927b;

    /* renamed from: c  reason: collision with root package name */
    public final long f2928c;

    /* renamed from: d  reason: collision with root package name */
    public final long f2929d;

    /* renamed from: e  reason: collision with root package name */
    public final long f2930e;

    public b(long j, long j2, long j3, long j4, long j5) {
        this.f2926a = j;
        this.f2927b = j2;
        this.f2928c = j3;
        this.f2929d = j4;
        this.f2930e = j5;
    }

    private b(Parcel parcel) {
        this.f2926a = parcel.readLong();
        this.f2927b = parcel.readLong();
        this.f2928c = parcel.readLong();
        this.f2929d = parcel.readLong();
        this.f2930e = parcel.readLong();
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
        b bVar = (b) obj;
        return this.f2926a == bVar.f2926a && this.f2927b == bVar.f2927b && this.f2928c == bVar.f2928c && this.f2929d == bVar.f2929d && this.f2930e == bVar.f2930e;
    }

    public int hashCode() {
        return ((((((((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + com.applovin.exoplayer2.common.b.d.a(this.f2926a)) * 31) + com.applovin.exoplayer2.common.b.d.a(this.f2927b)) * 31) + com.applovin.exoplayer2.common.b.d.a(this.f2928c)) * 31) + com.applovin.exoplayer2.common.b.d.a(this.f2929d)) * 31) + com.applovin.exoplayer2.common.b.d.a(this.f2930e);
    }

    public String toString() {
        return "Motion photo metadata: photoStartPosition=" + this.f2926a + ", photoSize=" + this.f2927b + ", photoPresentationTimestampUs=" + this.f2928c + ", videoStartPosition=" + this.f2929d + ", videoSize=" + this.f2930e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f2926a);
        parcel.writeLong(this.f2927b);
        parcel.writeLong(this.f2928c);
        parcel.writeLong(this.f2929d);
        parcel.writeLong(this.f2930e);
    }
}

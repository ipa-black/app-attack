package com.applovin.exoplayer2.g.f;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.g.a;
import com.ironsource.mediationsdk.logger.IronSourceError;
/* loaded from: classes.dex */
public final class d implements a.InterfaceC0042a {
    public static final Parcelable.Creator<d> CREATOR = new Parcelable.Creator<d>() { // from class: com.applovin.exoplayer2.g.f.d.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public d createFromParcel(Parcel parcel) {
            return new d(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public d[] newArray(int i) {
            return new d[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final float f2936a;

    /* renamed from: b  reason: collision with root package name */
    public final int f2937b;

    public d(float f2, int i) {
        this.f2936a = f2;
        this.f2937b = i;
    }

    private d(Parcel parcel) {
        this.f2936a = parcel.readFloat();
        this.f2937b = parcel.readInt();
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
        d dVar = (d) obj;
        return this.f2936a == dVar.f2936a && this.f2937b == dVar.f2937b;
    }

    public int hashCode() {
        return ((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + com.applovin.exoplayer2.common.b.b.a(this.f2936a)) * 31) + this.f2937b;
    }

    public String toString() {
        return "smta: captureFrameRate=" + this.f2936a + ", svcTemporalLayerCount=" + this.f2937b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.f2936a);
        parcel.writeInt(this.f2937b);
    }
}

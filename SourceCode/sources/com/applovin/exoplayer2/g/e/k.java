package com.applovin.exoplayer2.g.e;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class k extends h {
    public static final Parcelable.Creator<k> CREATOR = new Parcelable.Creator<k>() { // from class: com.applovin.exoplayer2.g.e.k.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public k createFromParcel(Parcel parcel) {
            return new k(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public k[] newArray(int i) {
            return new k[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f2908a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f2909b;

    k(Parcel parcel) {
        super(PrivFrame.ID);
        this.f2908a = (String) ai.a(parcel.readString());
        this.f2909b = (byte[]) ai.a(parcel.createByteArray());
    }

    public k(String str, byte[] bArr) {
        super(PrivFrame.ID);
        this.f2908a = str;
        this.f2909b = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        return ai.a((Object) this.f2908a, (Object) kVar.f2908a) && Arrays.equals(this.f2909b, kVar.f2909b);
    }

    public int hashCode() {
        String str = this.f2908a;
        return ((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + (str != null ? str.hashCode() : 0)) * 31) + Arrays.hashCode(this.f2909b);
    }

    @Override // com.applovin.exoplayer2.g.e.h
    public String toString() {
        return this.f2899f + ": owner=" + this.f2908a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2908a);
        parcel.writeByteArray(this.f2909b);
    }
}

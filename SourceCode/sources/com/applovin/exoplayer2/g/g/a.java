package com.applovin.exoplayer2.g.g;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.y;
/* loaded from: classes.dex */
public final class a extends b {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator<a>() { // from class: com.applovin.exoplayer2.g.g.a.1
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
    public final long f2938a;

    /* renamed from: b  reason: collision with root package name */
    public final long f2939b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f2940c;

    private a(long j, byte[] bArr, long j2) {
        this.f2938a = j2;
        this.f2939b = j;
        this.f2940c = bArr;
    }

    private a(Parcel parcel) {
        this.f2938a = parcel.readLong();
        this.f2939b = parcel.readLong();
        this.f2940c = (byte[]) ai.a(parcel.createByteArray());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(y yVar, int i, long j) {
        long o = yVar.o();
        int i2 = i - 4;
        byte[] bArr = new byte[i2];
        yVar.a(bArr, 0, i2);
        return new a(o, bArr, j);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f2938a);
        parcel.writeLong(this.f2939b);
        parcel.writeByteArray(this.f2940c);
    }
}

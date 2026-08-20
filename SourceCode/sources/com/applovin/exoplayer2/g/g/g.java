package com.applovin.exoplayer2.g.g;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.l.ag;
import com.applovin.exoplayer2.l.y;
import com.google.android.exoplayer2.C;
/* loaded from: classes.dex */
public final class g extends b {
    public static final Parcelable.Creator<g> CREATOR = new Parcelable.Creator<g>() { // from class: com.applovin.exoplayer2.g.g.g.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public g createFromParcel(Parcel parcel) {
            return new g(parcel.readLong(), parcel.readLong());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public g[] newArray(int i) {
            return new g[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final long f2966a;

    /* renamed from: b  reason: collision with root package name */
    public final long f2967b;

    private g(long j, long j2) {
        this.f2966a = j;
        this.f2967b = j2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long a(y yVar, long j) {
        long h2 = yVar.h();
        return (128 & h2) != 0 ? 8589934591L & ((((h2 & 1) << 32) | yVar.o()) + j) : C.TIME_UNSET;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g a(y yVar, long j, ag agVar) {
        long a2 = a(yVar, j);
        return new g(a2, agVar.b(a2));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f2966a);
        parcel.writeLong(this.f2967b);
    }
}

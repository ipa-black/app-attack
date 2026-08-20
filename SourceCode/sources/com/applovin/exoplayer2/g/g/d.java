package com.applovin.exoplayer2.g.g;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.l.ag;
import com.applovin.exoplayer2.l.y;
import com.google.android.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class d extends b {
    public static final Parcelable.Creator<d> CREATOR = new Parcelable.Creator<d>() { // from class: com.applovin.exoplayer2.g.g.d.1
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
    public final long f2944a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f2945b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f2946c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f2947d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f2948e;

    /* renamed from: f  reason: collision with root package name */
    public final long f2949f;

    /* renamed from: g  reason: collision with root package name */
    public final long f2950g;

    /* renamed from: h  reason: collision with root package name */
    public final List<a> f2951h;
    public final boolean i;
    public final long j;
    public final int k;
    public final int l;
    public final int m;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f2952a;

        /* renamed from: b  reason: collision with root package name */
        public final long f2953b;

        /* renamed from: c  reason: collision with root package name */
        public final long f2954c;

        private a(int i, long j, long j2) {
            this.f2952a = i;
            this.f2953b = j;
            this.f2954c = j2;
        }

        public static a b(Parcel parcel) {
            return new a(parcel.readInt(), parcel.readLong(), parcel.readLong());
        }

        public void a(Parcel parcel) {
            parcel.writeInt(this.f2952a);
            parcel.writeLong(this.f2953b);
            parcel.writeLong(this.f2954c);
        }
    }

    private d(long j, boolean z, boolean z2, boolean z3, boolean z4, long j2, long j3, List<a> list, boolean z5, long j4, int i, int i2, int i3) {
        this.f2944a = j;
        this.f2945b = z;
        this.f2946c = z2;
        this.f2947d = z3;
        this.f2948e = z4;
        this.f2949f = j2;
        this.f2950g = j3;
        this.f2951h = Collections.unmodifiableList(list);
        this.i = z5;
        this.j = j4;
        this.k = i;
        this.l = i2;
        this.m = i3;
    }

    private d(Parcel parcel) {
        this.f2944a = parcel.readLong();
        this.f2945b = parcel.readByte() == 1;
        this.f2946c = parcel.readByte() == 1;
        this.f2947d = parcel.readByte() == 1;
        this.f2948e = parcel.readByte() == 1;
        this.f2949f = parcel.readLong();
        this.f2950g = parcel.readLong();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(a.b(parcel));
        }
        this.f2951h = Collections.unmodifiableList(arrayList);
        this.i = parcel.readByte() == 1;
        this.j = parcel.readLong();
        this.k = parcel.readInt();
        this.l = parcel.readInt();
        this.m = parcel.readInt();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d a(y yVar, long j, ag agVar) {
        List list;
        boolean z;
        boolean z2;
        long j2;
        boolean z3;
        long j3;
        int i;
        int i2;
        int i3;
        boolean z4;
        boolean z5;
        long j4;
        long o = yVar.o();
        boolean z6 = (yVar.h() & 128) != 0;
        List emptyList = Collections.emptyList();
        if (z6) {
            list = emptyList;
            z = false;
            z2 = false;
            j2 = C.TIME_UNSET;
            z3 = false;
            j3 = C.TIME_UNSET;
            i = 0;
            i2 = 0;
            i3 = 0;
            z4 = false;
        } else {
            int h2 = yVar.h();
            boolean z7 = (h2 & 128) != 0;
            boolean z8 = (h2 & 64) != 0;
            boolean z9 = (h2 & 32) != 0;
            boolean z10 = (h2 & 16) != 0;
            long a2 = (!z8 || z10) ? C.TIME_UNSET : g.a(yVar, j);
            if (!z8) {
                int h3 = yVar.h();
                ArrayList arrayList = new ArrayList(h3);
                for (int i4 = 0; i4 < h3; i4++) {
                    int h4 = yVar.h();
                    long a3 = !z10 ? g.a(yVar, j) : C.TIME_UNSET;
                    arrayList.add(new a(h4, a3, agVar.b(a3)));
                }
                emptyList = arrayList;
            }
            if (z9) {
                long h5 = yVar.h();
                boolean z11 = (128 & h5) != 0;
                j4 = ((((h5 & 1) << 32) | yVar.o()) * 1000) / 90;
                z5 = z11;
            } else {
                z5 = false;
                j4 = C.TIME_UNSET;
            }
            i = yVar.i();
            z4 = z8;
            i2 = yVar.h();
            i3 = yVar.h();
            list = emptyList;
            long j5 = a2;
            z3 = z5;
            j3 = j4;
            z2 = z10;
            z = z7;
            j2 = j5;
        }
        return new d(o, z6, z, z4, z2, j2, agVar.b(j2), list, z3, j3, i, i2, i3);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f2944a);
        parcel.writeByte(this.f2945b ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f2946c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f2947d ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f2948e ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f2949f);
        parcel.writeLong(this.f2950g);
        int size = this.f2951h.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.f2951h.get(i2).a(parcel);
        }
        parcel.writeByte(this.i ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.j);
        parcel.writeInt(this.k);
        parcel.writeInt(this.l);
        parcel.writeInt(this.m);
    }
}

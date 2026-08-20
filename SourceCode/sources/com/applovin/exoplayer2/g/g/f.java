package com.applovin.exoplayer2.g.g;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.l.y;
import com.google.android.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class f extends com.applovin.exoplayer2.g.g.b {
    public static final Parcelable.Creator<f> CREATOR = new Parcelable.Creator<f>() { // from class: com.applovin.exoplayer2.g.g.f.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public f createFromParcel(Parcel parcel) {
            return new f(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public f[] newArray(int i) {
            return new f[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final List<b> f2955a;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f2956a;

        /* renamed from: b  reason: collision with root package name */
        public final long f2957b;

        private a(int i, long j) {
            this.f2956a = i;
            this.f2957b = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static a b(Parcel parcel) {
            return new a(parcel.readInt(), parcel.readLong());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(Parcel parcel) {
            parcel.writeInt(this.f2956a);
            parcel.writeLong(this.f2957b);
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final long f2958a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f2959b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f2960c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f2961d;

        /* renamed from: e  reason: collision with root package name */
        public final long f2962e;

        /* renamed from: f  reason: collision with root package name */
        public final List<a> f2963f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f2964g;

        /* renamed from: h  reason: collision with root package name */
        public final long f2965h;
        public final int i;
        public final int j;
        public final int k;

        private b(long j, boolean z, boolean z2, boolean z3, List<a> list, long j2, boolean z4, long j3, int i, int i2, int i3) {
            this.f2958a = j;
            this.f2959b = z;
            this.f2960c = z2;
            this.f2961d = z3;
            this.f2963f = Collections.unmodifiableList(list);
            this.f2962e = j2;
            this.f2964g = z4;
            this.f2965h = j3;
            this.i = i;
            this.j = i2;
            this.k = i3;
        }

        private b(Parcel parcel) {
            this.f2958a = parcel.readLong();
            this.f2959b = parcel.readByte() == 1;
            this.f2960c = parcel.readByte() == 1;
            this.f2961d = parcel.readByte() == 1;
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            for (int i = 0; i < readInt; i++) {
                arrayList.add(a.b(parcel));
            }
            this.f2963f = Collections.unmodifiableList(arrayList);
            this.f2962e = parcel.readLong();
            this.f2964g = parcel.readByte() == 1;
            this.f2965h = parcel.readLong();
            this.i = parcel.readInt();
            this.j = parcel.readInt();
            this.k = parcel.readInt();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b b(y yVar) {
            ArrayList arrayList;
            boolean z;
            long j;
            boolean z2;
            long j2;
            int i;
            int i2;
            int i3;
            boolean z3;
            boolean z4;
            long j3;
            long o = yVar.o();
            boolean z5 = (yVar.h() & 128) != 0;
            ArrayList arrayList2 = new ArrayList();
            if (z5) {
                arrayList = arrayList2;
                z = false;
                j = C.TIME_UNSET;
                z2 = false;
                j2 = C.TIME_UNSET;
                i = 0;
                i2 = 0;
                i3 = 0;
                z3 = false;
            } else {
                int h2 = yVar.h();
                boolean z6 = (h2 & 128) != 0;
                boolean z7 = (h2 & 64) != 0;
                boolean z8 = (h2 & 32) != 0;
                long o2 = z7 ? yVar.o() : C.TIME_UNSET;
                if (!z7) {
                    int h3 = yVar.h();
                    ArrayList arrayList3 = new ArrayList(h3);
                    for (int i4 = 0; i4 < h3; i4++) {
                        arrayList3.add(new a(yVar.h(), yVar.o()));
                    }
                    arrayList2 = arrayList3;
                }
                if (z8) {
                    long h4 = yVar.h();
                    boolean z9 = (128 & h4) != 0;
                    j3 = ((((h4 & 1) << 32) | yVar.o()) * 1000) / 90;
                    z4 = z9;
                } else {
                    z4 = false;
                    j3 = C.TIME_UNSET;
                }
                int i5 = yVar.i();
                int h5 = yVar.h();
                z3 = z7;
                i3 = yVar.h();
                j2 = j3;
                arrayList = arrayList2;
                long j4 = o2;
                i = i5;
                i2 = h5;
                j = j4;
                boolean z10 = z6;
                z2 = z4;
                z = z10;
            }
            return new b(o, z5, z, z3, arrayList, j, z2, j2, i, i2, i3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(Parcel parcel) {
            parcel.writeLong(this.f2958a);
            parcel.writeByte(this.f2959b ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f2960c ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f2961d ? (byte) 1 : (byte) 0);
            int size = this.f2963f.size();
            parcel.writeInt(size);
            for (int i = 0; i < size; i++) {
                this.f2963f.get(i).c(parcel);
            }
            parcel.writeLong(this.f2962e);
            parcel.writeByte(this.f2964g ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.f2965h);
            parcel.writeInt(this.i);
            parcel.writeInt(this.j);
            parcel.writeInt(this.k);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b c(Parcel parcel) {
            return new b(parcel);
        }
    }

    private f(Parcel parcel) {
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(b.c(parcel));
        }
        this.f2955a = Collections.unmodifiableList(arrayList);
    }

    private f(List<b> list) {
        this.f2955a = Collections.unmodifiableList(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f a(y yVar) {
        int h2 = yVar.h();
        ArrayList arrayList = new ArrayList(h2);
        for (int i = 0; i < h2; i++) {
            arrayList.add(b.b(yVar));
        }
        return new f(arrayList);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int size = this.f2955a.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.f2955a.get(i2).b(parcel);
        }
    }
}

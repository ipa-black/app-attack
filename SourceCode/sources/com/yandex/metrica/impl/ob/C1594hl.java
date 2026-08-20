package com.yandex.metrica.impl.ob;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.hl  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1594hl implements Parcelable {
    public static final Parcelable.Creator<C1594hl> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final boolean f14876a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f14877b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f14878c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f14879d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f14880e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f14881f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f14882g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f14883h;
    public final boolean i;
    public final boolean j;
    public final int k;
    public final int l;
    public final int m;
    public final int n;
    public final int o;
    public final List<C2032zl> p;

    /* renamed from: com.yandex.metrica.impl.ob.hl$a */
    /* loaded from: classes5.dex */
    class a implements Parcelable.Creator<C1594hl> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public C1594hl createFromParcel(Parcel parcel) {
            return new C1594hl(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public C1594hl[] newArray(int i) {
            return new C1594hl[i];
        }
    }

    public C1594hl(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, int i, int i2, int i3, int i4, int i5, List<C2032zl> list) {
        this.f14876a = z;
        this.f14877b = z2;
        this.f14878c = z3;
        this.f14879d = z4;
        this.f14880e = z5;
        this.f14881f = z6;
        this.f14882g = z7;
        this.f14883h = z8;
        this.i = z9;
        this.j = z10;
        this.k = i;
        this.l = i2;
        this.m = i3;
        this.n = i4;
        this.o = i5;
        this.p = list;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1594hl.class != obj.getClass()) {
            return false;
        }
        C1594hl c1594hl = (C1594hl) obj;
        if (this.f14876a == c1594hl.f14876a && this.f14877b == c1594hl.f14877b && this.f14878c == c1594hl.f14878c && this.f14879d == c1594hl.f14879d && this.f14880e == c1594hl.f14880e && this.f14881f == c1594hl.f14881f && this.f14882g == c1594hl.f14882g && this.f14883h == c1594hl.f14883h && this.i == c1594hl.i && this.j == c1594hl.j && this.k == c1594hl.k && this.l == c1594hl.l && this.m == c1594hl.m && this.n == c1594hl.n && this.o == c1594hl.o) {
            return this.p.equals(c1594hl.p);
        }
        return false;
    }

    public int hashCode() {
        return ((((((((((((((((((((((((((((((this.f14876a ? 1 : 0) * 31) + (this.f14877b ? 1 : 0)) * 31) + (this.f14878c ? 1 : 0)) * 31) + (this.f14879d ? 1 : 0)) * 31) + (this.f14880e ? 1 : 0)) * 31) + (this.f14881f ? 1 : 0)) * 31) + (this.f14882g ? 1 : 0)) * 31) + (this.f14883h ? 1 : 0)) * 31) + (this.i ? 1 : 0)) * 31) + (this.j ? 1 : 0)) * 31) + this.k) * 31) + this.l) * 31) + this.m) * 31) + this.n) * 31) + this.o) * 31) + this.p.hashCode();
    }

    public String toString() {
        return "UiCollectingConfig{textSizeCollecting=" + this.f14876a + ", relativeTextSizeCollecting=" + this.f14877b + ", textVisibilityCollecting=" + this.f14878c + ", textStyleCollecting=" + this.f14879d + ", infoCollecting=" + this.f14880e + ", nonContentViewCollecting=" + this.f14881f + ", textLengthCollecting=" + this.f14882g + ", viewHierarchical=" + this.f14883h + ", ignoreFiltered=" + this.i + ", webViewUrlsCollecting=" + this.j + ", tooLongTextBound=" + this.k + ", truncatedTextBound=" + this.l + ", maxEntitiesCount=" + this.m + ", maxFullContentLength=" + this.n + ", webViewUrlLimit=" + this.o + ", filters=" + this.p + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.f14876a ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f14877b ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f14878c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f14879d ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f14880e ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f14881f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f14882g ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f14883h ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.i ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.j ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.k);
        parcel.writeInt(this.l);
        parcel.writeInt(this.m);
        parcel.writeInt(this.n);
        parcel.writeInt(this.o);
        parcel.writeList(this.p);
    }

    protected C1594hl(Parcel parcel) {
        this.f14876a = parcel.readByte() != 0;
        this.f14877b = parcel.readByte() != 0;
        this.f14878c = parcel.readByte() != 0;
        this.f14879d = parcel.readByte() != 0;
        this.f14880e = parcel.readByte() != 0;
        this.f14881f = parcel.readByte() != 0;
        this.f14882g = parcel.readByte() != 0;
        this.f14883h = parcel.readByte() != 0;
        this.i = parcel.readByte() != 0;
        this.j = parcel.readByte() != 0;
        this.k = parcel.readInt();
        this.l = parcel.readInt();
        this.m = parcel.readInt();
        this.n = parcel.readInt();
        this.o = parcel.readInt();
        ArrayList arrayList = new ArrayList();
        parcel.readList(arrayList, C2032zl.class.getClassLoader());
        this.p = arrayList;
    }
}

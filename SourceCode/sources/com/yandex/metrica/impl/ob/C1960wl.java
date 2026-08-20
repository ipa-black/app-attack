package com.yandex.metrica.impl.ob;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.wl  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1960wl implements Parcelable {
    public static final Parcelable.Creator<C1960wl> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final int f15998a;

    /* renamed from: b  reason: collision with root package name */
    public final int f15999b;

    /* renamed from: c  reason: collision with root package name */
    public final int f16000c;

    /* renamed from: d  reason: collision with root package name */
    public final long f16001d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f16002e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f16003f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f16004g;

    /* renamed from: h  reason: collision with root package name */
    public final List<C2032zl> f16005h;

    /* renamed from: com.yandex.metrica.impl.ob.wl$a */
    /* loaded from: classes5.dex */
    class a implements Parcelable.Creator<C1960wl> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public C1960wl createFromParcel(Parcel parcel) {
            return new C1960wl(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public C1960wl[] newArray(int i) {
            return new C1960wl[i];
        }
    }

    public C1960wl(int i, int i2, int i3, long j, boolean z, boolean z2, boolean z3, List<C2032zl> list) {
        this.f15998a = i;
        this.f15999b = i2;
        this.f16000c = i3;
        this.f16001d = j;
        this.f16002e = z;
        this.f16003f = z2;
        this.f16004g = z3;
        this.f16005h = list;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1960wl.class != obj.getClass()) {
            return false;
        }
        C1960wl c1960wl = (C1960wl) obj;
        if (this.f15998a == c1960wl.f15998a && this.f15999b == c1960wl.f15999b && this.f16000c == c1960wl.f16000c && this.f16001d == c1960wl.f16001d && this.f16002e == c1960wl.f16002e && this.f16003f == c1960wl.f16003f && this.f16004g == c1960wl.f16004g) {
            return this.f16005h.equals(c1960wl.f16005h);
        }
        return false;
    }

    public int hashCode() {
        long j = this.f16001d;
        return (((((((((((((this.f15998a * 31) + this.f15999b) * 31) + this.f16000c) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + (this.f16002e ? 1 : 0)) * 31) + (this.f16003f ? 1 : 0)) * 31) + (this.f16004g ? 1 : 0)) * 31) + this.f16005h.hashCode();
    }

    public String toString() {
        return "UiParsingConfig{tooLongTextBound=" + this.f15998a + ", truncatedTextBound=" + this.f15999b + ", maxVisitedChildrenInLevel=" + this.f16000c + ", afterCreateTimeout=" + this.f16001d + ", relativeTextSizeCalculation=" + this.f16002e + ", errorReporting=" + this.f16003f + ", parsingAllowedByDefault=" + this.f16004g + ", filters=" + this.f16005h + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f15998a);
        parcel.writeInt(this.f15999b);
        parcel.writeInt(this.f16000c);
        parcel.writeLong(this.f16001d);
        parcel.writeByte(this.f16002e ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f16003f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f16004g ? (byte) 1 : (byte) 0);
        parcel.writeList(this.f16005h);
    }

    protected C1960wl(Parcel parcel) {
        this.f15998a = parcel.readInt();
        this.f15999b = parcel.readInt();
        this.f16000c = parcel.readInt();
        this.f16001d = parcel.readLong();
        this.f16002e = parcel.readByte() != 0;
        this.f16003f = parcel.readByte() != 0;
        this.f16004g = parcel.readByte() != 0;
        ArrayList arrayList = new ArrayList();
        parcel.readList(arrayList, C2032zl.class.getClassLoader());
        this.f16005h = arrayList;
    }
}

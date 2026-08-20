package com.yandex.metrica.impl.ob;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.yandex.metrica.impl.ob.ra  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1829ra implements Parcelable {
    public static final Parcelable.Creator<C1829ra> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final C1806qa f15625a;

    /* renamed from: b  reason: collision with root package name */
    public final C1806qa f15626b;

    /* renamed from: c  reason: collision with root package name */
    public final C1806qa f15627c;

    /* renamed from: com.yandex.metrica.impl.ob.ra$a */
    /* loaded from: classes5.dex */
    class a implements Parcelable.Creator<C1829ra> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public C1829ra createFromParcel(Parcel parcel) {
            return new C1829ra(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public C1829ra[] newArray(int i) {
            return new C1829ra[i];
        }
    }

    public C1829ra() {
        this(null, null, null);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "DiagnosticsConfigsHolder{activationConfig=" + this.f15625a + ", clidsInfoConfig=" + this.f15626b + ", preloadInfoConfig=" + this.f15627c + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f15625a, i);
        parcel.writeParcelable(this.f15626b, i);
        parcel.writeParcelable(this.f15627c, i);
    }

    public C1829ra(C1806qa c1806qa, C1806qa c1806qa2, C1806qa c1806qa3) {
        this.f15625a = c1806qa;
        this.f15626b = c1806qa2;
        this.f15627c = c1806qa3;
    }

    protected C1829ra(Parcel parcel) {
        this.f15625a = (C1806qa) parcel.readParcelable(C1806qa.class.getClassLoader());
        this.f15626b = (C1806qa) parcel.readParcelable(C1806qa.class.getClassLoader());
        this.f15627c = (C1806qa) parcel.readParcelable(C1806qa.class.getClassLoader());
    }
}

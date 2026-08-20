package com.yandex.metrica.impl.ob;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.yandex.metrica.impl.ob.qa  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1806qa implements Parcelable {
    public static final Parcelable.Creator<C1806qa> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final long f15486a;

    /* renamed from: b  reason: collision with root package name */
    public final int f15487b;

    /* renamed from: com.yandex.metrica.impl.ob.qa$a */
    /* loaded from: classes5.dex */
    class a implements Parcelable.Creator<C1806qa> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public C1806qa createFromParcel(Parcel parcel) {
            return new C1806qa(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public C1806qa[] newArray(int i) {
            return new C1806qa[i];
        }
    }

    public C1806qa(long j, int i) {
        this.f15486a = j;
        this.f15487b = i;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "DiagnosticsConfig{expirationTimestampSeconds=" + this.f15486a + ", intervalSeconds=" + this.f15487b + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f15486a);
        parcel.writeInt(this.f15487b);
    }

    protected C1806qa(Parcel parcel) {
        this.f15486a = parcel.readLong();
        this.f15487b = parcel.readInt();
    }
}

package com.yandex.metrica.impl.ob;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.yandex.metrica.impl.ob.zl  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C2032zl implements Parcelable {
    public static final Parcelable.Creator<C2032zl> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final b f16170a;

    /* renamed from: b  reason: collision with root package name */
    public final String f16171b;

    /* renamed from: com.yandex.metrica.impl.ob.zl$a */
    /* loaded from: classes5.dex */
    class a implements Parcelable.Creator<C2032zl> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public C2032zl createFromParcel(Parcel parcel) {
            return new C2032zl(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public C2032zl[] newArray(int i) {
            return new C2032zl[i];
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.zl$b */
    /* loaded from: classes5.dex */
    public enum b {
        EQUALS(0),
        CONTAINS(1),
        MATCHES(2),
        DOES_NOT_MATCH(3);
        

        /* renamed from: a  reason: collision with root package name */
        public final int f16177a;

        b(int i) {
            this.f16177a = i;
        }

        public static b a(int i) {
            b[] values = values();
            for (int i2 = 0; i2 < 4; i2++) {
                b bVar = values[i2];
                if (bVar.f16177a == i) {
                    return bVar;
                }
            }
            return EQUALS;
        }
    }

    public C2032zl(b bVar, String str) {
        this.f16170a = bVar;
        this.f16171b = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C2032zl.class != obj.getClass()) {
            return false;
        }
        C2032zl c2032zl = (C2032zl) obj;
        if (this.f16170a != c2032zl.f16170a) {
            return false;
        }
        return this.f16171b.equals(c2032zl.f16171b);
    }

    public int hashCode() {
        return (this.f16170a.hashCode() * 31) + this.f16171b.hashCode();
    }

    public String toString() {
        return "UiParsingFilter{type=" + this.f16170a + ", value='" + this.f16171b + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f16170a.f16177a);
        parcel.writeString(this.f16171b);
    }

    protected C2032zl(Parcel parcel) {
        this.f16170a = b.a(parcel.readInt());
        this.f16171b = (String) Tl.a(parcel.readString(), "");
    }
}

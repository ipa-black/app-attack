package com.yandex.metrica.impl.ob;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Xh implements Parcelable {
    public static final a CREATOR = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final Boolean f14275a;

    /* renamed from: b  reason: collision with root package name */
    private final U0 f14276b;

    /* renamed from: c  reason: collision with root package name */
    private final String f14277c;

    /* loaded from: classes5.dex */
    public static final class a implements Parcelable.Creator<Xh> {
        private a() {
        }

        @Override // android.os.Parcelable.Creator
        public Xh createFromParcel(Parcel parcel) {
            Object readValue = parcel.readValue(Boolean.TYPE.getClassLoader());
            if (!(readValue instanceof Boolean)) {
                readValue = null;
            }
            U0 a2 = U0.a(parcel.readString());
            Intrinsics.checkNotNullExpressionValue(a2, "IdentifierStatus.from(parcel.readString())");
            return new Xh((Boolean) readValue, a2, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public Xh[] newArray(int i) {
            return new Xh[i];
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public Xh(Boolean bool, U0 u0, String str) {
        this.f14275a = bool;
        this.f14276b = u0;
        this.f14277c = str;
    }

    public final String a() {
        return this.f14277c;
    }

    public final Boolean b() {
        return this.f14275a;
    }

    public final U0 c() {
        return this.f14276b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Xh) {
                Xh xh = (Xh) obj;
                return Intrinsics.areEqual(this.f14275a, xh.f14275a) && Intrinsics.areEqual(this.f14276b, xh.f14276b) && Intrinsics.areEqual(this.f14277c, xh.f14277c);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        Boolean bool = this.f14275a;
        int hashCode = (bool != null ? bool.hashCode() : 0) * 31;
        U0 u0 = this.f14276b;
        int hashCode2 = (hashCode + (u0 != null ? u0.hashCode() : 0)) * 31;
        String str = this.f14277c;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "FeaturesInternal(sslPinning=" + this.f14275a + ", status=" + this.f14276b + ", errorExplanation=" + this.f14277c + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.f14275a);
        parcel.writeString(this.f14276b.a());
        parcel.writeString(this.f14277c);
    }

    public Xh() {
        this(null, U0.UNKNOWN, null);
    }
}

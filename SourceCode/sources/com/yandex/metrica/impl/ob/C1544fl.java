package com.yandex.metrica.impl.ob;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.yandex.metrica.impl.ob.fl  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1544fl implements Parcelable {
    public static final Parcelable.Creator<C1544fl> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final boolean f14754a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f14755b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f14756c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f14757d;

    /* renamed from: e  reason: collision with root package name */
    public final C1960wl f14758e;

    /* renamed from: f  reason: collision with root package name */
    public final C1594hl f14759f;

    /* renamed from: g  reason: collision with root package name */
    public final C1594hl f14760g;

    /* renamed from: h  reason: collision with root package name */
    public final C1594hl f14761h;

    /* renamed from: com.yandex.metrica.impl.ob.fl$a */
    /* loaded from: classes5.dex */
    class a implements Parcelable.Creator<C1544fl> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public C1544fl createFromParcel(Parcel parcel) {
            return new C1544fl(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public C1544fl[] newArray(int i) {
            return new C1544fl[i];
        }
    }

    public C1544fl(C1790pi c1790pi) {
        this(c1790pi.f().j, c1790pi.f().l, c1790pi.f().k, c1790pi.f().m, c1790pi.T(), c1790pi.S(), c1790pi.R(), c1790pi.U());
    }

    public boolean a() {
        return (this.f14758e == null || this.f14759f == null || this.f14760g == null || this.f14761h == null) ? false : true;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1544fl.class != obj.getClass()) {
            return false;
        }
        C1544fl c1544fl = (C1544fl) obj;
        if (this.f14754a == c1544fl.f14754a && this.f14755b == c1544fl.f14755b && this.f14756c == c1544fl.f14756c && this.f14757d == c1544fl.f14757d) {
            C1960wl c1960wl = this.f14758e;
            if (c1960wl == null ? c1544fl.f14758e == null : c1960wl.equals(c1544fl.f14758e)) {
                C1594hl c1594hl = this.f14759f;
                if (c1594hl == null ? c1544fl.f14759f == null : c1594hl.equals(c1544fl.f14759f)) {
                    C1594hl c1594hl2 = this.f14760g;
                    if (c1594hl2 == null ? c1544fl.f14760g == null : c1594hl2.equals(c1544fl.f14760g)) {
                        C1594hl c1594hl3 = this.f14761h;
                        if (c1594hl3 != null) {
                            return c1594hl3.equals(c1544fl.f14761h);
                        }
                        return c1544fl.f14761h == null;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int i = (((((((this.f14754a ? 1 : 0) * 31) + (this.f14755b ? 1 : 0)) * 31) + (this.f14756c ? 1 : 0)) * 31) + (this.f14757d ? 1 : 0)) * 31;
        C1960wl c1960wl = this.f14758e;
        int hashCode = (i + (c1960wl != null ? c1960wl.hashCode() : 0)) * 31;
        C1594hl c1594hl = this.f14759f;
        int hashCode2 = (hashCode + (c1594hl != null ? c1594hl.hashCode() : 0)) * 31;
        C1594hl c1594hl2 = this.f14760g;
        int hashCode3 = (hashCode2 + (c1594hl2 != null ? c1594hl2.hashCode() : 0)) * 31;
        C1594hl c1594hl3 = this.f14761h;
        return hashCode3 + (c1594hl3 != null ? c1594hl3.hashCode() : 0);
    }

    public String toString() {
        return "UiAccessConfig{uiParsingEnabled=" + this.f14754a + ", uiEventSendingEnabled=" + this.f14755b + ", uiCollectingForBridgeEnabled=" + this.f14756c + ", uiRawEventSendingEnabled=" + this.f14757d + ", uiParsingConfig=" + this.f14758e + ", uiEventSendingConfig=" + this.f14759f + ", uiCollectingForBridgeConfig=" + this.f14760g + ", uiRawEventSendingConfig=" + this.f14761h + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.f14754a ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f14755b ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f14756c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f14757d ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.f14758e, i);
        parcel.writeParcelable(this.f14759f, i);
        parcel.writeParcelable(this.f14760g, i);
        parcel.writeParcelable(this.f14761h, i);
    }

    public C1544fl(boolean z, boolean z2, boolean z3, boolean z4, C1960wl c1960wl, C1594hl c1594hl, C1594hl c1594hl2, C1594hl c1594hl3) {
        this.f14754a = z;
        this.f14755b = z2;
        this.f14756c = z3;
        this.f14757d = z4;
        this.f14758e = c1960wl;
        this.f14759f = c1594hl;
        this.f14760g = c1594hl2;
        this.f14761h = c1594hl3;
    }

    protected C1544fl(Parcel parcel) {
        this.f14754a = parcel.readByte() != 0;
        this.f14755b = parcel.readByte() != 0;
        this.f14756c = parcel.readByte() != 0;
        this.f14757d = parcel.readByte() != 0;
        this.f14758e = (C1960wl) parcel.readParcelable(C1960wl.class.getClassLoader());
        this.f14759f = (C1594hl) parcel.readParcelable(C1594hl.class.getClassLoader());
        this.f14760g = (C1594hl) parcel.readParcelable(C1594hl.class.getClassLoader());
        this.f14761h = (C1594hl) parcel.readParcelable(C1594hl.class.getClassLoader());
    }
}

package com.applovin.exoplayer2.d;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.l.ai;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
/* loaded from: classes.dex */
public final class e implements Parcelable, Comparator<a> {
    public static final Parcelable.Creator<e> CREATOR = new Parcelable.Creator<e>() { // from class: com.applovin.exoplayer2.d.e.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public e createFromParcel(Parcel parcel) {
            return new e(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public e[] newArray(int i) {
            return new e[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f2010a;

    /* renamed from: b  reason: collision with root package name */
    public final int f2011b;

    /* renamed from: c  reason: collision with root package name */
    private final a[] f2012c;

    /* renamed from: d  reason: collision with root package name */
    private int f2013d;

    /* loaded from: classes.dex */
    public static final class a implements Parcelable {
        public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator<a>() { // from class: com.applovin.exoplayer2.d.e.a.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public a createFromParcel(Parcel parcel) {
                return new a(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public a[] newArray(int i) {
                return new a[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final UUID f2014a;

        /* renamed from: b  reason: collision with root package name */
        public final String f2015b;

        /* renamed from: c  reason: collision with root package name */
        public final String f2016c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f2017d;

        /* renamed from: e  reason: collision with root package name */
        private int f2018e;

        a(Parcel parcel) {
            this.f2014a = new UUID(parcel.readLong(), parcel.readLong());
            this.f2015b = parcel.readString();
            this.f2016c = (String) ai.a(parcel.readString());
            this.f2017d = parcel.createByteArray();
        }

        public a(UUID uuid, String str, String str2, byte[] bArr) {
            this.f2014a = (UUID) com.applovin.exoplayer2.l.a.b(uuid);
            this.f2015b = str;
            this.f2016c = (String) com.applovin.exoplayer2.l.a.b(str2);
            this.f2017d = bArr;
        }

        public a(UUID uuid, String str, byte[] bArr) {
            this(uuid, null, str, bArr);
        }

        public a a(byte[] bArr) {
            return new a(this.f2014a, this.f2015b, this.f2016c, bArr);
        }

        public boolean a(UUID uuid) {
            return com.applovin.exoplayer2.h.f2968a.equals(this.f2014a) || uuid.equals(this.f2014a);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                if (obj == this) {
                    return true;
                }
                a aVar = (a) obj;
                return ai.a((Object) this.f2015b, (Object) aVar.f2015b) && ai.a((Object) this.f2016c, (Object) aVar.f2016c) && ai.a(this.f2014a, aVar.f2014a) && Arrays.equals(this.f2017d, aVar.f2017d);
            }
            return false;
        }

        public int hashCode() {
            if (this.f2018e == 0) {
                int hashCode = this.f2014a.hashCode() * 31;
                String str = this.f2015b;
                this.f2018e = ((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.f2016c.hashCode()) * 31) + Arrays.hashCode(this.f2017d);
            }
            return this.f2018e;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.f2014a.getMostSignificantBits());
            parcel.writeLong(this.f2014a.getLeastSignificantBits());
            parcel.writeString(this.f2015b);
            parcel.writeString(this.f2016c);
            parcel.writeByteArray(this.f2017d);
        }
    }

    e(Parcel parcel) {
        this.f2010a = parcel.readString();
        a[] aVarArr = (a[]) ai.a((a[]) parcel.createTypedArray(a.CREATOR));
        this.f2012c = aVarArr;
        this.f2011b = aVarArr.length;
    }

    private e(String str, boolean z, a... aVarArr) {
        this.f2010a = str;
        aVarArr = z ? (a[]) aVarArr.clone() : aVarArr;
        this.f2012c = aVarArr;
        this.f2011b = aVarArr.length;
        Arrays.sort(aVarArr, this);
    }

    public e(String str, a... aVarArr) {
        this(str, true, aVarArr);
    }

    public e(List<a> list) {
        this(null, false, (a[]) list.toArray(new a[0]));
    }

    public e(a... aVarArr) {
        this(null, aVarArr);
    }

    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(a aVar, a aVar2) {
        return com.applovin.exoplayer2.h.f2968a.equals(aVar.f2014a) ? com.applovin.exoplayer2.h.f2968a.equals(aVar2.f2014a) ? 0 : 1 : aVar.f2014a.compareTo(aVar2.f2014a);
    }

    public a a(int i) {
        return this.f2012c[i];
    }

    public e a(String str) {
        return ai.a((Object) this.f2010a, (Object) str) ? this : new e(str, false, this.f2012c);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return ai.a((Object) this.f2010a, (Object) eVar.f2010a) && Arrays.equals(this.f2012c, eVar.f2012c);
    }

    public int hashCode() {
        if (this.f2013d == 0) {
            String str = this.f2010a;
            this.f2013d = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.f2012c);
        }
        return this.f2013d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2010a);
        parcel.writeTypedArray(this.f2012c, 0);
    }
}

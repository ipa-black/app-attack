package com.applovin.exoplayer2.g.f;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.common.a.n;
import com.applovin.exoplayer2.common.base.Objects;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.g.f.c;
import com.applovin.exoplayer2.l.ai;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes.dex */
public final class c implements a.InterfaceC0042a {
    public static final Parcelable.Creator<c> CREATOR = new Parcelable.Creator<c>() { // from class: com.applovin.exoplayer2.g.f.c.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public c createFromParcel(Parcel parcel) {
            ArrayList arrayList = new ArrayList();
            parcel.readList(arrayList, a.class.getClassLoader());
            return new c(arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public c[] newArray(int i) {
            return new c[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final List<a> f2931a;

    /* loaded from: classes.dex */
    public static final class a implements Parcelable {

        /* renamed from: b  reason: collision with root package name */
        public final long f2933b;

        /* renamed from: c  reason: collision with root package name */
        public final long f2934c;

        /* renamed from: d  reason: collision with root package name */
        public final int f2935d;

        /* renamed from: a  reason: collision with root package name */
        public static final Comparator<a> f2932a = new Comparator() { // from class: com.applovin.exoplayer2.g.f.c$a$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int a2;
                a2 = c.a.a((c.a) obj, (c.a) obj2);
                return a2;
            }
        };
        public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator<a>() { // from class: com.applovin.exoplayer2.g.f.c.a.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public a createFromParcel(Parcel parcel) {
                return new a(parcel.readLong(), parcel.readLong(), parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public a[] newArray(int i) {
                return new a[i];
            }
        };

        public a(long j, long j2, int i) {
            com.applovin.exoplayer2.l.a.a(j < j2);
            this.f2933b = j;
            this.f2934c = j2;
            this.f2935d = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int a(a aVar, a aVar2) {
            return n.a().a(aVar.f2933b, aVar2.f2933b).a(aVar.f2934c, aVar2.f2934c).a(aVar.f2935d, aVar2.f2935d).b();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f2933b == aVar.f2933b && this.f2934c == aVar.f2934c && this.f2935d == aVar.f2935d;
        }

        public int hashCode() {
            return Objects.hashCode(Long.valueOf(this.f2933b), Long.valueOf(this.f2934c), Integer.valueOf(this.f2935d));
        }

        public String toString() {
            return ai.a("Segment: startTimeMs=%d, endTimeMs=%d, speedDivisor=%d", Long.valueOf(this.f2933b), Long.valueOf(this.f2934c), Integer.valueOf(this.f2935d));
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.f2933b);
            parcel.writeLong(this.f2934c);
            parcel.writeInt(this.f2935d);
        }
    }

    public c(List<a> list) {
        this.f2931a = list;
        com.applovin.exoplayer2.l.a.a(!a(list));
    }

    private static boolean a(List<a> list) {
        if (list.isEmpty()) {
            return false;
        }
        long j = list.get(0).f2934c;
        for (int i = 1; i < list.size(); i++) {
            if (list.get(i).f2933b < j) {
                return true;
            }
            j = list.get(i).f2934c;
        }
        return false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f2931a.equals(((c) obj).f2931a);
    }

    public int hashCode() {
        return this.f2931a.hashCode();
    }

    public String toString() {
        return "SlowMotion: segments=" + this.f2931a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.f2931a);
    }
}

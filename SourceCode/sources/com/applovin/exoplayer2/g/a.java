package com.applovin.exoplayer2.g;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.v;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator<a>() { // from class: com.applovin.exoplayer2.g.a.1
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
    private final InterfaceC0042a[] f2834a;

    /* renamed from: com.applovin.exoplayer2.g.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0042a extends Parcelable {
        default v a() {
            return null;
        }

        default void a(ac.a aVar) {
        }

        default byte[] b() {
            return null;
        }
    }

    a(Parcel parcel) {
        this.f2834a = new InterfaceC0042a[parcel.readInt()];
        int i = 0;
        while (true) {
            InterfaceC0042a[] interfaceC0042aArr = this.f2834a;
            if (i >= interfaceC0042aArr.length) {
                return;
            }
            interfaceC0042aArr[i] = (InterfaceC0042a) parcel.readParcelable(InterfaceC0042a.class.getClassLoader());
            i++;
        }
    }

    public a(List<? extends InterfaceC0042a> list) {
        this.f2834a = (InterfaceC0042a[]) list.toArray(new InterfaceC0042a[0]);
    }

    public a(InterfaceC0042a... interfaceC0042aArr) {
        this.f2834a = interfaceC0042aArr;
    }

    public int a() {
        return this.f2834a.length;
    }

    public InterfaceC0042a a(int i) {
        return this.f2834a[i];
    }

    public a a(a aVar) {
        return aVar == null ? this : a(aVar.f2834a);
    }

    public a a(InterfaceC0042a... interfaceC0042aArr) {
        return interfaceC0042aArr.length == 0 ? this : new a((InterfaceC0042a[]) ai.a((Object[]) this.f2834a, (Object[]) interfaceC0042aArr));
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
        return Arrays.equals(this.f2834a, ((a) obj).f2834a);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f2834a);
    }

    public String toString() {
        return "entries=" + Arrays.toString(this.f2834a);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f2834a.length);
        for (InterfaceC0042a interfaceC0042a : this.f2834a) {
            parcel.writeParcelable(interfaceC0042a, 0);
        }
    }
}

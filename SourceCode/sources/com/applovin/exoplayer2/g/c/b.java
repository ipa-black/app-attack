package com.applovin.exoplayer2.g.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.l.ai;
import com.ironsource.mediationsdk.logger.IronSourceError;
/* loaded from: classes.dex */
public final class b implements a.InterfaceC0042a {
    public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator<b>() { // from class: com.applovin.exoplayer2.g.c.b.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public b[] newArray(int i) {
            return new b[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f2856a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2857b;

    b(Parcel parcel) {
        this.f2856a = (String) ai.a(parcel.readString());
        this.f2857b = (String) ai.a(parcel.readString());
    }

    public b(String str, String str2) {
        this.f2856a = str;
        this.f2857b = str2;
    }

    @Override // com.applovin.exoplayer2.g.a.InterfaceC0042a
    public void a(ac.a aVar) {
        String str = this.f2856a;
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case 62359119:
                if (str.equals("ALBUM")) {
                    c2 = 0;
                    break;
                }
                break;
            case 79833656:
                if (str.equals("TITLE")) {
                    c2 = 1;
                    break;
                }
                break;
            case 428414940:
                if (str.equals("DESCRIPTION")) {
                    c2 = 2;
                    break;
                }
                break;
            case 1746739798:
                if (str.equals("ALBUMARTIST")) {
                    c2 = 3;
                    break;
                }
                break;
            case 1939198791:
                if (str.equals("ARTIST")) {
                    c2 = 4;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                aVar.c(this.f2857b);
                return;
            case 1:
                aVar.a(this.f2857b);
                return;
            case 2:
                aVar.g(this.f2857b);
                return;
            case 3:
                aVar.d(this.f2857b);
                return;
            case 4:
                aVar.b(this.f2857b);
                return;
            default:
                return;
        }
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
        b bVar = (b) obj;
        return this.f2856a.equals(bVar.f2856a) && this.f2857b.equals(bVar.f2857b);
    }

    public int hashCode() {
        return ((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.f2856a.hashCode()) * 31) + this.f2857b.hashCode();
    }

    public String toString() {
        return "VC: " + this.f2856a + "=" + this.f2857b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2856a);
        parcel.writeString(this.f2857b);
    }
}

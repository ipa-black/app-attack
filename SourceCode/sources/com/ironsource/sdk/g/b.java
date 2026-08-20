package com.ironsource.sdk.g;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
@Deprecated
/* loaded from: classes3.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator<b>() { // from class: com.ironsource.sdk.g.b.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ b createFromParcel(Parcel parcel) {
            return new b(parcel, (byte) 0);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ b[] newArray(int i) {
            return new b[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public String f12017a;

    /* renamed from: b  reason: collision with root package name */
    public String f12018b;

    /* renamed from: c  reason: collision with root package name */
    public String f12019c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f12020d;

    /* renamed from: e  reason: collision with root package name */
    public int f12021e;

    /* renamed from: f  reason: collision with root package name */
    public String f12022f;

    /* renamed from: g  reason: collision with root package name */
    public String f12023g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f12024h;
    public boolean i;
    public Map<String, String> j;
    private ArrayList<String> k;
    private ArrayList<String> l;
    private ArrayList<String> m;
    private ArrayList<String> n;
    private Map<String, String> o;

    public b() {
        a();
    }

    private b(Parcel parcel) {
        a();
        try {
            boolean z = true;
            this.f12020d = parcel.readByte() != 0;
            this.f12021e = parcel.readInt();
            this.f12017a = parcel.readString();
            this.f12018b = parcel.readString();
            this.f12019c = parcel.readString();
            this.f12022f = parcel.readString();
            this.f12023g = parcel.readString();
            this.o = a(parcel.readString());
            this.i = parcel.readByte() != 0;
            if (parcel.readByte() == 0) {
                z = false;
            }
            this.f12024h = z;
            this.j = a(parcel.readString());
        } catch (Throwable unused) {
            a();
        }
    }

    /* synthetic */ b(Parcel parcel, byte b2) {
        this(parcel);
    }

    private static Map<String, String> a(String str) {
        HashMap hashMap = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.getString(next));
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return hashMap;
    }

    private void a() {
        this.f12020d = false;
        this.f12021e = -1;
        this.k = new ArrayList<>();
        this.l = new ArrayList<>();
        this.m = new ArrayList<>();
        this.n = new ArrayList<>();
        this.f12024h = true;
        this.i = false;
        this.f12023g = "";
        this.f12022f = "";
        this.o = new HashMap();
        this.j = new HashMap();
    }

    public final void a(String str, boolean z) {
        if (TextUtils.isEmpty(str) || this.m.indexOf(str) != -1) {
            return;
        }
        this.m.add(str);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        try {
            sb.append("shouldRestore:").append(this.f12020d).append(", ");
            sb.append("displayedProduct:").append(this.f12021e).append(", ");
            sb.append("ISReportInit:").append(this.k).append(", ");
            sb.append("ISInitSuccess:").append(this.l).append(", ");
            sb.append("ISAppKey").append(this.f12022f).append(", ");
            sb.append("ISUserId").append(this.f12023g).append(", ");
            sb.append("ISExtraParams").append(this.o).append(", ");
            sb.append("OWReportInit").append(this.f12024h).append(", ");
            sb.append("OWInitSuccess").append(this.i).append(", ");
            sb.append("OWExtraParams").append(this.j).append(", ");
        } catch (Throwable unused) {
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        try {
            parcel.writeByte(this.f12020d ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.f12021e);
            parcel.writeString(this.f12017a);
            parcel.writeString(this.f12018b);
            parcel.writeString(this.f12019c);
            parcel.writeString(this.f12022f);
            parcel.writeString(this.f12023g);
            parcel.writeString(new JSONObject(this.o).toString());
            parcel.writeByte(this.i ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f12024h ? (byte) 1 : (byte) 0);
            parcel.writeString(new JSONObject(this.j).toString());
        } catch (Throwable unused) {
        }
    }
}

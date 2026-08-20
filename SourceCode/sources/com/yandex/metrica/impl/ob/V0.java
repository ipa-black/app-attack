package com.yandex.metrica.impl.ob;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function0;
/* loaded from: classes5.dex */
public class V0 implements Parcelable {
    public static final Parcelable.Creator<V0> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    private ResultReceiver f14132a;

    /* renamed from: b  reason: collision with root package name */
    private List<String> f14133b;

    /* renamed from: c  reason: collision with root package name */
    private Map<String, String> f14134c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Function0<I> {
        a(V0 v0) {
        }

        @Override // kotlin.jvm.functions.Function0
        public I invoke() {
            return F0.g().d();
        }
    }

    /* loaded from: classes5.dex */
    class b implements Parcelable.Creator<V0> {
        b() {
        }

        @Override // android.os.Parcelable.Creator
        public V0 createFromParcel(Parcel parcel) {
            return new V0(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public V0[] newArray(int i) {
            return new V0[i];
        }
    }

    public V0(List<String> list, Map<String, String> map, ResultReceiver resultReceiver) {
        HashMap hashMap;
        this.f14133b = list;
        this.f14132a = resultReceiver;
        if (map == null) {
            hashMap = new HashMap();
        } else {
            hashMap = new HashMap(map);
        }
        this.f14134c = hashMap;
    }

    public boolean a(C1790pi c1790pi) {
        return C1740ni.a(c1790pi, this.f14133b, this.f14134c, new a(this));
    }

    public List<String> b() {
        return this.f14133b;
    }

    public ResultReceiver c() {
        return this.f14132a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.yandex.metrica.CounterConfiguration.receiver", this.f14132a);
        if (this.f14133b != null) {
            bundle.putStringArrayList("com.yandex.metrica.CounterConfiguration.identifiersList", new ArrayList<>(this.f14133b));
        }
        Map<String, String> map = this.f14134c;
        if (map != null) {
            bundle.putString("com.yandex.metrica.CounterConfiguration.clidsForVerification", Tl.c(map));
        }
        parcel.writeBundle(bundle);
    }

    public Map<String, String> a() {
        return this.f14134c;
    }

    protected V0(Parcel parcel) {
        Bundle readBundle = parcel.readBundle(ResultReceiverC1523f0.class.getClassLoader());
        if (readBundle != null) {
            this.f14132a = (ResultReceiver) readBundle.getParcelable("com.yandex.metrica.CounterConfiguration.receiver");
            this.f14133b = readBundle.getStringArrayList("com.yandex.metrica.CounterConfiguration.identifiersList");
            this.f14134c = Tl.a(readBundle.getString("com.yandex.metrica.CounterConfiguration.clidsForVerification"));
            return;
        }
        this.f14134c = new HashMap();
    }
}

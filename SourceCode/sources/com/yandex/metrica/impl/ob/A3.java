package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.ResultReceiver;
import android.text.TextUtils;
import com.yandex.metrica.YandexMetrica;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes5.dex */
public class A3 implements Parcelable {

    /* renamed from: a  reason: collision with root package name */
    private final ContentValues f12618a;

    /* renamed from: b  reason: collision with root package name */
    private ResultReceiver f12619b;

    /* renamed from: c  reason: collision with root package name */
    public static final String f12617c = UUID.randomUUID().toString();
    public static final Parcelable.Creator<A3> CREATOR = new a();

    /* loaded from: classes5.dex */
    class a implements Parcelable.Creator<A3> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public A3 createFromParcel(Parcel parcel) {
            Bundle readBundle = parcel.readBundle(ResultReceiverC1523f0.class.getClassLoader());
            return new A3((ContentValues) readBundle.getParcelable("CFG_KEY_PROCESS_ENVIRONMENT"), (ResultReceiver) readBundle.getParcelable("CFG_KEY_PROCESS_ENVIRONMENT_RECEIVER"));
        }

        @Override // android.os.Parcelable.Creator
        public A3[] newArray(int i) {
            return new A3[i];
        }
    }

    public A3(Context context, ResultReceiver resultReceiver) {
        ContentValues contentValues = new ContentValues();
        this.f12618a = contentValues;
        contentValues.put("PROCESS_CFG_PROCESS_ID", Integer.valueOf(Process.myPid()));
        contentValues.put("PROCESS_CFG_PROCESS_SESSION_ID", f12617c);
        contentValues.put("PROCESS_CFG_SDK_API_LEVEL", Integer.valueOf(YandexMetrica.getLibraryApiLevel()));
        contentValues.put("PROCESS_CFG_PACKAGE_NAME", context.getPackageName());
        this.f12619b = resultReceiver;
    }

    public static A3 a(Bundle bundle) {
        if (bundle != null) {
            try {
                return (A3) bundle.getParcelable("PROCESS_CFG_OBJ");
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public void b(com.yandex.metrica.i iVar) {
        synchronized (this) {
            if (A2.a((Object) iVar.f12563d)) {
                List<String> list = iVar.f12563d;
                synchronized (this) {
                    this.f12618a.put("PROCESS_CFG_CUSTOM_HOSTS", Tl.c(list));
                }
            }
            if (A2.a((Object) iVar.f12561b)) {
                Map<String, String> i = Tl.i(iVar.f12561b);
                synchronized (this) {
                    this.f12618a.put("PROCESS_CFG_CLIDS", Tl.g(i));
                }
            }
            a(iVar);
        }
    }

    public ResultReceiver c() {
        return this.f12619b;
    }

    public String d() {
        return this.f12618a.getAsString("PROCESS_CFG_DISTRIBUTION_REFERRER");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String e() {
        return this.f12618a.getAsString("PROCESS_CFG_INSTALL_REFERRER_SOURCE");
    }

    public String f() {
        return this.f12618a.getAsString("PROCESS_CFG_PACKAGE_NAME");
    }

    public Integer g() {
        return this.f12618a.getAsInteger("PROCESS_CFG_PROCESS_ID");
    }

    public String h() {
        return this.f12618a.getAsString("PROCESS_CFG_PROCESS_SESSION_ID");
    }

    public int i() {
        return this.f12618a.getAsInteger("PROCESS_CFG_SDK_API_LEVEL").intValue();
    }

    public boolean j() {
        return this.f12618a.containsKey("PROCESS_CFG_CUSTOM_HOSTS");
    }

    public String toString() {
        return "ProcessConfiguration{mParamsMapping=" + this.f12618a + ", mDataResultReceiver=" + this.f12619b + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("CFG_KEY_PROCESS_ENVIRONMENT", this.f12618a);
        bundle.putParcelable("CFG_KEY_PROCESS_ENVIRONMENT_RECEIVER", this.f12619b);
        parcel.writeBundle(bundle);
    }

    private void a(com.yandex.metrica.i iVar) {
        if (A2.a((Object) iVar.f12562c)) {
            String str = iVar.f12562c;
            synchronized (this) {
                this.f12618a.put("PROCESS_CFG_DISTRIBUTION_REFERRER", str);
            }
            synchronized (this) {
                this.f12618a.put("PROCESS_CFG_INSTALL_REFERRER_SOURCE", "api");
            }
        }
    }

    public synchronized void a(List<String> list) {
        this.f12618a.put("PROCESS_CFG_CUSTOM_HOSTS", Tl.c(list));
    }

    public Map<String, String> a() {
        return Tl.d(this.f12618a.getAsString("PROCESS_CFG_CLIDS"));
    }

    public synchronized void a(Map<String, String> map) {
        this.f12618a.put("PROCESS_CFG_CLIDS", Tl.g(map));
    }

    public A3(A3 a3) {
        synchronized (a3) {
            this.f12618a = new ContentValues(a3.f12618a);
            this.f12619b = a3.f12619b;
        }
    }

    public synchronized void a(String str) {
        this.f12618a.put("PROCESS_CFG_DISTRIBUTION_REFERRER", str);
    }

    public List<String> b() {
        String asString = this.f12618a.getAsString("PROCESS_CFG_CUSTOM_HOSTS");
        if (TextUtils.isEmpty(asString)) {
            return null;
        }
        return Tl.c(asString);
    }

    public synchronized void b(String str) {
        this.f12618a.put("PROCESS_CFG_INSTALL_REFERRER_SOURCE", str);
    }

    public A3(ContentValues contentValues, ResultReceiver resultReceiver) {
        this.f12618a = contentValues == null ? new ContentValues() : contentValues;
        this.f12619b = resultReceiver;
    }
}

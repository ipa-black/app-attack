package com.criteo.publisher.model;

import com.criteo.publisher.logging.RemoteLogRecords;
import com.criteo.publisher.model.l;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.SerializedName;
/* compiled from: RemoteConfigResponse.java */
/* loaded from: classes2.dex */
public abstract class y {
    /* JADX INFO: Access modifiers changed from: package-private */
    @SerializedName("AndroidAdTagDataMacro")
    public abstract String b();

    /* JADX INFO: Access modifiers changed from: package-private */
    @SerializedName("AndroidAdTagDataMode")
    public abstract String c();

    /* JADX INFO: Access modifiers changed from: package-private */
    @SerializedName("AndroidAdTagUrlMode")
    public abstract String d();

    /* JADX INFO: Access modifiers changed from: package-private */
    @SerializedName("AndroidDisplayUrlMacro")
    public abstract String e();

    public abstract Boolean f();

    public abstract Boolean g();

    public abstract Boolean h();

    public abstract Integer i();

    public abstract Boolean j();

    public abstract RemoteLogRecords.RemoteLogLevel k();

    public static y a(Boolean bool, String str, String str2, String str3, String str4, Boolean bool2, Boolean bool3, Integer num, Boolean bool4, RemoteLogRecords.RemoteLogLevel remoteLogLevel) {
        return new l(bool, str, str2, str3, str4, bool2, bool3, num, bool4, remoteLogLevel);
    }

    public static y a() {
        return a(null, null, null, null, null, null, null, null, null, null);
    }

    public static TypeAdapter<y> a(Gson gson) {
        return new l.a(gson);
    }
}

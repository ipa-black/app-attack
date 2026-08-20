package com.yandex.metrica.rtm.wrapper;

import com.yandex.metrica.rtm.client.DataSender;
import com.yandex.metrica.rtm.client.ReporterDescriptor;
import com.yandex.metrica.rtm.client.Utils;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class g implements d {

    /* renamed from: a  reason: collision with root package name */
    private final DataSender f16320a;

    public g(k kVar, String str, boolean z) throws Throwable {
        this(new b(new DataSender(new m(kVar), new ReporterDescriptor(str, z))));
    }

    public void reportError(JSONObject jSONObject) {
        try {
            this.f16320a.sendData(jSONObject.toString(), "com.yandex.metrica.rtm.REPORT_ERROR");
        } catch (Throwable unused) {
        }
    }

    public void reportEvent(JSONObject jSONObject) {
        try {
            this.f16320a.sendData(jSONObject.toString(), "com.yandex.metrica.rtm.REPORT_EVENT");
        } catch (Throwable unused) {
        }
    }

    public void reportException(String str, String str2) {
        try {
            this.f16320a.sendData(new JSONObject().put("message", str).put("exception", str2).toString(), "com.yandex.metrica.rtm.REPORT_EXCEPTION");
        } catch (Throwable unused) {
        }
    }

    public void sendData(String str) {
        try {
            this.f16320a.sendData(str, "com.yandex.metrica.rtm.SET_DATA");
        } catch (Throwable unused) {
        }
    }

    g(b bVar) throws Throwable {
        this.f16320a = bVar.a();
    }

    public void reportException(String str, Throwable th) {
        try {
            this.f16320a.sendData(new JSONObject().put("message", str).put("exception", Utils.getShrunkStacktrace(th)).toString(), "com.yandex.metrica.rtm.REPORT_EXCEPTION");
        } catch (Throwable unused) {
        }
    }
}

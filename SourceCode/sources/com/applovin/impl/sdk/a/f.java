package com.applovin.impl.sdk.a;

import android.content.Context;
import android.util.Log;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.v;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import com.iab.omid.library.applovin.Omid;
import com.iab.omid.library.applovin.ScriptInjector;
import com.iab.omid.library.applovin.adsession.Partner;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final n f5460a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f5461b;

    /* renamed from: c  reason: collision with root package name */
    private String f5462c;

    public f(n nVar) {
        this.f5460a = nVar;
        this.f5461b = nVar.P();
    }

    public String a(String str) {
        try {
            return ScriptInjector.injectScriptContentIntoHtml(this.f5462c, str);
        } catch (Throwable th) {
            this.f5460a.D();
            if (v.a()) {
                this.f5460a.D().b("OpenMeasurementService", "Failed to inject JavaScript SDK into HTML", th);
            }
            return str;
        }
    }

    public void a() {
        if (((Boolean) this.f5460a.a(com.applovin.impl.sdk.c.b.az)).booleanValue()) {
            this.f5460a.D();
            if (v.a()) {
                this.f5460a.D().b("OpenMeasurementService", "Initializing Open Measurement SDK v" + c() + APSSharedUtil.TRUNCATE_SEPARATOR);
            }
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.a.f.1
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    Omid.activate(f.this.f5461b);
                    f.this.f5460a.D();
                    if (v.a()) {
                        f.this.f5460a.D().b("OpenMeasurementService", "Init " + (f.this.b() ? "succeeded" : "failed") + " and took " + (System.currentTimeMillis() - currentTimeMillis) + "ms");
                    }
                    try {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(f.this.f5461b.getResources().openRawResource(R.raw.omsdk_v_1_0)));
                        try {
                            StringBuilder sb = new StringBuilder();
                            while (true) {
                                String readLine = bufferedReader.readLine();
                                if (readLine == null) {
                                    f.this.f5462c = sb.toString();
                                    bufferedReader.close();
                                    return;
                                }
                                sb.append(readLine);
                            }
                        } catch (IOException e2) {
                            Log.e("OpenMeasurementService", "Failed to close the BufferReader for reading JavaScript Open Measurement SDK", e2);
                        }
                    } catch (Throwable th) {
                        f.this.f5460a.D();
                        if (v.a()) {
                            f.this.f5460a.D().b("OpenMeasurementService", "Failed to retrieve resource omskd_v_1_0.js", th);
                        }
                    }
                }
            });
        }
    }

    public boolean b() {
        return Omid.isActive();
    }

    public String c() {
        return Omid.getVersion();
    }

    public Partner d() {
        return Partner.createPartner((String) this.f5460a.a(com.applovin.impl.sdk.c.b.aA), AppLovinSdk.VERSION);
    }

    public String e() {
        return this.f5462c;
    }
}

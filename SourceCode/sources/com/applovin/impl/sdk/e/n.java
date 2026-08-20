package com.applovin.impl.sdk.e;

import android.app.Activity;
import androidx.exifinterface.media.ExifInterface;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinSdk;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class n extends a {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.n f5715a;

    public n(com.applovin.impl.sdk.n nVar) {
        super("TaskInitializeSdk", nVar);
        this.f5715a = nVar;
    }

    private void a() {
        if (this.f5715a.G().a()) {
            return;
        }
        Activity ar = this.f5715a.ar();
        if (ar != null) {
            this.f5715a.G().a(ar);
        } else {
            this.f5715a.V().a(new z(this.f5715a, true, new Runnable() { // from class: com.applovin.impl.sdk.e.n.2
                @Override // java.lang.Runnable
                public void run() {
                    n.this.f5715a.G().a(n.this.f5715a.ai().a());
                }
            }), o.a.MAIN, TimeUnit.SECONDS.toMillis(1L));
        }
    }

    private void b() {
        if (this.f5715a.e()) {
            return;
        }
        boolean d2 = this.f5715a.O().d();
        String str = d2 ? this.f5715a.Y().k().f6006b + " (use this for test devices)" : "<Enable verbose logging to see the GAID to use for test devices - https://monetization-support.applovin.com/hc/en-us/articles/236114328-How-can-I-expose-verbose-logging-for-the-SDK>";
        Map<String, Object> d3 = this.f5715a.Y().d();
        Map<String, Object> c2 = this.f5715a.Y().c();
        com.applovin.impl.sdk.utils.l lVar = new com.applovin.impl.sdk.utils.l();
        lVar.a().a("=====AppLovin SDK=====");
        lVar.a("===SDK Versions===").a("Version", AppLovinSdk.VERSION).a("Plugin Version", this.f5715a.a(com.applovin.impl.sdk.c.b.dI)).a("Ad Review Version", com.applovin.impl.sdk.e.a()).a("OM SDK Version", this.f5715a.ao().c());
        lVar.a("===Device Info===").a("OS", Utils.getAndroidOSInfo()).a(IronSourceConstants.TYPE_GAID, str).a(ExifInterface.TAG_MODEL, d3.get("model")).a("Locale", d3.get("locale")).a("Emulator", d3.get("sim")).a("Tablet", d3.get("is_tablet"));
        lVar.a("===App Info===").a("Application ID", c2.get("package_name")).a("Target SDK", c2.get("target_sdk")).a("ExoPlayer Version", Integer.valueOf(Utils.getExoPlayerVersionCode()));
        lVar.a("===SDK Settings===").a("SDK Key", this.f5715a.C()).a("Mediation Provider", this.f5715a.u()).a("TG", com.applovin.impl.sdk.utils.q.a(this.f5715a)).a("AEI", this.f5715a.a(com.applovin.impl.sdk.c.b.au)).a("MEI", this.f5715a.a(com.applovin.impl.sdk.c.b.av)).a("Test Mode On", Boolean.valueOf(this.f5715a.N().a())).a("Verbose Logging On", Boolean.valueOf(d2));
        lVar.a("===Privacy States===\nPlease review AppLovin MAX documentation to be compliant with regional privacy policies.").a(com.applovin.impl.sdk.k.a(f()));
        lVar.a();
        com.applovin.impl.sdk.v.f("AppLovinSdk", lVar.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x017e, code lost:
        if (r12.f5715a.d() != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x01dc, code lost:
        if (r12.f5715a.d() != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x01df, code lost:
        r2 = "failed";
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x01e0, code lost:
        r8.b(r9, r4.append(r2).append(" in ").append(java.lang.System.currentTimeMillis() - r6).append("ms").toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x01fc, code lost:
        return;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.e.n.run():void");
    }
}

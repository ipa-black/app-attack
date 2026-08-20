package com.google.android.gms.internal.ads;

import android.os.Build;
import android.webkit.WebView;
import com.amazon.aps.shared.APSAnalytics;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public class zzfqu {
    private zzfrs zza;
    private long zzb;
    private int zzc;

    public zzfqu() {
        zzb();
        this.zza = new zzfrs(null);
    }

    public final WebView zza() {
        return (WebView) this.zza.get();
    }

    public final void zzb() {
        this.zzb = System.nanoTime();
        this.zzc = 1;
    }

    public void zzc() {
        this.zza.clear();
    }

    public final void zzd(String str, long j) {
        if (j < this.zzb || this.zzc == 3) {
            return;
        }
        this.zzc = 3;
        zzfqn.zza().zzf(zza(), str);
    }

    public final void zze(String str, long j) {
        if (j >= this.zzb) {
            this.zzc = 2;
            zzfqn.zza().zzf(zza(), str);
        }
    }

    public void zzf(zzfpx zzfpxVar, zzfpv zzfpvVar) {
        zzg(zzfpxVar, zzfpvVar, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzg(zzfpx zzfpxVar, zzfpv zzfpvVar, JSONObject jSONObject) {
        String zzh = zzfpxVar.zzh();
        JSONObject jSONObject2 = new JSONObject();
        zzfqy.zzh(jSONObject2, "environment", "app");
        zzfqy.zzh(jSONObject2, "adSessionType", zzfpvVar.zzd());
        JSONObject jSONObject3 = new JSONObject();
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        zzfqy.zzh(jSONObject3, "deviceType", str + "; " + str2);
        zzfqy.zzh(jSONObject3, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        zzfqy.zzh(jSONObject3, "os", APSAnalytics.OS_NAME);
        zzfqy.zzh(jSONObject2, "deviceInfo", jSONObject3);
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        zzfqy.zzh(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject4 = new JSONObject();
        zzfqy.zzh(jSONObject4, "partnerName", zzfpvVar.zze().zzb());
        zzfqy.zzh(jSONObject4, "partnerVersion", zzfpvVar.zze().zzc());
        zzfqy.zzh(jSONObject2, "omidNativeInfo", jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        zzfqy.zzh(jSONObject5, "libraryVersion", "1.3.37-google_20220829");
        zzfqy.zzh(jSONObject5, "appId", zzfql.zzb().zza().getApplicationContext().getPackageName());
        zzfqy.zzh(jSONObject2, "app", jSONObject5);
        if (zzfpvVar.zzf() != null) {
            zzfqy.zzh(jSONObject2, "contentUrl", zzfpvVar.zzf());
        }
        zzfqy.zzh(jSONObject2, "customReferenceData", zzfpvVar.zzg());
        JSONObject jSONObject6 = new JSONObject();
        Iterator it = zzfpvVar.zzh().iterator();
        if (it.hasNext()) {
            zzfqd zzfqdVar = (zzfqd) it.next();
            throw null;
        } else {
            zzfqn.zza().zzg(zza(), zzh, jSONObject2, jSONObject6, jSONObject);
        }
    }

    public final void zzh(float f2) {
        zzfqn.zza().zze(zza(), f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzi(WebView webView) {
        this.zza = new zzfrs(webView);
    }

    public void zzj() {
    }

    public final boolean zzk() {
        return this.zza.get() != null;
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.os.RemoteException;
import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.google.firebase.messaging.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzece implements zzedc, zzebp {
    private final zzecm zza;
    private final zzedd zzb;
    private final zzebq zzc;
    private final zzebz zzd;
    private final zzebo zze;
    private final zzecy zzf;
    private final String zzg;
    private boolean zzp;
    private int zzq;
    private boolean zzr;
    private final Map zzi = new HashMap();
    private final Map zzj = new HashMap();
    private final Map zzk = new HashMap();
    private String zzl = JsonUtils.EMPTY_JSON;
    private String zzm = "";
    private long zzn = Long.MAX_VALUE;
    private zzeca zzo = zzeca.NONE;
    private zzecd zzs = zzecd.UNKNOWN;
    private final String zzh = "afma-sdk-a-v21.5.0";

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzece(zzecm zzecmVar, zzedd zzeddVar, zzebq zzebqVar, Context context, zzchu zzchuVar, zzebz zzebzVar, zzecy zzecyVar) {
        this.zza = zzecmVar;
        this.zzb = zzeddVar;
        this.zzc = zzebqVar;
        this.zze = new zzebo(context);
        this.zzg = zzchuVar.zza;
        this.zzd = zzebzVar;
        this.zzf = zzecyVar;
        com.google.android.gms.ads.internal.zzt.zzs().zzg(this);
    }

    private final synchronized JSONObject zzp() throws JSONException {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        for (Map.Entry entry : this.zzi.entrySet()) {
            JSONArray jSONArray = new JSONArray();
            for (zzebs zzebsVar : (List) entry.getValue()) {
                if (zzebsVar.zzg()) {
                    jSONArray.put(zzebsVar.zzd());
                }
            }
            if (jSONArray.length() > 0) {
                jSONObject.put((String) entry.getKey(), jSONArray);
            }
        }
        return jSONObject;
    }

    private final void zzq() {
        this.zzr = true;
        this.zzd.zzc();
        this.zza.zzh(this);
        this.zzb.zzc(this);
        this.zzc.zzc(this);
        this.zzf.zzf(this);
        zzw(com.google.android.gms.ads.internal.zzt.zzo().zzh().zzo());
    }

    private final void zzr() {
        com.google.android.gms.ads.internal.zzt.zzo().zzh().zzG(zzd());
    }

    private final synchronized void zzs(zzeca zzecaVar, boolean z) {
        if (this.zzo == zzecaVar) {
            return;
        }
        if (zzn()) {
            zzu();
        }
        this.zzo = zzecaVar;
        if (zzn()) {
            zzv();
        }
        if (z) {
            zzr();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0036 A[Catch: all -> 0x003d, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0007, B:9:0x000b, B:11:0x001d, B:13:0x0027, B:18:0x0036, B:14:0x002b, B:16:0x0031), top: B:26:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003b A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final synchronized void zzt(boolean r2, boolean r3) {
        /*
            r1 = this;
            monitor-enter(r1)
            boolean r0 = r1.zzp     // Catch: java.lang.Throwable -> L3d
            if (r0 != r2) goto L7
            monitor-exit(r1)
            return
        L7:
            r1.zzp = r2     // Catch: java.lang.Throwable -> L3d
            if (r2 == 0) goto L2b
            com.google.android.gms.internal.ads.zzbjb r2 = com.google.android.gms.internal.ads.zzbjj.zzim     // Catch: java.lang.Throwable -> L3d
            com.google.android.gms.internal.ads.zzbjh r0 = com.google.android.gms.ads.internal.client.zzba.zzc()     // Catch: java.lang.Throwable -> L3d
            java.lang.Object r2 = r0.zzb(r2)     // Catch: java.lang.Throwable -> L3d
            java.lang.Boolean r2 = (java.lang.Boolean) r2     // Catch: java.lang.Throwable -> L3d
            boolean r2 = r2.booleanValue()     // Catch: java.lang.Throwable -> L3d
            if (r2 == 0) goto L27
            com.google.android.gms.ads.internal.util.zzaw r2 = com.google.android.gms.ads.internal.zzt.zzs()     // Catch: java.lang.Throwable -> L3d
            boolean r2 = r2.zzl()     // Catch: java.lang.Throwable -> L3d
            if (r2 != 0) goto L2b
        L27:
            r1.zzv()     // Catch: java.lang.Throwable -> L3d
            goto L34
        L2b:
            boolean r2 = r1.zzn()     // Catch: java.lang.Throwable -> L3d
            if (r2 != 0) goto L34
            r1.zzu()     // Catch: java.lang.Throwable -> L3d
        L34:
            if (r3 == 0) goto L3b
            r1.zzr()     // Catch: java.lang.Throwable -> L3d
            monitor-exit(r1)
            return
        L3b:
            monitor-exit(r1)
            return
        L3d:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzece.zzt(boolean, boolean):void");
    }

    private final synchronized void zzu() {
        zzeca zzecaVar = zzeca.NONE;
        int ordinal = this.zzo.ordinal();
        if (ordinal == 1) {
            this.zzb.zza();
        } else if (ordinal != 2) {
        } else {
            this.zzc.zza();
        }
    }

    private final synchronized void zzv() {
        zzeca zzecaVar = zzeca.NONE;
        int ordinal = this.zzo.ordinal();
        if (ordinal == 1) {
            this.zzb.zzb();
        } else if (ordinal != 2) {
        } else {
            this.zzc.zzb();
        }
    }

    private final synchronized void zzw(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            zzt(jSONObject.optBoolean("isTestMode", false), false);
            zzs(zzeca.zza(jSONObject.optString("gesture", "NONE")), false);
            this.zzl = jSONObject.optString("networkExtras", JsonUtils.EMPTY_JSON);
            this.zzn = jSONObject.optLong("networkExtrasExpirationSecs", Long.MAX_VALUE);
        } catch (JSONException unused) {
        }
    }

    public final zzeca zza() {
        return this.zzo;
    }

    public final synchronized zzgfb zzb(String str) {
        zzcig zzcigVar;
        zzcigVar = new zzcig();
        if (this.zzj.containsKey(str)) {
            zzcigVar.zzd((zzebs) this.zzj.get(str));
        } else {
            if (!this.zzk.containsKey(str)) {
                this.zzk.put(str, new ArrayList());
            }
            ((List) this.zzk.get(str)).add(zzcigVar);
        }
        return zzcigVar;
    }

    public final synchronized String zzc() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhX)).booleanValue() && zzn()) {
            if (this.zzn < com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() / 1000) {
                this.zzl = JsonUtils.EMPTY_JSON;
                this.zzn = Long.MAX_VALUE;
                return "";
            } else if (this.zzl.equals(JsonUtils.EMPTY_JSON)) {
                return "";
            } else {
                return this.zzl;
            }
        }
        return "";
    }

    public final synchronized String zzd() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        try {
            jSONObject.put("isTestMode", this.zzp);
            jSONObject.put("gesture", this.zzo);
            if (this.zzn > com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() / 1000) {
                jSONObject.put("networkExtras", this.zzl);
                jSONObject.put("networkExtrasExpirationSecs", this.zzn);
            }
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    public final synchronized JSONObject zze() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        try {
            jSONObject.put("platform", Constants.FirelogAnalytics.SDK_PLATFORM_ANDROID);
            jSONObject.put("sdkVersion", this.zzh);
            jSONObject.put("internalSdkVersion", this.zzg);
            jSONObject.put("osVersion", Build.VERSION.RELEASE);
            jSONObject.put("adapters", this.zzd.zza());
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zziv)).booleanValue()) {
                String zzm = com.google.android.gms.ads.internal.zzt.zzo().zzm();
                if (!TextUtils.isEmpty(zzm)) {
                    jSONObject.put("plugin", zzm);
                }
            }
            if (this.zzn < com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() / 1000) {
                this.zzl = JsonUtils.EMPTY_JSON;
            }
            jSONObject.put("networkExtras", this.zzl);
            jSONObject.put("adSlots", zzp());
            jSONObject.put("appInfo", this.zze.zza());
            String zzc = com.google.android.gms.ads.internal.zzt.zzo().zzh().zzh().zzc();
            if (!TextUtils.isEmpty(zzc)) {
                jSONObject.put("cld", new JSONObject(zzc));
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzin)).booleanValue() && !TextUtils.isEmpty(this.zzm)) {
                String str = this.zzm;
                com.google.android.gms.ads.internal.util.zze.zze("Policy violation data: " + str);
                jSONObject.put("policyViolations", new JSONObject(this.zzm));
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzim)).booleanValue()) {
                jSONObject.put("openAction", this.zzs);
                jSONObject.put("gesture", this.zzo);
            }
        } catch (JSONException e2) {
            com.google.android.gms.ads.internal.zzt.zzo().zzt(e2, "Inspector.toJson");
            com.google.android.gms.ads.internal.util.zze.zzk("Ad inspector encountered an error", e2);
        }
        return jSONObject;
    }

    public final synchronized void zzf(String str, zzebs zzebsVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhX)).booleanValue() && zzn()) {
            if (this.zzq >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhZ)).intValue()) {
                com.google.android.gms.ads.internal.util.zze.zzj("Maximum number of ad requests stored reached. Dropping the current request.");
                return;
            }
            if (!this.zzi.containsKey(str)) {
                this.zzi.put(str, new ArrayList());
            }
            this.zzq++;
            ((List) this.zzi.get(str)).add(zzebsVar);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzit)).booleanValue()) {
                String zzc = zzebsVar.zzc();
                this.zzj.put(zzc, zzebsVar);
                if (this.zzk.containsKey(zzc)) {
                    List<zzcig> list = (List) this.zzk.get(zzc);
                    for (zzcig zzcigVar : list) {
                        zzcigVar.zzd(zzebsVar);
                    }
                    list.clear();
                }
            }
        }
    }

    public final void zzg() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhX)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzim)).booleanValue() || !com.google.android.gms.ads.internal.zzt.zzo().zzh().zzO()) {
                String zzo = com.google.android.gms.ads.internal.zzt.zzo().zzh().zzo();
                if (TextUtils.isEmpty(zzo)) {
                    return;
                }
                try {
                    if (new JSONObject(zzo).optBoolean("isTestMode", false)) {
                        zzq();
                        return;
                    }
                    return;
                } catch (JSONException unused) {
                    return;
                }
            }
            zzq();
        }
    }

    public final synchronized void zzh(com.google.android.gms.ads.internal.client.zzda zzdaVar, zzecd zzecdVar) {
        if (!zzn()) {
            try {
                zzdaVar.zze(zzfkg.zzd(18, null, null));
                return;
            } catch (RemoteException unused) {
                com.google.android.gms.ads.internal.util.zze.zzj("Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information.");
                return;
            }
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhX)).booleanValue()) {
            try {
                zzdaVar.zze(zzfkg.zzd(1, null, null));
                return;
            } catch (RemoteException unused2) {
                com.google.android.gms.ads.internal.util.zze.zzj("Ad inspector had an internal error.");
                return;
            }
        }
        this.zzs = zzecdVar;
        this.zza.zzj(zzdaVar, new zzbqv(this), new zzbqo(this.zzf));
        return;
    }

    public final synchronized void zzi(String str, long j) {
        this.zzl = str;
        this.zzn = j;
        zzr();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000a, code lost:
        if (r2 != false) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj(boolean r2) {
        /*
            r1 = this;
            boolean r0 = r1.zzr
            if (r0 != 0) goto La
            if (r2 == 0) goto L15
            r1.zzq()
            goto Lc
        La:
            if (r2 == 0) goto L15
        Lc:
            boolean r2 = r1.zzp
            if (r2 == 0) goto L11
            goto L15
        L11:
            r1.zzv()
            return
        L15:
            boolean r2 = r1.zzn()
            if (r2 != 0) goto L1e
            r1.zzu()
        L1e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzece.zzj(boolean):void");
    }

    public final void zzk(zzeca zzecaVar) {
        zzs(zzecaVar, true);
    }

    public final synchronized void zzl(String str) {
        this.zzm = str;
    }

    public final void zzm(boolean z) {
        if (!this.zzr && z) {
            zzq();
        }
        zzt(z, true);
    }

    public final synchronized boolean zzn() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzim)).booleanValue()) {
            return this.zzp || com.google.android.gms.ads.internal.zzt.zzs().zzl();
        }
        return this.zzp;
    }

    public final synchronized boolean zzo() {
        return this.zzp;
    }
}

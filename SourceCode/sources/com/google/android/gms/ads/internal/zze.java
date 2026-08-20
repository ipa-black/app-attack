package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzbjj;
import com.google.android.gms.internal.ads.zzbuj;
import com.google.android.gms.internal.ads.zzbuq;
import com.google.android.gms.internal.ads.zzcgr;
import com.google.android.gms.internal.ads.zzchu;
import com.google.android.gms.internal.ads.zzcib;
import com.google.android.gms.internal.ads.zzcie;
import com.google.android.gms.internal.ads.zzfok;
import com.google.android.gms.internal.ads.zzfol;
import com.google.android.gms.internal.ads.zzfoy;
import com.google.android.gms.internal.ads.zzgdy;
import com.google.android.gms.internal.ads.zzger;
import com.google.android.gms.internal.ads.zzgfb;
import com.onesignal.outcomes.OSOutcomeConstants;
import com.unity3d.ads.metadata.MediationMetaData;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes3.dex */
public final class zze {
    private Context zza;
    private long zzb = 0;

    public final void zza(Context context, zzchu zzchuVar, String str, Runnable runnable, zzfoy zzfoyVar) {
        zzb(context, zzchuVar, true, null, str, null, runnable, zzfoyVar);
    }

    final void zzb(Context context, zzchu zzchuVar, boolean z, zzcgr zzcgrVar, String str, String str2, Runnable runnable, final zzfoy zzfoyVar) {
        PackageInfo packageInfo;
        if (zzt.zzB().elapsedRealtime() - this.zzb < 5000) {
            com.google.android.gms.ads.internal.util.zze.zzj("Not retrying to fetch app settings");
            return;
        }
        this.zzb = zzt.zzB().elapsedRealtime();
        if (zzcgrVar != null) {
            if (zzt.zzB().currentTimeMillis() - zzcgrVar.zza() <= ((Long) zzba.zzc().zzb(zzbjj.zzdB)).longValue() && zzcgrVar.zzi()) {
                return;
            }
        }
        if (context == null) {
            com.google.android.gms.ads.internal.util.zze.zzj("Context not provided to fetch application settings");
        } else if (!TextUtils.isEmpty(str) || !TextUtils.isEmpty(str2)) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                applicationContext = context;
            }
            this.zza = applicationContext;
            final zzfol zza = zzfok.zza(context, 4);
            zza.zzh();
            zzbuj zza2 = zzt.zzf().zza(this.zza, zzchuVar, zzfoyVar).zza("google.afma.config.fetchAppSettings", zzbuq.zza, zzbuq.zza);
            try {
                JSONObject jSONObject = new JSONObject();
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put(OSOutcomeConstants.APP_ID, str);
                } else if (!TextUtils.isEmpty(str2)) {
                    jSONObject.put("ad_unit_id", str2);
                }
                jSONObject.put("is_init", z);
                jSONObject.put("pn", context.getPackageName());
                jSONObject.put("experiment_ids", TextUtils.join(",", zzbjj.zza()));
                try {
                    ApplicationInfo applicationInfo = this.zza.getApplicationInfo();
                    if (applicationInfo != null && (packageInfo = Wrappers.packageManager(context).getPackageInfo(applicationInfo.packageName, 0)) != null) {
                        jSONObject.put(MediationMetaData.KEY_VERSION, packageInfo.versionCode);
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    com.google.android.gms.ads.internal.util.zze.zza("Error fetching PackageInfo.");
                }
                zzgfb zzb = zza2.zzb(jSONObject);
                zzgfb zzn = zzger.zzn(zzb, new zzgdy() { // from class: com.google.android.gms.ads.internal.zzd
                    @Override // com.google.android.gms.internal.ads.zzgdy
                    public final zzgfb zza(Object obj) {
                        zzfoy zzfoyVar2 = zzfoy.this;
                        zzfol zzfolVar = zza;
                        JSONObject jSONObject2 = (JSONObject) obj;
                        boolean optBoolean = jSONObject2.optBoolean("isSuccessful", false);
                        if (optBoolean) {
                            zzt.zzo().zzh().zzu(jSONObject2.getString("appSettingsJson"));
                        }
                        zzfolVar.zzf(optBoolean);
                        zzfoyVar2.zzb(zzfolVar.zzl());
                        return zzger.zzi(null);
                    }
                }, zzcib.zzf);
                if (runnable != null) {
                    zzb.zzc(runnable, zzcib.zzf);
                }
                zzcie.zza(zzn, "ConfigLoader.maybeFetchNewAppSettings");
            } catch (Exception e2) {
                com.google.android.gms.ads.internal.util.zze.zzh("Error requesting application settings", e2);
                zza.zzg(e2);
                zza.zzf(false);
                zzfoyVar.zzb(zza.zzl());
            }
        } else {
            com.google.android.gms.ads.internal.util.zze.zzj("App settings could not be fetched. Required parameters missing");
        }
    }

    public final void zzc(Context context, zzchu zzchuVar, String str, zzcgr zzcgrVar, zzfoy zzfoyVar) {
        zzb(context, zzchuVar, false, zzcgrVar, zzcgrVar != null ? zzcgrVar.zzb() : null, str, null, zzfoyVar);
    }
}

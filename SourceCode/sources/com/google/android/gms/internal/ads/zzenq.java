package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.PlatformVersion;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzenq implements zzenk {
    private final zzdos zza;
    private final zzgfc zzb;
    private final zzdsu zzc;
    private final zzfkc zzd;
    private final zzdvk zze;

    public zzenq(zzdos zzdosVar, zzgfc zzgfcVar, zzdsu zzdsuVar, zzfkc zzfkcVar, zzdvk zzdvkVar) {
        this.zza = zzdosVar;
        this.zzb = zzgfcVar;
        this.zzc = zzdsuVar;
        this.zzd = zzfkcVar;
        this.zze = zzdvkVar;
    }

    private final zzgfb zzg(final zzfix zzfixVar, final zzfil zzfilVar, final JSONObject jSONObject) {
        final zzgfb zza = this.zzd.zza();
        final zzgfb zza2 = this.zzc.zza(zzfixVar, zzfilVar, jSONObject);
        return zzger.zzd(zza, zza2).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzenl
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzenq.this.zzc(zza2, zza, zzfixVar, zzfilVar, jSONObject);
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final zzgfb zza(final zzfix zzfixVar, final zzfil zzfilVar) {
        return zzger.zzn(zzger.zzn(this.zzd.zza(), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzenn
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzenq.this.zze(zzfilVar, (zzdve) obj);
            }
        }, this.zzb), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzeno
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzenq.this.zzf(zzfixVar, zzfilVar, (JSONArray) obj);
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final boolean zzb(zzfix zzfixVar, zzfil zzfilVar) {
        zzfiq zzfiqVar = zzfilVar.zzt;
        return (zzfiqVar == null || zzfiqVar.zzc == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzdqb zzc(zzgfb zzgfbVar, zzgfb zzgfbVar2, zzfix zzfixVar, zzfil zzfilVar, JSONObject jSONObject) throws Exception {
        zzdqg zzdqgVar = (zzdqg) zzgfbVar.get();
        zzdve zzdveVar = (zzdve) zzgfbVar2.get();
        zzdqh zzd = this.zza.zzd(new zzdbc(zzfixVar, zzfilVar, null), new zzdqs(zzdqgVar), new zzdph(jSONObject, zzdveVar));
        zzd.zzj().zzb();
        zzd.zzk().zza(zzdveVar);
        zzd.zzg().zza(zzdqgVar.zzr());
        zzd.zzl().zza(this.zze);
        return zzd.zza();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzd(zzdve zzdveVar, JSONObject jSONObject) throws Exception {
        this.zzd.zzb(zzger.zzi(zzdveVar));
        if (!jSONObject.optBoolean(FirebaseAnalytics.Param.SUCCESS)) {
            throw new zzbui("process json failed");
        }
        return zzger.zzi(jSONObject.getJSONObject("json").getJSONArray("ads"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zze(zzfil zzfilVar, final zzdve zzdveVar) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("isNonagon", true);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhH)).booleanValue() && PlatformVersion.isAtLeastR()) {
            jSONObject.put("skipDeepLinkValidation", true);
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("response", zzfilVar.zzt.zzc);
        jSONObject2.put("sdk_params", jSONObject);
        return zzger.zzn(zzdveVar.zzd("google.afma.nativeAds.preProcessJson", jSONObject2), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzenm
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzenq.this.zzd(zzdveVar, (JSONObject) obj);
            }
        }, this.zzb);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzf(zzfix zzfixVar, zzfil zzfilVar, JSONArray jSONArray) throws Exception {
        if (jSONArray.length() == 0) {
            return zzger.zzh(new zzede(3));
        }
        if (zzfixVar.zza.zza.zzk > 1) {
            int length = jSONArray.length();
            this.zzd.zzc(Math.min(length, zzfixVar.zza.zza.zzk));
            ArrayList arrayList = new ArrayList(zzfixVar.zza.zza.zzk);
            for (int i = 0; i < zzfixVar.zza.zza.zzk; i++) {
                if (i < length) {
                    arrayList.add(zzg(zzfixVar, zzfilVar, jSONArray.getJSONObject(i)));
                } else {
                    arrayList.add(zzger.zzh(new zzede(3)));
                }
            }
            return zzger.zzi(arrayList);
        }
        return zzger.zzm(zzg(zzfixVar, zzfilVar, jSONArray.getJSONObject(0)), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzenp
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                return Collections.singletonList(zzger.zzi((zzdqb) obj));
            }
        }, this.zzb);
    }
}

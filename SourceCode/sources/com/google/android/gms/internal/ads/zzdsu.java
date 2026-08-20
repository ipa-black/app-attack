package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import io.bidmachine.utils.IabUtils;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdsu {
    private final zzgfc zza;
    private final zzdth zzb;
    private final zzdtm zzc;

    public zzdsu(zzgfc zzgfcVar, zzdth zzdthVar, zzdtm zzdtmVar) {
        this.zza = zzgfcVar;
        this.zzb = zzdthVar;
        this.zzc = zzdtmVar;
    }

    public final zzgfb zza(final zzfix zzfixVar, final zzfil zzfilVar, final JSONObject jSONObject) {
        zzgfb zzn;
        final zzgfb zzb = this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdss
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzfix zzfixVar2 = zzfixVar;
                zzfil zzfilVar2 = zzfilVar;
                JSONObject jSONObject2 = jSONObject;
                zzdqg zzdqgVar = new zzdqg();
                zzdqgVar.zzV(jSONObject2.optInt("template_id", -1));
                zzdqgVar.zzI(jSONObject2.optString("custom_template_id"));
                JSONObject optJSONObject = jSONObject2.optJSONObject("omid_settings");
                zzdqgVar.zzS(optJSONObject != null ? optJSONObject.optString("omid_partner_name") : null);
                zzfjg zzfjgVar = zzfixVar2.zza.zza;
                if (zzfjgVar.zzg.contains(Integer.toString(zzdqgVar.zzc()))) {
                    if (zzdqgVar.zzc() == 3) {
                        if (zzdqgVar.zzy() == null) {
                            throw new zzeom(1, "No custom template id for custom template ad response.");
                        }
                        if (!zzfjgVar.zzh.contains(zzdqgVar.zzy())) {
                            throw new zzeom(1, "Unexpected custom template id in the response.");
                        }
                    }
                    zzdqgVar.zzT(jSONObject2.optDouble(IabUtils.KEY_RATING, -1.0d));
                    String optString = jSONObject2.optString("headline", null);
                    if (zzfilVar2.zzN) {
                        com.google.android.gms.ads.internal.zzt.zzp();
                        optString = com.google.android.gms.ads.internal.util.zzs.zzv() + " : " + optString;
                    }
                    zzdqgVar.zzU("headline", optString);
                    zzdqgVar.zzU(TtmlNode.TAG_BODY, jSONObject2.optString(TtmlNode.TAG_BODY, null));
                    zzdqgVar.zzU("call_to_action", jSONObject2.optString("call_to_action", null));
                    zzdqgVar.zzU("store", jSONObject2.optString("store", null));
                    zzdqgVar.zzU("price", jSONObject2.optString("price", null));
                    zzdqgVar.zzU("advertiser", jSONObject2.optString("advertiser", null));
                    return zzdqgVar;
                }
                throw new zzeom(1, "Invalid template ID: " + zzdqgVar.zzc());
            }
        });
        final zzgfb zzf = this.zzb.zzf(jSONObject, "images");
        final zzgfb zzg = this.zzb.zzg(jSONObject, "images", zzfilVar, zzfixVar.zzb.zzb);
        final zzgfb zze = this.zzb.zze(jSONObject, "secondary_image");
        final zzgfb zze2 = this.zzb.zze(jSONObject, "app_icon");
        final zzgfb zzd = this.zzb.zzd(jSONObject, "attribution");
        final zzgfb zzh = this.zzb.zzh(jSONObject, zzfilVar, zzfixVar.zzb.zzb);
        final zzdth zzdthVar = this.zzb;
        if (!jSONObject.optBoolean("enable_omid")) {
            zzn = zzger.zzi(null);
        } else {
            JSONObject optJSONObject = jSONObject.optJSONObject("omid_settings");
            if (optJSONObject == null) {
                zzn = zzger.zzi(null);
            } else {
                final String optString = optJSONObject.optString("omid_html");
                if (TextUtils.isEmpty(optString)) {
                    zzn = zzger.zzi(null);
                } else {
                    zzn = zzger.zzn(zzger.zzi(null), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzdsw
                        @Override // com.google.android.gms.internal.ads.zzgdy
                        public final zzgfb zza(Object obj) {
                            return zzdth.this.zzc(optString, obj);
                        }
                    }, zzcib.zze);
                }
            }
        }
        final zzgfb zzgfbVar = zzn;
        final zzgfb zza = this.zzc.zza(jSONObject, "custom_assets");
        return zzger.zzb(zzb, zzf, zzg, zze, zze2, zzd, zzh, zzgfbVar, zza).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdst
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzgfb zzgfbVar2 = zzb;
                zzgfb zzgfbVar3 = zzf;
                zzgfb zzgfbVar4 = zze2;
                zzgfb zzgfbVar5 = zze;
                zzgfb zzgfbVar6 = zzd;
                JSONObject jSONObject2 = jSONObject;
                zzgfb zzgfbVar7 = zzh;
                zzgfb zzgfbVar8 = zzg;
                zzgfb zzgfbVar9 = zzgfbVar;
                zzgfb zzgfbVar10 = zza;
                zzdqg zzdqgVar = (zzdqg) zzgfbVar2.get();
                zzdqgVar.zzN((List) zzgfbVar3.get());
                zzdqgVar.zzK((zzbml) zzgfbVar4.get());
                zzdqgVar.zzO((zzbml) zzgfbVar5.get());
                zzdqgVar.zzH((zzbmd) zzgfbVar6.get());
                zzdqgVar.zzQ(zzdth.zzj(jSONObject2));
                zzdqgVar.zzJ(zzdth.zzi(jSONObject2));
                zzcno zzcnoVar = (zzcno) zzgfbVar7.get();
                if (zzcnoVar != null) {
                    zzdqgVar.zzY(zzcnoVar);
                    zzdqgVar.zzX(zzcnoVar.zzH());
                    zzdqgVar.zzW(zzcnoVar.zzs());
                }
                zzcno zzcnoVar2 = (zzcno) zzgfbVar8.get();
                if (zzcnoVar2 != null) {
                    zzdqgVar.zzM(zzcnoVar2);
                    zzdqgVar.zzZ(zzcnoVar2.zzH());
                }
                zzcno zzcnoVar3 = (zzcno) zzgfbVar9.get();
                if (zzcnoVar3 != null) {
                    zzdqgVar.zzR(zzcnoVar3);
                }
                for (zzdtl zzdtlVar : (List) zzgfbVar10.get()) {
                    if (zzdtlVar.zza != 1) {
                        zzdqgVar.zzL(zzdtlVar.zzb, zzdtlVar.zzd);
                    } else {
                        zzdqgVar.zzU(zzdtlVar.zzb, zzdtlVar.zzc);
                    }
                }
                return zzdqgVar;
            }
        }, this.zza);
    }
}

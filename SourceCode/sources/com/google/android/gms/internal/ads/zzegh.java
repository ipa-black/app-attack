package com.google.android.gms.internal.ads;

import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzegh {
    private final zzgfc zza;
    private final zzegc zzb;
    private final zzfnj zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzegh(zzgfc zzgfcVar, zzegc zzegcVar, zzfnj zzfnjVar) {
        this.zza = zzgfcVar;
        this.zzb = zzegcVar;
        this.zzc = zzfnjVar;
    }

    public final zzgfb zza(final zzccb zzccbVar) {
        zzfna zzb = this.zzc.zzb(zzfnd.GMS_SIGNALS, zzger.zzm(zzger.zzi(null), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzege
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                zzccb zzccbVar2 = zzccb.this;
                return new zzcbf(zzccbVar2.zzc, zzccbVar2.zzd, zzccbVar2.zzf, zzfyt.zzc(zzccbVar2.zza.getString("ms")), -1, zzccbVar2.zzh, zzccbVar2.zze, zzccbVar2.zzk, zzccbVar2.zzl);
            }
        }, this.zza));
        final zzegc zzegcVar = this.zzb;
        return zzger.zzm(zzb.zzf(new zzgdy() { // from class: com.google.android.gms.internal.ads.zzegf
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzegc.this.zzb((zzcbf) obj);
            }
        }).zza(), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzegg
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                JSONObject zzi;
                JSONObject jSONObject = (JSONObject) obj;
                Bundle bundle = zzccbVar.zza;
                if (bundle != null) {
                    try {
                        zzi = com.google.android.gms.ads.internal.client.zzay.zzb().zzi(bundle);
                        try {
                            com.google.android.gms.ads.internal.client.zzay.zzb().zzl(zzi, jSONObject);
                        } catch (JSONException unused) {
                        }
                    } catch (JSONException unused2) {
                        return jSONObject;
                    }
                }
                return zzi;
            }
        }, this.zza);
    }
}

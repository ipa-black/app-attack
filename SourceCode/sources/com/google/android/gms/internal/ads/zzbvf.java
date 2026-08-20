package com.google.android.gms.internal.ads;

import java.util.UUID;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbvf implements zzgdy {
    private final zzbul zza;
    private final zzbum zzb;
    private final String zzc = "google.afma.activeView.handleUpdate";
    private final zzgfb zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbvf(zzgfb zzgfbVar, String str, zzbum zzbumVar, zzbul zzbulVar) {
        this.zzd = zzgfbVar;
        this.zzb = zzbumVar;
        this.zza = zzbulVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdy
    public final zzgfb zza(Object obj) throws Exception {
        return zzb(obj);
    }

    public final zzgfb zzb(final Object obj) {
        return zzger.zzn(this.zzd, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzbvd
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj2) {
                return zzbvf.this.zzc(obj, (zzbug) obj2);
            }
        }, zzcib.zzf);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzc(Object obj, zzbug zzbugVar) throws Exception {
        zzcig zzcigVar = new zzcig();
        com.google.android.gms.ads.internal.zzt.zzp();
        String uuid = UUID.randomUUID().toString();
        zzbqc.zzo.zzc(uuid, new zzbve(this, zzcigVar));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", uuid);
        jSONObject.put("args", (JSONObject) obj);
        zzbugVar.zzl(this.zzc, jSONObject);
        return zzcigVar;
    }
}

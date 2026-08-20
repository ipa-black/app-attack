package com.google.android.gms.internal.ads;

import java.util.UUID;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzbux implements zzbuj {
    private final zzbul zza;
    private final zzbum zzb;
    private final zzbuf zzc;
    private final String zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbux(zzbuf zzbufVar, String str, zzbum zzbumVar, zzbul zzbulVar) {
        this.zzc = zzbufVar;
        this.zzd = str;
        this.zzb = zzbumVar;
        this.zza = zzbulVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzd(zzbux zzbuxVar, zzbtz zzbtzVar, zzbug zzbugVar, Object obj, zzcig zzcigVar) {
        try {
            com.google.android.gms.ads.internal.zzt.zzp();
            String uuid = UUID.randomUUID().toString();
            zzbqc.zzo.zzc(uuid, new zzbuw(zzbuxVar, zzbtzVar, zzcigVar));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", uuid);
            jSONObject.put("args", zzbuxVar.zzb.zzb(obj));
            zzbugVar.zzl(zzbuxVar.zzd, jSONObject);
        } catch (Exception e2) {
            try {
                zzcigVar.zze(e2);
                com.google.android.gms.ads.internal.util.zze.zzh("Unable to invokeJavascript", e2);
            } finally {
                zzbtzVar.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdy
    public final zzgfb zza(Object obj) throws Exception {
        return zzb(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzbuj
    public final zzgfb zzb(Object obj) {
        zzcig zzcigVar = new zzcig();
        zzbtz zzb = this.zzc.zzb(null);
        zzb.zzi(new zzbuu(this, zzb, obj, zzcigVar), new zzbuv(this, zzcigVar, zzb));
        return zzcigVar;
    }
}

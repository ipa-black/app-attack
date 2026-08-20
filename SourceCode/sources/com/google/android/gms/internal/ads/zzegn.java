package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzegn {
    public zzgfb zza;
    private final zzefw zzb;
    private final zzfnj zzc;
    private final zzfjg zzd;
    private final zzchu zze;
    private final zzfoy zzf;
    private final zzfow zzg;
    private final Context zzh;
    private final zzgfc zzi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzegn(zzefw zzefwVar, zzfnj zzfnjVar, zzfjg zzfjgVar, zzchu zzchuVar, zzfoy zzfoyVar, zzfow zzfowVar, Context context, zzgfc zzgfcVar) {
        this.zzb = zzefwVar;
        this.zzc = zzfnjVar;
        this.zzd = zzfjgVar;
        this.zze = zzchuVar;
        this.zzf = zzfoyVar;
        this.zzg = zzfowVar;
        this.zzh = context;
        this.zzi = zzgfcVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzcbj zza(zzccb zzccbVar, zzehy zzehyVar) {
        Context context = this.zzh;
        zzehyVar.zzc.put("Content-Type", zzehyVar.zze);
        zzehyVar.zzc.put("User-Agent", com.google.android.gms.ads.internal.zzt.zzp().zzc(context, zzccbVar.zzb.zza));
        String str = zzehyVar.zza;
        int i = zzehyVar.zzb;
        Map map = zzehyVar.zzc;
        Bundle bundle = new Bundle();
        for (Map.Entry entry : map.entrySet()) {
            bundle.putString((String) entry.getKey(), (String) entry.getValue());
        }
        return new zzcbj(str, i, bundle, zzehyVar.zzd, zzehyVar.zzf, zzccbVar.zzd, zzccbVar.zzh);
    }

    public final zzgfb zzb(final zzccb zzccbVar, final JSONObject jSONObject, final zzcce zzcceVar) {
        zzfna zzb = this.zzc.zzb(zzfnd.PROXY, zzger.zzm(this.zzc.zzb(zzfnd.PREPARE_HTTP_REQUEST, zzger.zzi(new zzeic(jSONObject, zzcceVar))).zze(new zzeid(zzccbVar.zzg, this.zzg, zzfok.zza(this.zzh, 9))).zza(), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzegm
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                return zzegn.this.zza(zzccbVar, (zzehy) obj);
            }
        }, this.zzi));
        final zzefw zzefwVar = this.zzb;
        zzfmo zza = zzb.zzf(new zzgdy() { // from class: com.google.android.gms.internal.ads.zzegj
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzefw.this.zzc((zzcbj) obj);
            }
        }).zza();
        this.zza = zza;
        return zzger.zzn(this.zzc.zzb(zzfnd.PRE_PROCESS, zza).zze(new zzfmm() { // from class: com.google.android.gms.internal.ads.zzegl
            @Override // com.google.android.gms.internal.ads.zzfmm
            public final Object zza(Object obj) {
                return new zzehl(zzehz.zza(new InputStreamReader((InputStream) obj)), jSONObject, zzcceVar);
            }
        }).zzf(com.google.android.gms.ads.internal.zzt.zzf().zza(this.zzh, this.zze, this.zzf).zza("google.afma.response.normalize", zzehl.zza, zzbuq.zzb)).zza(), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzegk
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzegn.this.zzc((InputStream) obj);
            }
        }, this.zzi);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzc(InputStream inputStream) throws Exception {
        return zzger.zzi(new zzfix(new zzfiu(this.zzd), zzfiw.zza(new InputStreamReader(inputStream))));
    }
}

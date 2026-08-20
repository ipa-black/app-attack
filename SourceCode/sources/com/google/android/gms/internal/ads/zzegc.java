package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.ExecutionException;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzegc {
    private final zzgfc zza;
    private final zzgfc zzb;
    private final zzegt zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzegc(zzgfc zzgfcVar, zzgfc zzgfcVar2, zzegt zzegtVar) {
        this.zza = zzgfcVar;
        this.zzb = zzgfcVar2;
        this.zzc = zzegtVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zza(zzcbf zzcbfVar) throws Exception {
        return this.zzc.zza(zzcbfVar, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzjy)).longValue());
    }

    public final zzgfb zzb(final zzcbf zzcbfVar) {
        zzgfb zzg;
        String str = zzcbfVar.zzb;
        com.google.android.gms.ads.internal.zzt.zzp();
        if (com.google.android.gms.ads.internal.util.zzs.zzy(str)) {
            zzg = zzger.zzh(new zzefg(1, "Ads signal service force local"));
        } else {
            zzg = zzger.zzg(zzger.zzl(new zzgdx() { // from class: com.google.android.gms.internal.ads.zzefy
                @Override // com.google.android.gms.internal.ads.zzgdx
                public final zzgfb zza() {
                    return zzegc.this.zza(zzcbfVar);
                }
            }, this.zza), ExecutionException.class, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzefz
                @Override // com.google.android.gms.internal.ads.zzgdy
                public final zzgfb zza(Object obj) {
                    ExecutionException executionException = (ExecutionException) obj;
                    Throwable cause = executionException.getCause();
                    Throwable th = executionException;
                    if (cause != null) {
                        th = executionException.getCause();
                    }
                    return zzger.zzh(th);
                }
            }, this.zzb);
        }
        return zzger.zzn(zzger.zzg(zzgei.zzv(zzg), zzefg.class, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzega
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                zzefg zzefgVar = (zzefg) obj;
                return zzger.zzi(null);
            }
        }, this.zzb), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzegb
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                InputStream inputStream = (InputStream) obj;
                JSONObject jSONObject = new JSONObject();
                if (inputStream == null) {
                    return zzger.zzi(jSONObject);
                }
                try {
                    com.google.android.gms.ads.internal.zzt.zzp();
                    jSONObject = new JSONObject(com.google.android.gms.ads.internal.util.zzs.zzJ(new InputStreamReader(inputStream)));
                } catch (IOException | JSONException e2) {
                    com.google.android.gms.ads.internal.zzt.zzo().zzu(e2, "AdsServiceSignalTask.startAdsServiceSignalTask");
                }
                return zzger.zzi(jSONObject);
            }
        }, this.zzb);
    }
}

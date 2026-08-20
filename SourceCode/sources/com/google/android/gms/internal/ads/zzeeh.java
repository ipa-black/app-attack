package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeeh implements zzeff {
    private static final Pattern zza = Pattern.compile("Received error HTTP response code: (.*)");
    private final zzedi zzb;
    private final zzgfc zzc;
    private final zzfjg zzd;
    private final ScheduledExecutorService zze;
    private final zzejc zzf;
    private final zzfow zzg;
    private final Context zzh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeeh(Context context, zzfjg zzfjgVar, zzedi zzediVar, zzgfc zzgfcVar, ScheduledExecutorService scheduledExecutorService, zzejc zzejcVar, zzfow zzfowVar) {
        this.zzh = context;
        this.zzd = zzfjgVar;
        this.zzb = zzediVar;
        this.zzc = zzgfcVar;
        this.zze = scheduledExecutorService;
        this.zzf = zzejcVar;
        this.zzg = zzfowVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeff
    public final zzgfb zzb(zzccb zzccbVar) {
        zzgfb zzb = this.zzb.zzb(zzccbVar);
        zzfol zza2 = zzfok.zza(this.zzh, 11);
        zzfov.zzd(zzb, zza2);
        zzgfb zzn = zzger.zzn(zzb, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzeee
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzeeh.this.zzc((InputStream) obj);
            }
        }, this.zzc);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzeV)).booleanValue()) {
            zzn = zzger.zzg(zzger.zzo(zzn, ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzeW)).intValue(), TimeUnit.SECONDS, this.zze), TimeoutException.class, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzeef
                @Override // com.google.android.gms.internal.ads.zzgdy
                public final zzgfb zza(Object obj) {
                    TimeoutException timeoutException = (TimeoutException) obj;
                    return zzger.zzh(new zzede(5));
                }
            }, zzcib.zzf);
        }
        zzfov.zza(zzn, this.zzg, zza2);
        zzger.zzr(zzn, new zzeeg(this), zzcib.zzf);
        return zzn;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzc(InputStream inputStream) throws Exception {
        return zzger.zzi(new zzfix(new zzfiu(this.zzd), zzfiw.zza(new InputStreamReader(inputStream))));
    }
}

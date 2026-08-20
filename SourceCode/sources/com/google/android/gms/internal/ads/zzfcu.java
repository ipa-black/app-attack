package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfcu implements zzezm {
    private final zzcgx zza;
    private final boolean zzb;
    private final boolean zzc;
    private final ScheduledExecutorService zzd;
    private final zzgfc zze;
    private final String zzf;
    private final zzcgm zzg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfcu(zzcgx zzcgxVar, boolean z, boolean z2, zzcgm zzcgmVar, zzgfc zzgfcVar, String str, ScheduledExecutorService scheduledExecutorService, byte[] bArr) {
        this.zza = zzcgxVar;
        this.zzb = z;
        this.zzc = z2;
        this.zzg = zzcgmVar;
        this.zze = zzgfcVar;
        this.zzf = str;
        this.zzd = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 50;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgD)).booleanValue() || !this.zzc) {
            if (this.zzb) {
                return zzger.zzf(zzger.zzo(zzger.zzm(zzger.zzi(null), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzfcs
                    @Override // com.google.android.gms.internal.ads.zzfxt
                    public final Object apply(Object obj) {
                        String str = (String) obj;
                        if (str == null) {
                            return null;
                        }
                        return new zzfcv(str);
                    }
                }, this.zze), ((Long) zzblm.zzc.zze()).longValue(), TimeUnit.MILLISECONDS, this.zzd), Exception.class, new zzfxt() { // from class: com.google.android.gms.internal.ads.zzfct
                    @Override // com.google.android.gms.internal.ads.zzfxt
                    public final Object apply(Object obj) {
                        zzfcu.this.zzc((Exception) obj);
                        return null;
                    }
                }, this.zze);
            }
            return zzger.zzi(null);
        }
        return zzger.zzi(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzfcv zzc(Exception exc) {
        this.zza.zzu(exc, "TrustlessTokenSignal");
        return null;
    }
}

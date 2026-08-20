package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeyx implements zzezm {
    private final zzcft zza;
    private final zzgfc zzb;
    private final Context zzc;

    public zzeyx(zzcft zzcftVar, zzgfc zzgfcVar, Context context) {
        this.zza = zzcftVar;
        this.zzb = zzgfcVar;
        this.zzc = context;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 34;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeyw
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeyx.this.zzc();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzeyy zzc() throws Exception {
        if (this.zza.zzu(this.zzc)) {
            String zze = this.zza.zze(this.zzc);
            String str = zze == null ? "" : zze;
            String zzc = this.zza.zzc(this.zzc);
            String str2 = zzc == null ? "" : zzc;
            String zza = this.zza.zza(this.zzc);
            String str3 = zza == null ? "" : zza;
            String zzb = this.zza.zzb(this.zzc);
            return new zzeyy(str, str2, str3, zzb == null ? "" : zzb, "TIME_OUT".equals(str2) ? (Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzad) : null);
        }
        return new zzeyy(null, null, null, null, null);
    }
}

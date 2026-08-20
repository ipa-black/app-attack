package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfah implements zzezm {
    private final Executor zza;
    private final String zzb;
    private final PackageInfo zzc;
    private final zzcgo zzd;

    public zzfah(zzcgo zzcgoVar, Executor executor, String str, PackageInfo packageInfo, int i, byte[] bArr) {
        this.zzd = zzcgoVar;
        this.zza = executor;
        this.zzb = str;
        this.zzc = packageInfo;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 41;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return zzger.zzg(zzger.zzm(zzger.zzi(this.zzb), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzfaf
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                return new zzfai((String) obj);
            }
        }, this.zza), Throwable.class, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzfag
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzfah.this.zzc((Throwable) obj);
            }
        }, this.zza);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzc(Throwable th) throws Exception {
        return zzger.zzi(new zzfai(this.zzb));
    }
}

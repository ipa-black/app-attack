package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzetl implements zzezm {
    private final zzgfc zza;
    private final zzfjg zzb;
    private final zzfjs zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzetl(zzgfc zzgfcVar, zzfjg zzfjgVar, zzfjs zzfjsVar) {
        this.zza = zzgfcVar;
        this.zzb = zzfjgVar;
        this.zzc = zzfjsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 5;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzetk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzetl.this.zzc();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzetm zzc() throws Exception {
        String str = null;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgE)).booleanValue() && "requester_type_2".equals(com.google.android.gms.ads.nonagon.signalgeneration.zzf.zzb(this.zzb.zzd))) {
            str = zzfjs.zza();
        }
        return new zzetm(str);
    }
}

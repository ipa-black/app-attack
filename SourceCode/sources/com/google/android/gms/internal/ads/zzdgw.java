package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdgw extends zzdjx implements zzdfh, zzdgm {
    private final zzfil zzb;
    private final AtomicBoolean zzc;

    public zzdgw(Set set, zzfil zzfilVar) {
        super(set);
        this.zzc = new AtomicBoolean();
        this.zzb = zzfilVar;
    }

    private final void zzb() {
        com.google.android.gms.ads.internal.client.zzs zzsVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgY)).booleanValue() && this.zzc.compareAndSet(false, true) && (zzsVar = this.zzb.zzag) != null && zzsVar.zza == 3) {
            zzo(new zzdjw() { // from class: com.google.android.gms.internal.ads.zzdgv
                @Override // com.google.android.gms.internal.ads.zzdjw
                public final void zza(Object obj) {
                    zzdgw.this.zza((zzdgy) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zza(zzdgy zzdgyVar) throws Exception {
        zzdgyVar.zzg(this.zzb.zzag);
    }

    @Override // com.google.android.gms.internal.ads.zzdgm
    public final void zzh() {
        if (this.zzb.zzb == 1) {
            zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfh
    public final void zzl() {
        int i = this.zzb.zzb;
        if (i == 2 || i == 5 || i == 4 || i == 6 || i == 7) {
            zzb();
        }
    }
}

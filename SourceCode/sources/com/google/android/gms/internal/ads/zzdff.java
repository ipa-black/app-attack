package com.google.android.gms.internal.ads;

import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdff extends zzdjx {
    private boolean zzb;

    public zzdff(Set set) {
        super(set);
        this.zzb = false;
    }

    public final synchronized void zza() {
        if (this.zzb) {
            return;
        }
        zzo(new zzdjw() { // from class: com.google.android.gms.internal.ads.zzdfe
            @Override // com.google.android.gms.internal.ads.zzdjw
            public final void zza(Object obj) {
                ((zzdfh) obj).zzl();
            }
        });
        this.zzb = true;
    }
}

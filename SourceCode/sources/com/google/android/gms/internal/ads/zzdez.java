package com.google.android.gms.internal.ads;

import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdez extends zzdjx implements zzder {
    public zzdez(Set set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zza(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzo(new zzdjw() { // from class: com.google.android.gms.internal.ads.zzdew
            @Override // com.google.android.gms.internal.ads.zzdjw
            public final void zza(Object obj) {
                ((zzdfd) obj).zzk(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzb() {
        zzo(new zzdjw() { // from class: com.google.android.gms.internal.ads.zzdex
            @Override // com.google.android.gms.internal.ads.zzdjw
            public final void zza(Object obj) {
                ((zzdfd) obj).zzk(zzfkg.zzd(11, null, null));
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzc(final zzdod zzdodVar) {
        zzo(new zzdjw() { // from class: com.google.android.gms.internal.ads.zzdey
            @Override // com.google.android.gms.internal.ads.zzdjw
            public final void zza(Object obj) {
                ((zzdfd) obj).zzk(zzfkg.zzd(12, zzdod.this.getMessage(), null));
            }
        });
    }
}

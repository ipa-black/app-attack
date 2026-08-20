package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdty {
    private final Executor zza;
    private final zzcxc zzb;
    private final zzdlw zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdty(Executor executor, zzcxc zzcxcVar, zzdlw zzdlwVar) {
        this.zza = executor;
        this.zzc = zzdlwVar;
        this.zzb = zzcxcVar;
    }

    public final void zza(final zzcno zzcnoVar) {
        if (zzcnoVar == null) {
            return;
        }
        this.zzc.zza(zzcnoVar.zzH());
        this.zzc.zzj(new zzbbx() { // from class: com.google.android.gms.internal.ads.zzdtu
            @Override // com.google.android.gms.internal.ads.zzbbx
            public final void zzc(zzbbw zzbbwVar) {
                zzcno.this.zzP().zzo(zzbbwVar.zzd.left, zzbbwVar.zzd.top, false);
            }
        }, this.zza);
        this.zzc.zzj(new zzbbx() { // from class: com.google.android.gms.internal.ads.zzdtv
            @Override // com.google.android.gms.internal.ads.zzbbx
            public final void zzc(zzbbw zzbbwVar) {
                zzcno zzcnoVar2 = zzcno.this;
                HashMap hashMap = new HashMap();
                hashMap.put("isVisible", true != zzbbwVar.zzj ? "0" : IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                zzcnoVar2.zzd("onAdVisibilityChanged", hashMap);
            }
        }, this.zza);
        this.zzc.zzj(this.zzb, this.zza);
        this.zzb.zzf(zzcnoVar);
        zzcnoVar.zzaf("/trackActiveViewUnit", new zzbqd() { // from class: com.google.android.gms.internal.ads.zzdtw
            @Override // com.google.android.gms.internal.ads.zzbqd
            public final void zza(Object obj, Map map) {
                zzdty.this.zzb((zzcno) obj, map);
            }
        });
        zzcnoVar.zzaf("/untrackActiveViewUnit", new zzbqd() { // from class: com.google.android.gms.internal.ads.zzdtx
            @Override // com.google.android.gms.internal.ads.zzbqd
            public final void zza(Object obj, Map map) {
                zzdty.this.zzc((zzcno) obj, map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(zzcno zzcnoVar, Map map) {
        this.zzb.zzb();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzc(zzcno zzcnoVar, Map map) {
        this.zzb.zza();
    }
}

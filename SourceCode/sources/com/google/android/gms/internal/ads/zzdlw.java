package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdlw extends zzdjx implements zzbbx {
    private final Map zzb;
    private final Context zzc;
    private final zzfil zzd;

    public zzdlw(Context context, Set set, zzfil zzfilVar) {
        super(set);
        this.zzb = new WeakHashMap(1);
        this.zzc = context;
        this.zzd = zzfilVar;
    }

    public final synchronized void zza(View view) {
        zzbby zzbbyVar = (zzbby) this.zzb.get(view);
        if (zzbbyVar == null) {
            zzbbyVar = new zzbby(this.zzc, view);
            zzbbyVar.zzc(this);
            this.zzb.put(view, zzbbyVar);
        }
        if (this.zzd.zzY) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbh)).booleanValue()) {
                zzbbyVar.zzg(((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbg)).longValue());
                return;
            }
        }
        zzbbyVar.zzf();
    }

    public final synchronized void zzb(View view) {
        if (this.zzb.containsKey(view)) {
            ((zzbby) this.zzb.get(view)).zze(this);
            this.zzb.remove(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbx
    public final synchronized void zzc(final zzbbw zzbbwVar) {
        zzo(new zzdjw() { // from class: com.google.android.gms.internal.ads.zzdlv
            @Override // com.google.android.gms.internal.ads.zzdjw
            public final void zza(Object obj) {
                ((zzbbx) obj).zzc(zzbbw.this);
            }
        });
    }
}

package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdqa implements zzbbx {
    final /* synthetic */ String zza;
    final /* synthetic */ zzdqb zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdqa(zzdqb zzdqbVar, String str) {
        this.zzb = zzdqbVar;
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbbx
    public final void zzc(zzbbw zzbbwVar) {
        Map map;
        zzdsc zzdscVar;
        zzdsc zzdscVar2;
        zzdsc zzdscVar3;
        zzdsc zzdscVar4;
        Map map2;
        zzdsc zzdscVar5;
        zzdsc zzdscVar6;
        zzdsc zzdscVar7;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbz)).booleanValue()) {
            synchronized (this) {
                if (zzbbwVar.zzj) {
                    zzdqb zzdqbVar = this.zzb;
                    zzdscVar4 = zzdqbVar.zzo;
                    if (zzdscVar4 == null) {
                        return;
                    }
                    map2 = zzdqbVar.zzy;
                    map2.put(this.zza, true);
                    zzdqb zzdqbVar2 = this.zzb;
                    zzdscVar5 = zzdqbVar2.zzo;
                    View zzf = zzdscVar5.zzf();
                    zzdscVar6 = this.zzb.zzo;
                    Map zzl = zzdscVar6.zzl();
                    zzdscVar7 = this.zzb.zzo;
                    zzdqbVar2.zzx(zzf, zzl, zzdscVar7.zzm(), true);
                }
            }
        } else if (zzbbwVar.zzj) {
            map = this.zzb.zzy;
            map.put(this.zza, true);
            zzdqb zzdqbVar3 = this.zzb;
            zzdscVar = zzdqbVar3.zzo;
            View zzf2 = zzdscVar.zzf();
            zzdscVar2 = this.zzb.zzo;
            Map zzl2 = zzdscVar2.zzl();
            zzdscVar3 = this.zzb.zzo;
            zzdqbVar3.zzx(zzf2, zzl2, zzdscVar3.zzm(), true);
        }
    }
}

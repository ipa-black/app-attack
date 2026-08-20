package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbdi implements Comparator {
    public zzbdi(zzbdj zzbdjVar) {
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        zzbcx zzbcxVar = (zzbcx) obj;
        zzbcx zzbcxVar2 = (zzbcx) obj2;
        if (zzbcxVar.zzd() < zzbcxVar2.zzd()) {
            return -1;
        }
        if (zzbcxVar.zzd() <= zzbcxVar2.zzd()) {
            if (zzbcxVar.zzb() < zzbcxVar2.zzb()) {
                return -1;
            }
            if (zzbcxVar.zzb() <= zzbcxVar2.zzb()) {
                float zza = (zzbcxVar.zza() - zzbcxVar.zzd()) * (zzbcxVar.zzc() - zzbcxVar.zzb());
                float zza2 = (zzbcxVar2.zza() - zzbcxVar2.zzd()) * (zzbcxVar2.zzc() - zzbcxVar2.zzb());
                if (zza > zza2) {
                    return -1;
                }
                if (zza >= zza2) {
                    return 0;
                }
            }
        }
        return 1;
    }
}

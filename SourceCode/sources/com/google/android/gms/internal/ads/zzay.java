package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public class zzay {
    public final Uri zza;
    public final List zze;
    public final zzgau zzg;
    @Deprecated
    public final List zzh;
    public final Object zzi;
    public final String zzb = null;
    public final zzas zzc = null;
    public final zzai zzd = null;
    public final String zzf = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzay(Uri uri, String str, zzas zzasVar, zzai zzaiVar, List list, String str2, zzgau zzgauVar, Object obj, zzax zzaxVar) {
        this.zza = uri;
        this.zze = list;
        this.zzg = zzgauVar;
        zzgar zzi = zzgau.zzi();
        if (zzgauVar.size() > 0) {
            zzbe zzbeVar = (zzbe) zzgauVar.get(0);
            throw null;
        }
        this.zzh = zzi.zzg();
        this.zzi = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzay) {
            zzay zzayVar = (zzay) obj;
            if (this.zza.equals(zzayVar.zza)) {
                String str = zzayVar.zzb;
                if (zzen.zzT(null, null)) {
                    zzas zzasVar = zzayVar.zzc;
                    if (zzen.zzT(null, null)) {
                        zzai zzaiVar = zzayVar.zzd;
                        if (zzen.zzT(null, null) && this.zze.equals(zzayVar.zze)) {
                            String str2 = zzayVar.zzf;
                            if (zzen.zzT(null, null) && this.zzg.equals(zzayVar.zzg)) {
                                Object obj2 = zzayVar.zzi;
                                if (zzen.zzT(null, null)) {
                                    return true;
                                }
                            }
                        }
                    }
                }
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.zza.hashCode() * 923521) + this.zze.hashCode()) * 961) + this.zzg.hashCode()) * 31;
    }
}

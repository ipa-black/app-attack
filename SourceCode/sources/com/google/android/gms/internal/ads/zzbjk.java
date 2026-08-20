package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbjk {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static List zza() {
        ArrayList arrayList = new ArrayList();
        zzc(arrayList, zzbkl.zzc("gad:dynamite_module:experiment_id", ""));
        zzc(arrayList, zzbkw.zza);
        zzc(arrayList, zzbkw.zzb);
        zzc(arrayList, zzbkw.zzc);
        zzc(arrayList, zzbkw.zzd);
        zzc(arrayList, zzbkw.zze);
        zzc(arrayList, zzbkw.zzu);
        zzc(arrayList, zzbkw.zzf);
        zzc(arrayList, zzbkw.zzm);
        zzc(arrayList, zzbkw.zzn);
        zzc(arrayList, zzbkw.zzo);
        zzc(arrayList, zzbkw.zzp);
        zzc(arrayList, zzbkw.zzq);
        zzc(arrayList, zzbkw.zzr);
        zzc(arrayList, zzbkw.zzs);
        zzc(arrayList, zzbkw.zzt);
        zzc(arrayList, zzbkw.zzg);
        zzc(arrayList, zzbkw.zzh);
        zzc(arrayList, zzbkw.zzi);
        zzc(arrayList, zzbkw.zzj);
        zzc(arrayList, zzbkw.zzk);
        zzc(arrayList, zzbkw.zzl);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List zzb() {
        ArrayList arrayList = new ArrayList();
        zzc(arrayList, zzblj.zza);
        return arrayList;
    }

    private static void zzc(List list, zzbkl zzbklVar) {
        String str = (String) zzbklVar.zze();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        list.add(str);
    }
}

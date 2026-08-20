package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzyo {
    public final List zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final float zze;
    public final String zzf;

    private zzyo(List list, int i, int i2, int i3, float f2, String str) {
        this.zza = list;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = f2;
        this.zzf = str;
    }

    public static zzyo zza(zzef zzefVar) throws zzbu {
        int i;
        int i2;
        float f2;
        String str;
        try {
            zzefVar.zzG(4);
            int zzk = zzefVar.zzk() & 3;
            int i3 = zzk + 1;
            if (i3 == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int zzk2 = zzefVar.zzk() & 31;
            for (int i4 = 0; i4 < zzk2; i4++) {
                arrayList.add(zzb(zzefVar));
            }
            int zzk3 = zzefVar.zzk();
            for (int i5 = 0; i5 < zzk3; i5++) {
                arrayList.add(zzb(zzefVar));
            }
            if (zzk2 > 0) {
                zzaaf zzd = zzaag.zzd((byte[]) arrayList.get(0), zzk + 2, ((byte[]) arrayList.get(0)).length);
                int i6 = zzd.zze;
                int i7 = zzd.zzf;
                float f3 = zzd.zzg;
                str = zzdf.zza(zzd.zza, zzd.zzb, zzd.zzc);
                i = i6;
                i2 = i7;
                f2 = f3;
            } else {
                i = -1;
                i2 = -1;
                f2 = 1.0f;
                str = null;
            }
            return new zzyo(arrayList, i3, i, i2, f2, str);
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw zzbu.zza("Error parsing AVC config", e2);
        }
    }

    private static byte[] zzb(zzef zzefVar) {
        int zzo = zzefVar.zzo();
        int zzc = zzefVar.zzc();
        zzefVar.zzG(zzo);
        return zzdf.zzc(zzefVar.zzH(), zzc, zzo);
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final /* synthetic */ class zzfok {
    public static zzfol zza(Context context, int i) {
        boolean booleanValue;
        if (zzfoy.zza()) {
            int i2 = i - 2;
            if (i2 == 20 || i2 == 21) {
                booleanValue = ((Boolean) zzbks.zze.zze()).booleanValue();
            } else {
                switch (i2) {
                    case 2:
                    case 3:
                    case 6:
                    case 7:
                    case 8:
                        booleanValue = ((Boolean) zzbks.zzc.zze()).booleanValue();
                        break;
                    case 4:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                        booleanValue = ((Boolean) zzbks.zzd.zze()).booleanValue();
                        break;
                    case 5:
                        booleanValue = ((Boolean) zzbks.zzb.zze()).booleanValue();
                        break;
                }
            }
            if (booleanValue) {
                return new zzfon(context, i);
            }
        }
        return new zzfph();
    }

    public static zzfol zzb(Context context, int i, int i2, com.google.android.gms.ads.internal.client.zzl zzlVar) {
        zzfol zza = zza(context, i);
        if (zza instanceof zzfon) {
            zza.zzh();
            zza.zzm(i2);
            if (zzfov.zze(zzlVar.zzp)) {
                zza.zze(zzlVar.zzp);
            }
            return zza;
        }
        return zza;
    }
}

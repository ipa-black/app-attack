package com.google.android.gms.ads.internal.util;

import android.content.Context;
import androidx.browser.trusted.sharing.ShareTarget;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.internal.ads.zzajm;
import com.google.android.gms.internal.ads.zzakh;
import com.google.android.gms.internal.ads.zzall;
import com.google.android.gms.internal.ads.zzbjj;
import com.google.android.gms.internal.ads.zzchn;
import com.google.android.gms.internal.ads.zzcig;
import com.google.android.gms.internal.ads.zzgfb;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes3.dex */
public final class zzbo {
    private static zzakh zzb;
    private static final Object zzc = new Object();
    @Deprecated
    public static final zzbj zza = new zzbg();

    public zzbo(Context context) {
        zzakh zza2;
        context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        synchronized (zzc) {
            if (zzb == null) {
                zzbjj.zzc(context);
                if (!ClientLibraryUtils.isPackageSide()) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdU)).booleanValue()) {
                        zza2 = zzax.zzb(context);
                        zzb = zza2;
                    }
                }
                zza2 = zzall.zza(context, null);
                zzb = zza2;
            }
        }
    }

    public final zzgfb zza(String str) {
        zzcig zzcigVar = new zzcig();
        zzb.zza(new zzbn(str, null, zzcigVar));
        return zzcigVar;
    }

    public final zzgfb zzb(int i, String str, Map map, byte[] bArr) {
        zzbl zzblVar = new zzbl(null);
        zzbh zzbhVar = new zzbh(this, str, zzblVar);
        zzchn zzchnVar = new zzchn(null);
        zzbi zzbiVar = new zzbi(this, i, str, zzblVar, zzbhVar, bArr, map, zzchnVar);
        if (zzchn.zzl()) {
            try {
                zzchnVar.zzd(str, ShareTarget.METHOD_GET, zzbiVar.zzl(), zzbiVar.zzx());
            } catch (zzajm e2) {
                zze.zzj(e2.getMessage());
            }
        }
        zzb.zza(zzbiVar);
        return zzblVar;
    }
}

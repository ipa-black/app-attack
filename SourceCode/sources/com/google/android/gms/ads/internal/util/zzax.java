package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.zzaka;
import com.google.android.gms.internal.ads.zzake;
import com.google.android.gms.internal.ads.zzakh;
import com.google.android.gms.internal.ads.zzakn;
import com.google.android.gms.internal.ads.zzaks;
import com.google.android.gms.internal.ads.zzakt;
import com.google.android.gms.internal.ads.zzala;
import com.google.android.gms.internal.ads.zzalf;
import com.google.android.gms.internal.ads.zzbjj;
import com.google.android.gms.internal.ads.zzbry;
import com.google.android.gms.internal.ads.zzchh;
import java.io.File;
import java.util.regex.Pattern;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes3.dex */
public final class zzax extends zzakt {
    private final Context zzc;

    private zzax(Context context, zzaks zzaksVar) {
        super(zzaksVar);
        this.zzc = context;
    }

    public static zzakh zzb(Context context) {
        zzakh zzakhVar = new zzakh(new zzala(new File(context.getCacheDir(), "admob_volley"), 20971520), new zzax(context, new zzalf(null, null)), 4);
        zzakhVar.zzd();
        return zzakhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzakt, com.google.android.gms.internal.ads.zzajx
    public final zzaka zza(zzake zzakeVar) throws zzakn {
        if (zzakeVar.zza() == 0) {
            if (Pattern.matches((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdV), zzakeVar.zzk())) {
                com.google.android.gms.ads.internal.client.zzay.zzb();
                if (zzchh.zzt(this.zzc, 13400000)) {
                    zzaka zza = new zzbry(this.zzc).zza(zzakeVar);
                    if (zza != null) {
                        zze.zza("Got gmscore asset response: ".concat(String.valueOf(zzakeVar.zzk())));
                        return zza;
                    }
                    zze.zza("Failed to get gmscore asset response: ".concat(String.valueOf(zzakeVar.zzk())));
                }
            }
        }
        return super.zza(zzakeVar);
    }
}

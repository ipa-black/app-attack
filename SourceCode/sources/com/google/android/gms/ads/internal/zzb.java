package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzcbh;
import com.google.android.gms.internal.ads.zzcep;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes3.dex */
public final class zzb {
    private final Context zza;
    private boolean zzb;
    private final zzcep zzc;
    private final zzcbh zzd = new zzcbh(false, Collections.emptyList());

    public zzb(Context context, zzcep zzcepVar, zzcbh zzcbhVar) {
        this.zza = context;
        this.zzc = zzcepVar;
    }

    private final boolean zzd() {
        zzcep zzcepVar = this.zzc;
        return (zzcepVar != null && zzcepVar.zza().zzf) || this.zzd.zza;
    }

    public final void zza() {
        this.zzb = true;
    }

    public final void zzb(String str) {
        List<String> list;
        if (zzd()) {
            if (str == null) {
                str = "";
            }
            zzcep zzcepVar = this.zzc;
            if (zzcepVar != null) {
                zzcepVar.zzd(str, null, 3);
                return;
            }
            zzcbh zzcbhVar = this.zzd;
            if (!zzcbhVar.zza || (list = zzcbhVar.zzb) == null) {
                return;
            }
            for (String str2 : list) {
                if (!TextUtils.isEmpty(str2)) {
                    String replace = str2.replace("{NAVIGATION_URL}", Uri.encode(str));
                    zzt.zzp();
                    com.google.android.gms.ads.internal.util.zzs.zzH(this.zza, "", replace);
                }
            }
        }
    }

    public final boolean zzc() {
        return !zzd() || this.zzb;
    }
}

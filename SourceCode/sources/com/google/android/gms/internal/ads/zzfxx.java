package com.google.android.gms.internal.ads;

import java.util.Arrays;
import javax.annotation.CheckForNull;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfxx {
    private final String zza;
    private final zzfxw zzb;
    private zzfxw zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfxx(String str, zzfxv zzfxvVar) {
        zzfxw zzfxwVar = new zzfxw(null);
        this.zzb = zzfxwVar;
        this.zzc = zzfxwVar;
        str.getClass();
        this.zza = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.zza);
        sb.append('{');
        zzfxw zzfxwVar = this.zzb.zzb;
        String str = "";
        while (zzfxwVar != null) {
            Object obj = zzfxwVar.zza;
            sb.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            }
            zzfxwVar = zzfxwVar.zzb;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }

    public final zzfxx zza(@CheckForNull Object obj) {
        zzfxw zzfxwVar = new zzfxw(null);
        this.zzc.zzb = zzfxwVar;
        this.zzc = zzfxwVar;
        zzfxwVar.zza = obj;
        return this;
    }
}

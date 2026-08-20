package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcwn {
    private final String zza;
    private final zzbvc zzb;
    private final Executor zzc;
    private zzcws zzd;
    private final zzbqd zze = new zzcwk(this);
    private final zzbqd zzf = new zzcwm(this);

    public zzcwn(String str, zzbvc zzbvcVar, Executor executor) {
        this.zza = str;
        this.zzb = zzbvcVar;
        this.zzc = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ boolean zzg(zzcwn zzcwnVar, Map map) {
        if (map == null) {
            return false;
        }
        String str = (String) map.get("hashCode");
        return !TextUtils.isEmpty(str) && str.equals(zzcwnVar.zza);
    }

    public final void zzc(zzcws zzcwsVar) {
        this.zzb.zzb("/updateActiveView", this.zze);
        this.zzb.zzb("/untrackActiveViewUnit", this.zzf);
        this.zzd = zzcwsVar;
    }

    public final void zzd(zzcno zzcnoVar) {
        zzcnoVar.zzaf("/updateActiveView", this.zze);
        zzcnoVar.zzaf("/untrackActiveViewUnit", this.zzf);
    }

    public final void zze() {
        this.zzb.zzc("/updateActiveView", this.zze);
        this.zzb.zzc("/untrackActiveViewUnit", this.zzf);
    }

    public final void zzf(zzcno zzcnoVar) {
        zzcnoVar.zzaw("/updateActiveView", this.zze);
        zzcnoVar.zzaw("/untrackActiveViewUnit", this.zzf);
    }
}

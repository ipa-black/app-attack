package com.google.android.gms.ads.internal.util;

import androidx.browser.trusted.sharing.ShareTarget;
import com.google.android.gms.internal.ads.zzaka;
import com.google.android.gms.internal.ads.zzake;
import com.google.android.gms.internal.ads.zzakk;
import com.google.android.gms.internal.ads.zzalb;
import com.google.android.gms.internal.ads.zzchn;
import com.google.android.gms.internal.ads.zzcig;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes3.dex */
public final class zzbn extends zzake {
    private final zzcig zza;
    private final zzchn zzb;

    public zzbn(String str, Map map, zzcig zzcigVar) {
        super(0, str, new zzbm(zzcigVar));
        this.zza = zzcigVar;
        zzchn zzchnVar = new zzchn(null);
        this.zzb = zzchnVar;
        zzchnVar.zzd(str, ShareTarget.METHOD_GET, null, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzake
    public final zzakk zzh(zzaka zzakaVar) {
        return zzakk.zzb(zzakaVar, zzalb.zzb(zzakaVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzake
    public final /* bridge */ /* synthetic */ void zzo(Object obj) {
        zzaka zzakaVar = (zzaka) obj;
        this.zzb.zzf(zzakaVar.zzc, zzakaVar.zza);
        zzchn zzchnVar = this.zzb;
        byte[] bArr = zzakaVar.zzb;
        if (zzchn.zzl() && bArr != null) {
            zzchnVar.zzh(bArr);
        }
        this.zza.zzd(zzakaVar);
    }
}

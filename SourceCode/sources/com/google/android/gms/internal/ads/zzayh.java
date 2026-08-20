package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer2.C;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzayh implements zzayl, zzayk {
    private final Uri zza;
    private final zzazs zzb;
    private final zzavi zzc;
    private final int zzd;
    private final Handler zze;
    private final zzayg zzf;
    private final zzatm zzg = new zzatm();
    private final int zzh;
    private zzayk zzi;
    private zzato zzj;
    private boolean zzk;

    public zzayh(Uri uri, zzazs zzazsVar, zzavi zzaviVar, int i, Handler handler, zzayg zzaygVar, String str, int i2) {
        this.zza = uri;
        this.zzb = zzazsVar;
        this.zzc = zzaviVar;
        this.zzd = i;
        this.zze = handler;
        this.zzf = zzaygVar;
        this.zzh = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zza() throws IOException {
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zzb(zzast zzastVar, boolean z, zzayk zzaykVar) {
        this.zzi = zzaykVar;
        zzayy zzayyVar = new zzayy(C.TIME_UNSET, false);
        this.zzj = zzayyVar;
        zzaykVar.zzg(zzayyVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zzc(zzayj zzayjVar) {
        ((zzayf) zzayjVar).zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zzd() {
        this.zzi = null;
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final zzayj zze(int i, zzazw zzazwVar) {
        zzbaj.zzc(i == 0);
        return new zzayf(this.zza, this.zzb.zza(), this.zzc.zza(), this.zzd, this.zze, this.zzf, this, zzazwVar, null, this.zzh, null);
    }

    @Override // com.google.android.gms.internal.ads.zzayk
    public final void zzg(zzato zzatoVar, Object obj) {
        zzatm zzatmVar = this.zzg;
        zzatoVar.zzd(0, zzatmVar, false);
        boolean z = zzatmVar.zzc != C.TIME_UNSET;
        if (!this.zzk || z) {
            this.zzj = zzatoVar;
            this.zzk = z;
            this.zzi.zzg(zzatoVar, null);
        }
    }
}

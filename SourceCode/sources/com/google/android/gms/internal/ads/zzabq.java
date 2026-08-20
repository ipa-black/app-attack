package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.util.MimeTypes;
import java.util.Collections;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzabq extends zzabv {
    private static final int[] zzb = {5512, 11025, 22050, 44100};
    private boolean zzc;
    private boolean zzd;
    private int zze;

    public zzabq(zzaaq zzaaqVar) {
        super(zzaaqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzabv
    protected final boolean zza(zzef zzefVar) throws zzabu {
        if (this.zzc) {
            zzefVar.zzG(1);
        } else {
            int zzk = zzefVar.zzk();
            int i = zzk >> 4;
            this.zze = i;
            if (i == 2) {
                int i2 = zzb[(zzk >> 2) & 3];
                zzad zzadVar = new zzad();
                zzadVar.zzS(MimeTypes.AUDIO_MPEG);
                zzadVar.zzw(1);
                zzadVar.zzT(i2);
                this.zza.zzk(zzadVar.zzY());
                this.zzd = true;
            } else if (i == 7 || i == 8) {
                String str = i == 7 ? MimeTypes.AUDIO_ALAW : MimeTypes.AUDIO_MLAW;
                zzad zzadVar2 = new zzad();
                zzadVar2.zzS(str);
                zzadVar2.zzw(1);
                zzadVar2.zzT(8000);
                this.zza.zzk(zzadVar2.zzY());
                this.zzd = true;
            } else if (i != 10) {
                throw new zzabu("Audio format not supported: " + i);
            }
            this.zzc = true;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzabv
    protected final boolean zzb(zzef zzefVar, long j) throws zzbu {
        if (this.zze == 2) {
            int zza = zzefVar.zza();
            this.zza.zzq(zzefVar, zza);
            this.zza.zzs(j, 1, zza, 0, null);
            return true;
        }
        int zzk = zzefVar.zzk();
        if (zzk != 0 || this.zzd) {
            if (this.zze != 10 || zzk == 1) {
                int zza2 = zzefVar.zza();
                this.zza.zzq(zzefVar, zza2);
                this.zza.zzs(j, 1, zza2, 0, null);
                return true;
            }
            return false;
        }
        int zza3 = zzefVar.zza();
        byte[] bArr = new byte[zza3];
        zzefVar.zzB(bArr, 0, zza3);
        zzyg zza4 = zzyh.zza(bArr);
        zzad zzadVar = new zzad();
        zzadVar.zzS(MimeTypes.AUDIO_AAC);
        zzadVar.zzx(zza4.zzc);
        zzadVar.zzw(zza4.zzb);
        zzadVar.zzT(zza4.zza);
        zzadVar.zzI(Collections.singletonList(bArr));
        this.zza.zzk(zzadVar.zzY());
        this.zzd = true;
        return false;
    }
}

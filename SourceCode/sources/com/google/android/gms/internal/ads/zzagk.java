package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.audio.OpusUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzagk extends zzago {
    private static final byte[] zza = {79, 112, 117, 115, 72, 101, 97, 100};
    private static final byte[] zzb = {79, 112, 117, 115, 84, 97, 103, 115};
    private boolean zzc;

    public static boolean zzd(zzef zzefVar) {
        return zzk(zzefVar, zza);
    }

    private static boolean zzk(zzef zzefVar, byte[] bArr) {
        if (zzefVar.zza() < 8) {
            return false;
        }
        int zzc = zzefVar.zzc();
        byte[] bArr2 = new byte[8];
        zzefVar.zzB(bArr2, 0, 8);
        zzefVar.zzF(zzc);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzago
    protected final long zza(zzef zzefVar) {
        int i;
        int i2;
        byte[] zzH = zzefVar.zzH();
        byte b2 = zzH[0];
        int i3 = b2 & 255;
        int i4 = b2 & 3;
        if (i4 != 0) {
            i = 2;
            if (i4 != 1 && i4 != 2) {
                i = zzH[1] & 63;
            }
        } else {
            i = 1;
        }
        int i5 = i3 >> 3;
        return zzg(i * (i5 >= 16 ? 2500 << i2 : i5 >= 12 ? 10000 << (i5 & 1) : (i5 & 3) == 3 ? 60000 : 10000 << i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzago
    public final void zzb(boolean z) {
        super.zzb(z);
        if (z) {
            this.zzc = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzago
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    protected final boolean zzc(zzef zzefVar, long j, zzagl zzaglVar) throws zzbu {
        if (zzk(zzefVar, zza)) {
            byte[] copyOf = Arrays.copyOf(zzefVar.zzH(), zzefVar.zzd());
            int i = copyOf[9] & 255;
            List zza2 = zzaah.zza(copyOf);
            if (zzaglVar.zza != null) {
                return true;
            }
            zzad zzadVar = new zzad();
            zzadVar.zzS(MimeTypes.AUDIO_OPUS);
            zzadVar.zzw(i);
            zzadVar.zzT(OpusUtil.SAMPLE_RATE);
            zzadVar.zzI(zza2);
            zzaglVar.zza = zzadVar.zzY();
            return true;
        } else if (zzk(zzefVar, zzb)) {
            zzdd.zzb(zzaglVar.zza);
            if (this.zzc) {
                return true;
            }
            this.zzc = true;
            zzefVar.zzG(8);
            zzbq zzb2 = zzaaw.zzb(zzgau.zzn(zzaaw.zzc(zzefVar, false, false).zzb));
            if (zzb2 == null) {
                return true;
            }
            zzad zzb3 = zzaglVar.zza.zzb();
            zzb3.zzM(zzb2.zzd(zzaglVar.zza.zzk));
            zzaglVar.zza = zzb3.zzY();
            return true;
        } else {
            zzdd.zzb(zzaglVar.zza);
            return false;
        }
    }
}

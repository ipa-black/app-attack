package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.google.android.exoplayer2.audio.WavUtil;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzaja {
    public static Pair zza(zzzk zzzkVar) throws IOException {
        zzzkVar.zzj();
        zzaiz zzd = zzd(1684108385, zzzkVar, new zzef(8));
        ((zzyz) zzzkVar).zzo(8, false);
        return Pair.create(Long.valueOf(zzzkVar.zzf()), Long.valueOf(zzd.zzb));
    }

    public static zzaiy zzb(zzzk zzzkVar) throws IOException {
        byte[] bArr;
        zzef zzefVar = new zzef(16);
        zzaiz zzd = zzd(WavUtil.FMT_FOURCC, zzzkVar, zzefVar);
        zzdd.zzf(zzd.zzb >= 16);
        zzyz zzyzVar = (zzyz) zzzkVar;
        zzyzVar.zzm(zzefVar.zzH(), 0, 16, false);
        zzefVar.zzF(0);
        int zzi = zzefVar.zzi();
        int zzi2 = zzefVar.zzi();
        int zzh = zzefVar.zzh();
        int zzh2 = zzefVar.zzh();
        int zzi3 = zzefVar.zzi();
        int zzi4 = zzefVar.zzi();
        int i = ((int) zzd.zzb) - 16;
        if (i > 0) {
            byte[] bArr2 = new byte[i];
            zzyzVar.zzm(bArr2, 0, i, false);
            bArr = bArr2;
        } else {
            bArr = zzen.zzf;
        }
        zzyzVar.zzo((int) (zzzkVar.zze() - zzzkVar.zzf()), false);
        return new zzaiy(zzi, zzi2, zzh, zzh2, zzi3, zzi4, bArr);
    }

    public static boolean zzc(zzzk zzzkVar) throws IOException {
        zzef zzefVar = new zzef(8);
        int i = zzaiz.zza(zzzkVar, zzefVar).zza;
        if (i == 1380533830 || i == 1380333108) {
            ((zzyz) zzzkVar).zzm(zzefVar.zzH(), 0, 4, false);
            zzefVar.zzF(0);
            int zze = zzefVar.zze();
            if (zze != 1463899717) {
                zzdw.zzb("WavHeaderReader", "Unsupported form type: " + zze);
                return false;
            }
            return true;
        }
        return false;
    }

    private static zzaiz zzd(int i, zzzk zzzkVar, zzef zzefVar) throws IOException {
        zzaiz zza = zzaiz.zza(zzzkVar, zzefVar);
        while (true) {
            int i2 = zza.zza;
            if (i2 == i) {
                return zza;
            }
            zzdw.zze("WavHeaderReader", "Ignoring unknown WAV chunk: " + i2);
            long j = zza.zzb + 8;
            if (j > 2147483647L) {
                int i3 = zza.zza;
                throw zzbu.zzc("Chunk is too large (~2GB+) to skip; id: " + i3);
            }
            ((zzyz) zzzkVar).zzo((int) j, false);
            zza = zzaiz.zza(zzzkVar, zzefVar);
        }
    }
}

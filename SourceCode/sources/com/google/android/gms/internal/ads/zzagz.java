package com.google.android.gms.internal.ads;

import androidx.core.view.MotionEventCompat;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzagz implements zzahd {
    private static final byte[] zza = {73, 68, 51};
    private final boolean zzb;
    private final zzee zzc = new zzee(new byte[7], 7);
    private final zzef zzd = new zzef(Arrays.copyOf(zza, 10));
    private final String zze;
    private String zzf;
    private zzaaq zzg;
    private zzaaq zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private boolean zzl;
    private boolean zzm;
    private int zzn;
    private int zzo;
    private int zzp;
    private boolean zzq;
    private long zzr;
    private int zzs;
    private long zzt;
    private zzaaq zzu;
    private long zzv;

    public zzagz(boolean z, String str) {
        zzh();
        this.zzn = -1;
        this.zzo = -1;
        this.zzr = C.TIME_UNSET;
        this.zzt = C.TIME_UNSET;
        this.zzb = z;
        this.zze = str;
    }

    public static boolean zzf(int i) {
        return (i & 65526) == 65520;
    }

    private final void zzg() {
        this.zzm = false;
        zzh();
    }

    private final void zzh() {
        this.zzi = 0;
        this.zzj = 0;
        this.zzk = 256;
    }

    private final void zzi() {
        this.zzi = 3;
        this.zzj = 0;
    }

    private final void zzj(zzaaq zzaaqVar, long j, int i, int i2) {
        this.zzi = 4;
        this.zzj = i;
        this.zzu = zzaaqVar;
        this.zzv = j;
        this.zzs = i2;
    }

    private final boolean zzk(zzef zzefVar, byte[] bArr, int i) {
        int min = Math.min(zzefVar.zza(), i - this.zzj);
        zzefVar.zzB(bArr, this.zzj, min);
        int i2 = this.zzj + min;
        this.zzj = i2;
        return i2 == i;
    }

    private static final boolean zzl(byte b2, byte b3) {
        return zzf((b3 & 255) | MotionEventCompat.ACTION_POINTER_INDEX_MASK);
    }

    private static final boolean zzm(zzef zzefVar, byte[] bArr, int i) {
        if (zzefVar.zza() < i) {
            return false;
        }
        zzefVar.zzB(bArr, 0, i);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x02bb A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzahd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzef r18) throws com.google.android.gms.internal.ads.zzbu {
        /*
            Method dump skipped, instructions count: 721
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzagz.zza(com.google.android.gms.internal.ads.zzef):void");
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzb(zzzm zzzmVar, zzaip zzaipVar) {
        zzaipVar.zzc();
        this.zzf = zzaipVar.zzb();
        zzaaq zzv = zzzmVar.zzv(zzaipVar.zza(), 1);
        this.zzg = zzv;
        this.zzu = zzv;
        if (!this.zzb) {
            this.zzh = new zzzi();
            return;
        }
        zzaipVar.zzc();
        zzaaq zzv2 = zzzmVar.zzv(zzaipVar.zza(), 5);
        this.zzh = zzv2;
        zzad zzadVar = new zzad();
        zzadVar.zzH(zzaipVar.zzb());
        zzadVar.zzS(MimeTypes.APPLICATION_ID3);
        zzv2.zzk(zzadVar.zzY());
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzd(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.zzt = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zze() {
        this.zzt = C.TIME_UNSET;
        zzg();
    }
}

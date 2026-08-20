package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.exoplayer2.C;
import java.io.EOFException;
import java.io.IOException;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaer implements zzzj {
    public static final zzzq zza = new zzzq() { // from class: com.google.android.gms.internal.ads.zzaep
        @Override // com.google.android.gms.internal.ads.zzzq
        public final zzzj[] zza() {
            zzzq zzzqVar = zzaer.zza;
            return new zzzj[]{new zzaer(0)};
        }

        @Override // com.google.android.gms.internal.ads.zzzq
        public final /* synthetic */ zzzj[] zzb(Uri uri, Map map) {
            return zzzp.zza(this, uri, map);
        }
    };
    private static final zzadb zzb = new zzadb() { // from class: com.google.android.gms.internal.ads.zzaeq
    };
    private final zzef zzc;
    private final zzaac zzd;
    private final zzzy zze;
    private final zzaaa zzf;
    private final zzaaq zzg;
    private zzzm zzh;
    private zzaaq zzi;
    private zzaaq zzj;
    private int zzk;
    private zzbq zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private int zzp;
    private zzaet zzq;
    private boolean zzr;

    public zzaer() {
        this(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0151  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"extractorOutput", "realTrackOutput"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzf(com.google.android.gms.internal.ads.zzzk r17) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 607
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaer.zzf(com.google.android.gms.internal.ads.zzzk):int");
    }

    private final long zzg(long j) {
        return this.zzm + ((j * 1000000) / this.zzd.zzd);
    }

    private final zzaet zzh(zzzk zzzkVar, boolean z) throws IOException {
        ((zzyz) zzzkVar).zzm(this.zzc.zzH(), 0, 4, false);
        this.zzc.zzF(0);
        this.zzd.zza(this.zzc.zze());
        return new zzaem(zzzkVar.zzd(), zzzkVar.zzf(), this.zzd, false);
    }

    private static boolean zzi(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    private final boolean zzj(zzzk zzzkVar) throws IOException {
        zzaet zzaetVar = this.zzq;
        if (zzaetVar != null) {
            long zzb2 = zzaetVar.zzb();
            if (zzb2 != -1 && zzzkVar.zze() > zzb2 - 4) {
                return true;
            }
        }
        try {
            return !zzzkVar.zzm(this.zzc.zzH(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    private final boolean zzk(zzzk zzzkVar, boolean z) throws IOException {
        int i;
        int i2;
        int zzb2;
        int i3 = true != z ? 131072 : 32768;
        zzzkVar.zzj();
        if (zzzkVar.zzf() == 0) {
            zzbq zza2 = this.zzf.zza(zzzkVar, null);
            this.zzl = zza2;
            if (zza2 != null) {
                this.zze.zzb(zza2);
            }
            i = (int) zzzkVar.zze();
            if (!z) {
                ((zzyz) zzzkVar).zzo(i, false);
            }
            i2 = 0;
        } else {
            i = 0;
            i2 = 0;
        }
        int i4 = i2;
        int i5 = i4;
        while (true) {
            if (!zzj(zzzkVar)) {
                this.zzc.zzF(0);
                int zze = this.zzc.zze();
                if ((i2 == 0 || zzi(zze, i2)) && (zzb2 = zzaad.zzb(zze)) != -1) {
                    i4++;
                    if (i4 != 1) {
                        if (i4 == 4) {
                            break;
                        }
                    } else {
                        this.zzd.zza(zze);
                        i2 = zze;
                    }
                    ((zzyz) zzzkVar).zzl(zzb2 - 4, false);
                } else {
                    int i6 = i5 + 1;
                    if (i5 == i3) {
                        if (z) {
                            return false;
                        }
                        throw zzbu.zza("Searched too many bytes.", null);
                    }
                    if (!z) {
                        ((zzyz) zzzkVar).zzo(1, false);
                    } else {
                        zzzkVar.zzj();
                        ((zzyz) zzzkVar).zzl(i + i6, false);
                    }
                    i4 = 0;
                    i5 = i6;
                    i2 = 0;
                }
            } else if (i4 <= 0) {
                throw new EOFException();
            }
        }
        if (z) {
            ((zzyz) zzzkVar).zzo(i + i5, false);
        } else {
            zzzkVar.zzj();
        }
        this.zzk = i2;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final int zza(zzzk zzzkVar, zzaaj zzaajVar) throws IOException {
        zzdd.zzb(this.zzi);
        int i = zzen.zza;
        int zzf = zzf(zzzkVar);
        if (zzf == -1 && (this.zzq instanceof zzaen)) {
            if (this.zzq.zze() != zzg(this.zzn)) {
                zzaen zzaenVar = (zzaen) this.zzq;
                throw null;
            }
        }
        return zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzb(zzzm zzzmVar) {
        this.zzh = zzzmVar;
        zzaaq zzv = zzzmVar.zzv(0, 1);
        this.zzi = zzv;
        this.zzj = zzv;
        this.zzh.zzC();
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzc(long j, long j2) {
        this.zzk = 0;
        this.zzm = C.TIME_UNSET;
        this.zzn = 0L;
        this.zzp = 0;
        zzaet zzaetVar = this.zzq;
        if (zzaetVar instanceof zzaen) {
            zzaen zzaenVar = (zzaen) zzaetVar;
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final boolean zzd(zzzk zzzkVar) throws IOException {
        return zzk(zzzkVar, true);
    }

    public final void zze() {
        this.zzr = true;
    }

    public zzaer(int i) {
        this.zzc = new zzef(10);
        this.zzd = new zzaac();
        this.zze = new zzzy();
        this.zzm = C.TIME_UNSET;
        this.zzf = new zzaaa();
        zzzi zzziVar = new zzzi();
        this.zzg = zzziVar;
        this.zzj = zzziVar;
    }
}

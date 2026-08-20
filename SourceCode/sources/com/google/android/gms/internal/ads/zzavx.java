package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzavx {
    public boolean zzL;
    public zzavp zzN;
    public int zzO;
    public String zza;
    public int zzb;
    public int zzc;
    public int zzd;
    public boolean zze;
    public byte[] zzf;
    public zzavo zzg;
    public byte[] zzh;
    public zzavc zzi;
    public int zzj = -1;
    public int zzk = -1;
    public int zzl = -1;
    public int zzm = -1;
    public int zzn = 0;
    public byte[] zzo = null;
    public int zzp = -1;
    public boolean zzq = false;
    public int zzr = -1;
    public int zzs = -1;
    public int zzt = -1;
    public int zzu = 1000;
    public int zzv = 200;
    public float zzw = -1.0f;
    public float zzx = -1.0f;
    public float zzy = -1.0f;
    public float zzz = -1.0f;
    public float zzA = -1.0f;
    public float zzB = -1.0f;
    public float zzC = -1.0f;
    public float zzD = -1.0f;
    public float zzE = -1.0f;
    public float zzF = -1.0f;
    public int zzG = 1;
    public int zzH = -1;
    public int zzI = 8000;
    public long zzJ = 0;
    public long zzK = 0;
    public boolean zzM = true;
    private String zzP = "eng";

    private zzavx() {
    }

    public /* synthetic */ zzavx(zzavw zzavwVar) {
    }

    private static List zzc(zzbar zzbarVar) throws zzatg {
        try {
            zzbarVar.zzw(16);
            if (zzbarVar.zzk() != 826496599) {
                return null;
            }
            int zzc = zzbarVar.zzc() + 20;
            byte[] bArr = zzbarVar.zza;
            while (true) {
                int length = bArr.length;
                if (zzc < length - 4) {
                    if (bArr[zzc] == 0 && bArr[zzc + 1] == 0 && bArr[zzc + 2] == 1 && bArr[zzc + 3] == 15) {
                        return Collections.singletonList(Arrays.copyOfRange(bArr, zzc, length));
                    }
                    zzc++;
                } else {
                    throw new zzatg("Failed to find FourCC VC1 initialization data");
                }
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new zzatg("Error parsing FourCC VC1 codec private");
        }
    }

    private static List zzd(byte[] bArr) throws zzatg {
        int i;
        int i2;
        try {
            if (bArr[0] == 2) {
                int i3 = 0;
                int i4 = 1;
                while (true) {
                    i = bArr[i4];
                    if (i != -1) {
                        break;
                    }
                    i3 += 255;
                    i4++;
                }
                int i5 = i4 + 1;
                int i6 = i3 + i;
                int i7 = 0;
                while (true) {
                    i2 = bArr[i5];
                    if (i2 != -1) {
                        break;
                    }
                    i7 += 255;
                    i5++;
                }
                int i8 = i5 + 1;
                int i9 = i7 + i2;
                if (bArr[i8] != 1) {
                    throw new zzatg("Error parsing vorbis codec private");
                }
                byte[] bArr2 = new byte[i6];
                System.arraycopy(bArr, i8, bArr2, 0, i6);
                int i10 = i8 + i6;
                if (bArr[i10] != 3) {
                    throw new zzatg("Error parsing vorbis codec private");
                }
                int i11 = i10 + i9;
                if (bArr[i11] != 5) {
                    throw new zzatg("Error parsing vorbis codec private");
                }
                int length = bArr.length - i11;
                byte[] bArr3 = new byte[length];
                System.arraycopy(bArr, i11, bArr3, 0, length);
                ArrayList arrayList = new ArrayList(2);
                arrayList.add(bArr2);
                arrayList.add(bArr3);
                return arrayList;
            }
            throw new zzatg("Error parsing vorbis codec private");
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new zzatg("Error parsing vorbis codec private");
        }
    }

    private static boolean zze(zzbar zzbarVar) throws zzatg {
        UUID uuid;
        UUID uuid2;
        try {
            int zzf = zzbarVar.zzf();
            if (zzf == 1) {
                return true;
            }
            if (zzf == 65534) {
                zzbarVar.zzv(24);
                long zzl = zzbarVar.zzl();
                uuid = zzavy.zzd;
                if (zzl == uuid.getMostSignificantBits()) {
                    long zzl2 = zzbarVar.zzl();
                    uuid2 = zzavy.zzd;
                    if (zzl2 == uuid2.getLeastSignificantBits()) {
                        return true;
                    }
                }
            }
            return false;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new zzatg("Error parsing MS/ACM codec private");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:355:0x02de  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0315  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzb(com.google.android.gms.internal.ads.zzavh r44, int r45) throws com.google.android.gms.internal.ads.zzatg {
        /*
            Method dump skipped, instructions count: 1366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzavx.zzb(com.google.android.gms.internal.ads.zzavh, int):void");
    }
}

package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.mp4.Atom;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzafg {
    private static final byte[] zza = zzen.zzaa("OpusHead");

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ae, code lost:
        if (r3 != 13) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair zza(com.google.android.gms.internal.ads.zzaex r11) {
        /*
            com.google.android.gms.internal.ads.zzef r11 = r11.zza
            r0 = 8
            r11.zzF(r0)
            r1 = 0
            r2 = r1
            r3 = r2
        La:
            int r4 = r11.zza()
            if (r4 < r0) goto Ldf
            int r4 = r11.zzc()
            int r5 = r11.zze()
            int r6 = r11.zze()
            r7 = 1835365473(0x6d657461, float:4.4382975E27)
            if (r6 != r7) goto L75
            r11.zzF(r4)
            int r2 = r4 + r5
            r11.zzG(r0)
            zzd(r11)
        L2c:
            int r6 = r11.zzc()
            if (r6 >= r2) goto L73
            int r6 = r11.zzc()
            int r7 = r11.zze()
            int r8 = r11.zze()
            r9 = 1768715124(0x696c7374, float:1.7865732E25)
            if (r8 != r9) goto L6e
            r11.zzF(r6)
            int r6 = r6 + r7
            r11.zzG(r0)
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
        L4f:
            int r7 = r11.zzc()
            if (r7 >= r6) goto L5f
            com.google.android.gms.internal.ads.zzbp r7 = com.google.android.gms.internal.ads.zzafn.zza(r11)
            if (r7 == 0) goto L4f
            r2.add(r7)
            goto L4f
        L5f:
            boolean r6 = r2.isEmpty()
            if (r6 == 0) goto L66
            goto L73
        L66:
            com.google.android.gms.internal.ads.zzbq r6 = new com.google.android.gms.internal.ads.zzbq
            r6.<init>(r2)
            r2 = r6
            goto Ld9
        L6e:
            int r6 = r6 + r7
            r11.zzF(r6)
            goto L2c
        L73:
            r2 = r1
            goto Ld9
        L75:
            r7 = 1936553057(0x736d7461, float:1.8813092E31)
            if (r6 != r7) goto Ld9
            r11.zzF(r4)
            int r3 = r4 + r5
            r6 = 12
            r11.zzG(r6)
        L84:
            int r7 = r11.zzc()
            if (r7 >= r3) goto Ld8
            int r7 = r11.zzc()
            int r8 = r11.zze()
            int r9 = r11.zze()
            r10 = 1935766900(0x73617574, float:1.7862687E31)
            if (r9 != r10) goto Ld3
            r3 = 14
            if (r8 >= r3) goto La0
            goto Ld8
        La0:
            r3 = 5
            r11.zzG(r3)
            int r3 = r11.zzk()
            r7 = 1123024896(0x42f00000, float:120.0)
            if (r3 == r6) goto Lb1
            r6 = 13
            if (r3 == r6) goto Lb5
            goto Ld8
        Lb1:
            if (r3 != r6) goto Lb5
            r7 = 1131413504(0x43700000, float:240.0)
        Lb5:
            r3 = 1
            r11.zzG(r3)
            int r6 = r11.zzk()
            com.google.android.gms.internal.ads.zzbq r8 = new com.google.android.gms.internal.ads.zzbq
            com.google.android.gms.internal.ads.zzbp[] r3 = new com.google.android.gms.internal.ads.zzbp[r3]
            com.google.android.gms.internal.ads.zzadx r9 = new com.google.android.gms.internal.ads.zzadx
            r9.<init>(r7, r6)
            r6 = 0
            r3[r6] = r9
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r8.<init>(r6, r3)
            r3 = r8
            goto Ld9
        Ld3:
            int r7 = r7 + r8
            r11.zzF(r7)
            goto L84
        Ld8:
            r3 = r1
        Ld9:
            int r4 = r4 + r5
            r11.zzF(r4)
            goto La
        Ldf:
            android.util.Pair r11 = android.util.Pair.create(r2, r3)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafg.zza(com.google.android.gms.internal.ads.zzaex):android.util.Pair");
    }

    public static zzbq zzb(zzaew zzaewVar) {
        zzadr zzadrVar;
        zzaex zzb = zzaewVar.zzb(Atom.TYPE_hdlr);
        zzaex zzb2 = zzaewVar.zzb(Atom.TYPE_keys);
        zzaex zzb3 = zzaewVar.zzb(Atom.TYPE_ilst);
        if (zzb == null || zzb2 == null || zzb3 == null || zzg(zzb.zza) != 1835299937) {
            return null;
        }
        zzef zzefVar = zzb2.zza;
        zzefVar.zzF(12);
        int zze = zzefVar.zze();
        String[] strArr = new String[zze];
        for (int i = 0; i < zze; i++) {
            int zze2 = zzefVar.zze();
            zzefVar.zzG(4);
            strArr[i] = zzefVar.zzx(zze2 - 8, zzfxr.zzc);
        }
        zzef zzefVar2 = zzb3.zza;
        zzefVar2.zzF(8);
        ArrayList arrayList = new ArrayList();
        while (zzefVar2.zza() > 8) {
            int zzc = zzefVar2.zzc();
            int zze3 = zzefVar2.zze();
            int zze4 = zzefVar2.zze() - 1;
            if (zze4 < 0 || zze4 >= zze) {
                zzdw.zze("AtomParsers", "Skipped metadata with unknown key index: " + zze4);
            } else {
                String str = strArr[zze4];
                int i2 = zzc + zze3;
                int i3 = zzafn.zzb;
                while (true) {
                    int zzc2 = zzefVar2.zzc();
                    if (zzc2 >= i2) {
                        zzadrVar = null;
                        break;
                    }
                    int zze5 = zzefVar2.zze();
                    if (zzefVar2.zze() != 1684108385) {
                        zzefVar2.zzF(zzc2 + zze5);
                    } else {
                        int zze6 = zzefVar2.zze();
                        int zze7 = zzefVar2.zze();
                        int i4 = zze5 - 16;
                        byte[] bArr = new byte[i4];
                        zzefVar2.zzB(bArr, 0, i4);
                        zzadrVar = new zzadr(str, bArr, zze7, zze6);
                        break;
                    }
                }
                if (zzadrVar != null) {
                    arrayList.add(zzadrVar);
                }
            }
            zzefVar2.zzF(zzc + zze3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zzbq(arrayList);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b6, code lost:
        if (r7 == 0) goto L636;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x0660, code lost:
        if (r1 != 3) goto L544;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x0756, code lost:
        if (r25 == null) goto L583;
     */
    /* JADX WARN: Removed duplicated region for block: B:345:0x06b7  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x06b9  */
    /* JADX WARN: Removed duplicated region for block: B:376:0x07cd  */
    /* JADX WARN: Removed duplicated region for block: B:382:0x07e5  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x07e9  */
    /* JADX WARN: Removed duplicated region for block: B:386:0x081e  */
    /* JADX WARN: Removed duplicated region for block: B:506:0x0b0f  */
    /* JADX WARN: Removed duplicated region for block: B:507:0x0b12  */
    /* JADX WARN: Removed duplicated region for block: B:512:0x0b6a  */
    /* JADX WARN: Removed duplicated region for block: B:514:0x0b88  */
    /* JADX WARN: Removed duplicated region for block: B:603:0x0e03  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x019a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List zzc(com.google.android.gms.internal.ads.zzaew r58, com.google.android.gms.internal.ads.zzzy r59, long r60, com.google.android.gms.internal.ads.zzx r62, boolean r63, boolean r64, com.google.android.gms.internal.ads.zzfxt r65) throws com.google.android.gms.internal.ads.zzbu {
        /*
            Method dump skipped, instructions count: 3602
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafg.zzc(com.google.android.gms.internal.ads.zzaew, com.google.android.gms.internal.ads.zzzy, long, com.google.android.gms.internal.ads.zzx, boolean, boolean, com.google.android.gms.internal.ads.zzfxt):java.util.List");
    }

    public static void zzd(zzef zzefVar) {
        int zzc = zzefVar.zzc();
        zzefVar.zzG(4);
        if (zzefVar.zze() != 1751411826) {
            zzc += 4;
        }
        zzefVar.zzF(zzc);
    }

    private static int zze(int i) {
        if (i == 1936684398) {
            return 1;
        }
        if (i == 1986618469) {
            return 2;
        }
        if (i == 1952807028 || i == 1935832172 || i == 1937072756 || i == 1668047728) {
            return 3;
        }
        return i == 1835365473 ? 5 : -1;
    }

    private static int zzf(zzef zzefVar) {
        int zzk = zzefVar.zzk();
        int i = zzk & 127;
        while ((zzk & 128) == 128) {
            zzk = zzefVar.zzk();
            i = (i << 7) | (zzk & 127);
        }
        return i;
    }

    private static int zzg(zzef zzefVar) {
        zzefVar.zzF(16);
        return zzefVar.zze();
    }

    private static Pair zzh(zzaew zzaewVar) {
        zzaex zzb = zzaewVar.zzb(Atom.TYPE_elst);
        if (zzb == null) {
            return null;
        }
        zzef zzefVar = zzb.zza;
        zzefVar.zzF(8);
        int zze = zzaey.zze(zzefVar.zze());
        int zzn = zzefVar.zzn();
        long[] jArr = new long[zzn];
        long[] jArr2 = new long[zzn];
        for (int i = 0; i < zzn; i++) {
            jArr[i] = zze == 1 ? zzefVar.zzt() : zzefVar.zzs();
            jArr2[i] = zze == 1 ? zzefVar.zzr() : zzefVar.zze();
            if (zzefVar.zzy() == 1) {
                zzefVar.zzG(2);
            } else {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
        }
        return Pair.create(jArr, jArr2);
    }

    private static Pair zzi(zzef zzefVar) {
        zzefVar.zzF(8);
        int zze = zzaey.zze(zzefVar.zze());
        zzefVar.zzG(zze == 0 ? 8 : 16);
        long zzs = zzefVar.zzs();
        zzefVar.zzG(zze == 0 ? 4 : 8);
        int zzo = zzefVar.zzo();
        StringBuilder sb = new StringBuilder();
        sb.append((char) (((zzo >> 10) & 31) + 96));
        sb.append((char) (((zzo >> 5) & 31) + 96));
        sb.append((char) ((zzo & 31) + 96));
        return Pair.create(Long.valueOf(zzs), sb.toString());
    }

    private static Pair zzj(zzef zzefVar, int i, int i2) throws zzbu {
        Integer num;
        zzafx zzafxVar;
        Pair create;
        int i3;
        int i4;
        byte[] bArr;
        int zzc = zzefVar.zzc();
        while (zzc - i < i2) {
            zzefVar.zzF(zzc);
            int zze = zzefVar.zze();
            zzzn.zzb(zze > 0, "childAtomSize must be positive");
            if (zzefVar.zze() == 1936289382) {
                int i5 = zzc + 8;
                int i6 = 0;
                int i7 = -1;
                String str = null;
                Integer num2 = null;
                while (i5 - zzc < zze) {
                    zzefVar.zzF(i5);
                    int zze2 = zzefVar.zze();
                    int zze3 = zzefVar.zze();
                    if (zze3 == 1718775137) {
                        num2 = Integer.valueOf(zzefVar.zze());
                    } else if (zze3 == 1935894637) {
                        zzefVar.zzG(4);
                        str = zzefVar.zzx(4, zzfxr.zzc);
                    } else if (zze3 == 1935894633) {
                        i7 = i5;
                        i6 = zze2;
                    }
                    i5 += zze2;
                }
                if (C.CENC_TYPE_cenc.equals(str) || C.CENC_TYPE_cbc1.equals(str) || C.CENC_TYPE_cens.equals(str) || C.CENC_TYPE_cbcs.equals(str)) {
                    zzzn.zzb(num2 != null, "frma atom is mandatory");
                    zzzn.zzb(i7 != -1, "schi atom is mandatory");
                    int i8 = i7 + 8;
                    while (true) {
                        if (i8 - i7 >= i6) {
                            num = num2;
                            zzafxVar = null;
                            break;
                        }
                        zzefVar.zzF(i8);
                        int zze4 = zzefVar.zze();
                        if (zzefVar.zze() == 1952804451) {
                            int zze5 = zzefVar.zze();
                            zzefVar.zzG(1);
                            if (zzaey.zze(zze5) == 0) {
                                zzefVar.zzG(1);
                                i3 = 0;
                                i4 = 0;
                            } else {
                                int zzk = zzefVar.zzk();
                                i3 = zzk & 15;
                                i4 = (zzk & PsExtractor.VIDEO_STREAM_MASK) >> 4;
                            }
                            boolean z = zzefVar.zzk() == 1;
                            int zzk2 = zzefVar.zzk();
                            byte[] bArr2 = new byte[16];
                            zzefVar.zzB(bArr2, 0, 16);
                            if (z && zzk2 == 0) {
                                int zzk3 = zzefVar.zzk();
                                byte[] bArr3 = new byte[zzk3];
                                zzefVar.zzB(bArr3, 0, zzk3);
                                bArr = bArr3;
                            } else {
                                bArr = null;
                            }
                            num = num2;
                            zzafxVar = new zzafx(z, str, zzk2, bArr2, i4, i3, bArr);
                        } else {
                            i8 += zze4;
                        }
                    }
                    zzzn.zzb(zzafxVar != null, "tenc atom is mandatory");
                    int i9 = zzen.zza;
                    create = Pair.create(num, zzafxVar);
                } else {
                    create = null;
                }
                if (create != null) {
                    return create;
                }
            }
            zzc += zze;
        }
        return null;
    }

    private static zzafa zzk(zzef zzefVar, int i) {
        zzefVar.zzF(i + 12);
        zzefVar.zzG(1);
        zzf(zzefVar);
        zzefVar.zzG(2);
        int zzk = zzefVar.zzk();
        if ((zzk & 128) != 0) {
            zzefVar.zzG(2);
        }
        if ((zzk & 64) != 0) {
            zzefVar.zzG(zzefVar.zzk());
        }
        if ((zzk & 32) != 0) {
            zzefVar.zzG(2);
        }
        zzefVar.zzG(1);
        zzf(zzefVar);
        String zzd = zzbt.zzd(zzefVar.zzk());
        if (MimeTypes.AUDIO_MPEG.equals(zzd) || MimeTypes.AUDIO_DTS.equals(zzd) || MimeTypes.AUDIO_DTS_HD.equals(zzd)) {
            return new zzafa(zzd, null, -1L, -1L);
        }
        zzefVar.zzG(4);
        long zzs = zzefVar.zzs();
        long zzs2 = zzefVar.zzs();
        zzefVar.zzG(1);
        int zzf = zzf(zzefVar);
        byte[] bArr = new byte[zzf];
        zzefVar.zzB(bArr, 0, zzf);
        return new zzafa(zzd, bArr, zzs2 <= 0 ? -1L : zzs2, zzs > 0 ? zzs : -1L);
    }

    private static ByteBuffer zzl() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x039b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:191:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zzm(com.google.android.gms.internal.ads.zzef r24, int r25, int r26, int r27, int r28, java.lang.String r29, boolean r30, com.google.android.gms.internal.ads.zzx r31, com.google.android.gms.internal.ads.zzafc r32, int r33) throws com.google.android.gms.internal.ads.zzbu {
        /*
            Method dump skipped, instructions count: 994
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafg.zzm(com.google.android.gms.internal.ads.zzef, int, int, int, int, java.lang.String, boolean, com.google.android.gms.internal.ads.zzx, com.google.android.gms.internal.ads.zzafc, int):void");
    }

    private static void zzn(zzef zzefVar, int i, int i2, int i3, zzafc zzafcVar) {
        zzefVar.zzF(i2 + 16);
        zzefVar.zzv((char) 0);
        String zzv = zzefVar.zzv((char) 0);
        if (zzv != null) {
            zzad zzadVar = new zzad();
            zzadVar.zzG(i3);
            zzadVar.zzS(zzv);
            zzafcVar.zzb = zzadVar.zzY();
        }
    }

    private static boolean zzo(long[] jArr, long j, long j2, long j3) {
        int length = jArr.length;
        int i = length - 1;
        return jArr[0] <= j2 && j2 < jArr[zzen.zzf(4, 0, i)] && jArr[zzen.zzf(length + (-4), 0, i)] < j3 && j3 <= j;
    }
}

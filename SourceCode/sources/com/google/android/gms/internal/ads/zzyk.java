package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.explorestack.protobuf.openrtb.LossReason;
import com.google.android.exoplayer2.audio.AacUtil;
import com.google.android.exoplayer2.audio.OpusUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzyk {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {1, 2, 3, 6};
    private static final int[] zzc = {OpusUtil.SAMPLE_RATE, 44100, 32000};
    private static final int[] zzd = {24000, 22050, AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND};
    private static final int[] zze = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] zzf = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, 512, 576, 640};
    private static final int[] zzg = {69, 87, 104, 121, 139, 174, LossReason.LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE, 243, 278, 348, TTAdConstant.DOWNLOAD_URL_AND_PACKAGE_NAME, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static int zza(ByteBuffer byteBuffer) {
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            return zzb[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
        }
        return 1536;
    }

    public static int zzb(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            int i = ((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1;
            return i + i;
        }
        byte b2 = bArr[4];
        return zzf((b2 & 192) >> 6, b2 & 63);
    }

    public static zzaf zzc(zzef zzefVar, String str, String str2, zzx zzxVar) {
        int i = zzc[(zzefVar.zzk() & 192) >> 6];
        int zzk = zzefVar.zzk();
        int i2 = zze[(zzk & 56) >> 3];
        if ((zzk & 4) != 0) {
            i2++;
        }
        zzad zzadVar = new zzad();
        zzadVar.zzH(str);
        zzadVar.zzS(MimeTypes.AUDIO_AC3);
        zzadVar.zzw(i2);
        zzadVar.zzT(i);
        zzadVar.zzB(zzxVar);
        zzadVar.zzK(str2);
        return zzadVar.zzY();
    }

    public static zzaf zzd(zzef zzefVar, String str, String str2, zzx zzxVar) {
        zzefVar.zzG(2);
        int i = zzc[(zzefVar.zzk() & 192) >> 6];
        int zzk = zzefVar.zzk();
        int i2 = zze[(zzk & 14) >> 1];
        if ((zzk & 1) != 0) {
            i2++;
        }
        if (((zzefVar.zzk() & 30) >> 1) > 0 && (2 & zzefVar.zzk()) != 0) {
            i2 += 2;
        }
        String str3 = (zzefVar.zza() <= 0 || (zzefVar.zzk() & 1) == 0) ? MimeTypes.AUDIO_E_AC3 : MimeTypes.AUDIO_E_AC3_JOC;
        zzad zzadVar = new zzad();
        zzadVar.zzH(str);
        zzadVar.zzS(str3);
        zzadVar.zzw(i2);
        zzadVar.zzT(i);
        zzadVar.zzB(zzxVar);
        zzadVar.zzK(str2);
        return zzadVar.zzY();
    }

    public static zzyj zze(zzee zzeeVar) {
        int zzf2;
        int i;
        int i2;
        int i3;
        int i4;
        String str;
        int zzc2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int zzb2 = zzeeVar.zzb();
        zzeeVar.zzj(40);
        int zzc3 = zzeeVar.zzc(5);
        zzeeVar.zzh(zzb2);
        int i10 = -1;
        if (zzc3 > 10) {
            zzeeVar.zzj(16);
            int zzc4 = zzeeVar.zzc(2);
            if (zzc4 == 0) {
                i10 = 0;
            } else if (zzc4 == 1) {
                i10 = 1;
            } else if (zzc4 == 2) {
                i10 = 2;
            }
            zzeeVar.zzj(3);
            int zzc5 = zzeeVar.zzc(11) + 1;
            zzf2 = zzc5 + zzc5;
            int zzc6 = zzeeVar.zzc(2);
            if (zzc6 == 3) {
                i5 = 6;
                i = zzd[zzeeVar.zzc(2)];
                zzc2 = 3;
            } else {
                zzc2 = zzeeVar.zzc(2);
                i5 = zzb[zzc2];
                i = zzc[zzc6];
            }
            i3 = i5 * 256;
            int zzc7 = zzeeVar.zzc(3);
            boolean zzl = zzeeVar.zzl();
            i2 = zze[zzc7] + (zzl ? 1 : 0);
            zzeeVar.zzj(10);
            if (zzeeVar.zzl()) {
                zzeeVar.zzj(8);
            }
            if (zzc7 == 0) {
                zzeeVar.zzj(5);
                if (zzeeVar.zzl()) {
                    zzeeVar.zzj(8);
                }
                i6 = 0;
                zzc7 = 0;
            } else {
                i6 = zzc7;
            }
            if (i10 == 1) {
                if (zzeeVar.zzl()) {
                    zzeeVar.zzj(16);
                }
                i7 = 1;
            } else {
                i7 = i10;
            }
            if (zzeeVar.zzl()) {
                if (i6 > 2) {
                    zzeeVar.zzj(2);
                }
                if ((i6 & 1) != 0 && i6 > 2) {
                    zzeeVar.zzj(6);
                }
                if ((i6 & 4) != 0) {
                    zzeeVar.zzj(6);
                }
                if (zzl && zzeeVar.zzl()) {
                    zzeeVar.zzj(5);
                }
                if (i7 == 0) {
                    if (zzeeVar.zzl()) {
                        zzeeVar.zzj(6);
                    }
                    if (i6 == 0 && zzeeVar.zzl()) {
                        zzeeVar.zzj(6);
                    }
                    if (zzeeVar.zzl()) {
                        zzeeVar.zzj(6);
                    }
                    int zzc8 = zzeeVar.zzc(2);
                    if (zzc8 == 1) {
                        zzeeVar.zzj(5);
                    } else if (zzc8 == 2) {
                        zzeeVar.zzj(12);
                    } else if (zzc8 == 3) {
                        int zzc9 = zzeeVar.zzc(5);
                        if (zzeeVar.zzl()) {
                            zzeeVar.zzj(5);
                            if (zzeeVar.zzl()) {
                                zzeeVar.zzj(4);
                            }
                            if (zzeeVar.zzl()) {
                                zzeeVar.zzj(4);
                            }
                            if (zzeeVar.zzl()) {
                                zzeeVar.zzj(4);
                            }
                            if (zzeeVar.zzl()) {
                                zzeeVar.zzj(4);
                            }
                            if (zzeeVar.zzl()) {
                                zzeeVar.zzj(4);
                            }
                            if (zzeeVar.zzl()) {
                                zzeeVar.zzj(4);
                            }
                            if (zzeeVar.zzl()) {
                                zzeeVar.zzj(4);
                            }
                            if (zzeeVar.zzl()) {
                                if (zzeeVar.zzl()) {
                                    zzeeVar.zzj(4);
                                }
                                if (zzeeVar.zzl()) {
                                    zzeeVar.zzj(4);
                                }
                            }
                        }
                        if (zzeeVar.zzl()) {
                            zzeeVar.zzj(5);
                            if (zzeeVar.zzl()) {
                                zzeeVar.zzj(7);
                                if (zzeeVar.zzl()) {
                                    i9 = 8;
                                    zzeeVar.zzj(8);
                                    zzeeVar.zzj((zzc9 + 2) * i9);
                                    zzeeVar.zzd();
                                }
                            }
                        }
                        i9 = 8;
                        zzeeVar.zzj((zzc9 + 2) * i9);
                        zzeeVar.zzd();
                    }
                    if (i6 < 2) {
                        if (zzeeVar.zzl()) {
                            zzeeVar.zzj(14);
                        }
                        if (zzc7 == 0 && zzeeVar.zzl()) {
                            zzeeVar.zzj(14);
                        }
                    }
                    if (zzeeVar.zzl()) {
                        if (zzc2 == 0) {
                            zzeeVar.zzj(5);
                            i7 = 0;
                            zzc2 = 0;
                        } else {
                            for (int i11 = 0; i11 < i5; i11++) {
                                if (zzeeVar.zzl()) {
                                    zzeeVar.zzj(5);
                                }
                            }
                        }
                    }
                    i7 = 0;
                }
            }
            if (zzeeVar.zzl()) {
                zzeeVar.zzj(5);
                if (i6 == 2) {
                    zzeeVar.zzj(4);
                    i6 = 2;
                }
                if (i6 >= 6) {
                    zzeeVar.zzj(2);
                }
                if (zzeeVar.zzl()) {
                    i8 = 8;
                    zzeeVar.zzj(8);
                } else {
                    i8 = 8;
                }
                if (i6 == 0 && zzeeVar.zzl()) {
                    zzeeVar.zzj(i8);
                }
                if (zzc6 < 3) {
                    zzeeVar.zzi();
                }
            }
            if (i7 == 0 && zzc2 != 3) {
                zzeeVar.zzi();
            }
            if (i7 == 2 && (zzc2 == 3 || zzeeVar.zzl())) {
                zzeeVar.zzj(6);
            }
            str = (zzeeVar.zzl() && zzeeVar.zzc(6) == 1 && zzeeVar.zzc(8) == 1) ? MimeTypes.AUDIO_E_AC3_JOC : MimeTypes.AUDIO_E_AC3;
            i4 = i10;
        } else {
            zzeeVar.zzj(32);
            int zzc10 = zzeeVar.zzc(2);
            String str2 = zzc10 == 3 ? null : MimeTypes.AUDIO_AC3;
            zzf2 = zzf(zzc10, zzeeVar.zzc(6));
            zzeeVar.zzj(8);
            int zzc11 = zzeeVar.zzc(3);
            if ((zzc11 & 1) != 0 && zzc11 != 1) {
                zzeeVar.zzj(2);
            }
            if ((zzc11 & 4) != 0) {
                zzeeVar.zzj(2);
            }
            if (zzc11 == 2) {
                zzeeVar.zzj(2);
            }
            i = zzc10 < 3 ? zzc[zzc10] : -1;
            i2 = zze[zzc11] + (zzeeVar.zzl() ? 1 : 0);
            i3 = 1536;
            i4 = -1;
            str = str2;
        }
        return new zzyj(str, i4, i2, i, zzf2, i3, null);
    }

    private static int zzf(int i, int i2) {
        int i3 = i2 / 2;
        if (i < 0 || i >= 3 || i2 < 0 || i3 >= 19) {
            return -1;
        }
        int i4 = zzc[i];
        if (i4 == 44100) {
            int i5 = zzg[i3] + (i2 & 1);
            return i5 + i5;
        }
        int i6 = zzf[i3];
        return i4 == 32000 ? i6 * 6 : i6 * 4;
    }
}

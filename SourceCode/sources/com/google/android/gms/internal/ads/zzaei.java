package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.google.android.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaei {
    public byte[] zzM;
    public zzaar zzS;
    public boolean zzT;
    public zzaaq zzV;
    public int zzW;
    private int zzX;
    public String zza;
    public String zzb;
    public int zzc;
    public int zzd;
    public int zze;
    public int zzf;
    public boolean zzg;
    public byte[] zzh;
    public zzaap zzi;
    public byte[] zzj;
    public zzx zzk;
    public int zzl = -1;
    public int zzm = -1;
    public int zzn = -1;
    public int zzo = -1;
    public int zzp = 0;
    public int zzq = -1;
    public float zzr = 0.0f;
    public float zzs = 0.0f;
    public float zzt = 0.0f;
    public byte[] zzu = null;
    public int zzv = -1;
    public boolean zzw = false;
    public int zzx = -1;
    public int zzy = -1;
    public int zzz = -1;
    public int zzA = 1000;
    public int zzB = 200;
    public float zzC = -1.0f;
    public float zzD = -1.0f;
    public float zzE = -1.0f;
    public float zzF = -1.0f;
    public float zzG = -1.0f;
    public float zzH = -1.0f;
    public float zzI = -1.0f;
    public float zzJ = -1.0f;
    public float zzK = -1.0f;
    public float zzL = -1.0f;
    public int zzN = 1;
    public int zzO = -1;
    public int zzP = 8000;
    public long zzQ = 0;
    public long zzR = 0;
    public boolean zzU = true;
    private String zzY = "eng";

    private static Pair zzf(zzef zzefVar) throws zzbu {
        try {
            zzefVar.zzG(16);
            long zzq = zzefVar.zzq();
            if (zzq == 1482049860) {
                return new Pair(MimeTypes.VIDEO_DIVX, null);
            }
            if (zzq == 859189832) {
                return new Pair(MimeTypes.VIDEO_H263, null);
            }
            if (zzq != 826496599) {
                zzdw.zze("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                return new Pair(MimeTypes.VIDEO_UNKNOWN, null);
            }
            int zzc = zzefVar.zzc() + 20;
            byte[] zzH = zzefVar.zzH();
            while (true) {
                int length = zzH.length;
                if (zzc < length - 4) {
                    if (zzH[zzc] == 0 && zzH[zzc + 1] == 0 && zzH[zzc + 2] == 1 && zzH[zzc + 3] == 15) {
                        return new Pair(MimeTypes.VIDEO_VC1, Collections.singletonList(Arrays.copyOfRange(zzH, zzc, length)));
                    }
                    zzc++;
                } else {
                    throw zzbu.zza("Failed to find FourCC VC1 initialization data", null);
                }
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw zzbu.zza("Error parsing FourCC private data", null);
        }
    }

    private static List zzg(byte[] bArr) throws zzbu {
        int i;
        int i2;
        try {
            if (bArr[0] == 2) {
                int i3 = 0;
                int i4 = 1;
                while (true) {
                    i = bArr[i4] & 255;
                    if (i != 255) {
                        break;
                    }
                    i3 += 255;
                    i4++;
                }
                int i5 = i4 + 1;
                int i6 = i3 + i;
                int i7 = 0;
                while (true) {
                    i2 = bArr[i5] & 255;
                    if (i2 != 255) {
                        break;
                    }
                    i7 += 255;
                    i5++;
                }
                int i8 = i5 + 1;
                int i9 = i7 + i2;
                if (bArr[i8] != 1) {
                    throw zzbu.zza("Error parsing vorbis codec private", null);
                }
                byte[] bArr2 = new byte[i6];
                System.arraycopy(bArr, i8, bArr2, 0, i6);
                int i10 = i8 + i6;
                if (bArr[i10] != 3) {
                    throw zzbu.zza("Error parsing vorbis codec private", null);
                }
                int i11 = i10 + i9;
                if (bArr[i11] == 5) {
                    int length = bArr.length - i11;
                    byte[] bArr3 = new byte[length];
                    System.arraycopy(bArr, i11, bArr3, 0, length);
                    ArrayList arrayList = new ArrayList(2);
                    arrayList.add(bArr2);
                    arrayList.add(bArr3);
                    return arrayList;
                }
                throw zzbu.zza("Error parsing vorbis codec private", null);
            }
            throw zzbu.zza("Error parsing vorbis codec private", null);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw zzbu.zza("Error parsing vorbis codec private", null);
        }
    }

    private static boolean zzh(zzef zzefVar) throws zzbu {
        UUID uuid;
        UUID uuid2;
        try {
            int zzi = zzefVar.zzi();
            if (zzi == 1) {
                return true;
            }
            if (zzi == 65534) {
                zzefVar.zzF(24);
                long zzr = zzefVar.zzr();
                uuid = zzaej.zzf;
                if (zzr == uuid.getMostSignificantBits()) {
                    long zzr2 = zzefVar.zzr();
                    uuid2 = zzaej.zzf;
                    if (zzr2 == uuid2.getLeastSignificantBits()) {
                        return true;
                    }
                }
            }
            return false;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw zzbu.zza("Error parsing MS/ACM codec private", null);
        }
    }

    @EnsuresNonNull({"codecPrivate"})
    private final byte[] zzi(String str) throws zzbu {
        byte[] bArr = this.zzj;
        if (bArr != null) {
            return bArr;
        }
        throw zzbu.zza("Missing CodecPrivate for codec ".concat(String.valueOf(str)), null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @EnsuresNonNull({"this.output"})
    @RequiresNonNull({"codecId"})
    public final void zze(zzzm zzzmVar, int i) throws zzbu {
        char c2;
        List singletonList;
        List list;
        String str;
        zzgau zzgauVar;
        String str2;
        int i2;
        List zzg;
        int i3;
        byte[] bArr;
        int i4;
        zzq zzqVar;
        Map map;
        Map map2;
        byte[] bArr2;
        int i5;
        Map map3;
        zzzf zza;
        String str3 = this.zzb;
        int i6 = 1;
        int i7 = 4;
        int i8 = 0;
        int i9 = -1;
        switch (str3.hashCode()) {
            case -2095576542:
                if (str3.equals("V_MPEG4/ISO/AP")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case -2095575984:
                if (str3.equals("V_MPEG4/ISO/SP")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -1985379776:
                if (str3.equals("A_MS/ACM")) {
                    c2 = 23;
                    break;
                }
                c2 = 65535;
                break;
            case -1784763192:
                if (str3.equals("A_TRUEHD")) {
                    c2 = 18;
                    break;
                }
                c2 = 65535;
                break;
            case -1730367663:
                if (str3.equals("A_VORBIS")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case -1482641358:
                if (str3.equals("A_MPEG/L2")) {
                    c2 = 14;
                    break;
                }
                c2 = 65535;
                break;
            case -1482641357:
                if (str3.equals("A_MPEG/L3")) {
                    c2 = 15;
                    break;
                }
                c2 = 65535;
                break;
            case -1373388978:
                if (str3.equals("V_MS/VFW/FOURCC")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case -933872740:
                if (str3.equals("S_DVBSUB")) {
                    c2 = ' ';
                    break;
                }
                c2 = 65535;
                break;
            case -538363189:
                if (str3.equals("V_MPEG4/ISO/ASP")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -538363109:
                if (str3.equals("V_MPEG4/ISO/AVC")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case -425012669:
                if (str3.equals("S_VOBSUB")) {
                    c2 = 30;
                    break;
                }
                c2 = 65535;
                break;
            case -356037306:
                if (str3.equals("A_DTS/LOSSLESS")) {
                    c2 = 21;
                    break;
                }
                c2 = 65535;
                break;
            case 62923557:
                if (str3.equals("A_AAC")) {
                    c2 = '\r';
                    break;
                }
                c2 = 65535;
                break;
            case 62923603:
                if (str3.equals("A_AC3")) {
                    c2 = 16;
                    break;
                }
                c2 = 65535;
                break;
            case 62927045:
                if (str3.equals("A_DTS")) {
                    c2 = 19;
                    break;
                }
                c2 = 65535;
                break;
            case 82318131:
                if (str3.equals("V_AV1")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 82338133:
                if (str3.equals("V_VP8")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 82338134:
                if (str3.equals("V_VP9")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 99146302:
                if (str3.equals("S_HDMV/PGS")) {
                    c2 = 31;
                    break;
                }
                c2 = 65535;
                break;
            case 444813526:
                if (str3.equals("V_THEORA")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case 542569478:
                if (str3.equals("A_DTS/EXPRESS")) {
                    c2 = 20;
                    break;
                }
                c2 = 65535;
                break;
            case 635596514:
                if (str3.equals("A_PCM/FLOAT/IEEE")) {
                    c2 = 26;
                    break;
                }
                c2 = 65535;
                break;
            case 725948237:
                if (str3.equals("A_PCM/INT/BIG")) {
                    c2 = 25;
                    break;
                }
                c2 = 65535;
                break;
            case 725957860:
                if (str3.equals("A_PCM/INT/LIT")) {
                    c2 = 24;
                    break;
                }
                c2 = 65535;
                break;
            case 738597099:
                if (str3.equals("S_TEXT/ASS")) {
                    c2 = 28;
                    break;
                }
                c2 = 65535;
                break;
            case 855502857:
                if (str3.equals("V_MPEGH/ISO/HEVC")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case 1045209816:
                if (str3.equals("S_TEXT/WEBVTT")) {
                    c2 = 29;
                    break;
                }
                c2 = 65535;
                break;
            case 1422270023:
                if (str3.equals("S_TEXT/UTF8")) {
                    c2 = 27;
                    break;
                }
                c2 = 65535;
                break;
            case 1809237540:
                if (str3.equals("V_MPEG2")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1950749482:
                if (str3.equals("A_EAC3")) {
                    c2 = 17;
                    break;
                }
                c2 = 65535;
                break;
            case 1950789798:
                if (str3.equals("A_FLAC")) {
                    c2 = 22;
                    break;
                }
                c2 = 65535;
                break;
            case 1951062397:
                if (str3.equals("A_OPUS")) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        String str4 = MimeTypes.AUDIO_RAW;
        switch (c2) {
            case 0:
                str4 = MimeTypes.VIDEO_VP8;
                i2 = -1;
                i7 = -1;
                str2 = null;
                zzgauVar = null;
                break;
            case 1:
                str4 = MimeTypes.VIDEO_VP9;
                i2 = -1;
                i7 = -1;
                str2 = null;
                zzgauVar = null;
                break;
            case 2:
                str4 = MimeTypes.VIDEO_AV1;
                i2 = -1;
                i7 = -1;
                str2 = null;
                zzgauVar = null;
                break;
            case 3:
                str4 = MimeTypes.VIDEO_MPEG2;
                i2 = -1;
                i7 = -1;
                str2 = null;
                zzgauVar = null;
                break;
            case 4:
            case 5:
            case 6:
                byte[] bArr3 = this.zzj;
                singletonList = bArr3 == null ? null : Collections.singletonList(bArr3);
                str4 = MimeTypes.VIDEO_MP4V;
                zzgauVar = singletonList;
                i2 = -1;
                i7 = -1;
                str2 = null;
                break;
            case 7:
                zzyo zza2 = zzyo.zza(new zzef(zzi(str3)));
                list = zza2.zza;
                this.zzW = zza2.zzb;
                str = zza2.zzf;
                str4 = "video/avc";
                zzgauVar = list;
                i7 = -1;
                str2 = str;
                i2 = -1;
                break;
            case '\b':
                zzzz zza3 = zzzz.zza(new zzef(zzi(str3)));
                list = zza3.zza;
                this.zzW = zza3.zzb;
                str = zza3.zzd;
                str4 = "video/hevc";
                zzgauVar = list;
                i7 = -1;
                str2 = str;
                i2 = -1;
                break;
            case '\t':
                Pair zzf = zzf(new zzef(zzi(str3)));
                str4 = (String) zzf.first;
                singletonList = (List) zzf.second;
                zzgauVar = singletonList;
                i2 = -1;
                i7 = -1;
                str2 = null;
                break;
            case '\n':
                str4 = MimeTypes.VIDEO_UNKNOWN;
                i2 = -1;
                i7 = -1;
                str2 = null;
                zzgauVar = null;
                break;
            case 11:
                zzg = zzg(zzi(str3));
                str4 = MimeTypes.AUDIO_VORBIS;
                i3 = 8192;
                zzgauVar = zzg;
                i7 = -1;
                i2 = i3;
                str2 = null;
                break;
            case '\f':
                zzg = new ArrayList(3);
                zzg.add(zzi(this.zzb));
                zzg.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.zzQ).array());
                zzg.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.zzR).array());
                str4 = MimeTypes.AUDIO_OPUS;
                i3 = 5760;
                zzgauVar = zzg;
                i7 = -1;
                i2 = i3;
                str2 = null;
                break;
            case '\r':
                List singletonList2 = Collections.singletonList(zzi(str3));
                zzyg zza4 = zzyh.zza(this.zzj);
                this.zzP = zza4.zza;
                this.zzN = zza4.zzb;
                str2 = zza4.zzc;
                str4 = MimeTypes.AUDIO_AAC;
                zzgauVar = singletonList2;
                i2 = -1;
                i7 = -1;
                break;
            case 14:
                str4 = MimeTypes.AUDIO_MPEG_L2;
                i7 = -1;
                i2 = 4096;
                str2 = null;
                zzgauVar = null;
                break;
            case 15:
                str4 = MimeTypes.AUDIO_MPEG;
                i7 = -1;
                i2 = 4096;
                str2 = null;
                zzgauVar = null;
                break;
            case 16:
                str4 = MimeTypes.AUDIO_AC3;
                i2 = -1;
                i7 = -1;
                str2 = null;
                zzgauVar = null;
                break;
            case 17:
                str4 = MimeTypes.AUDIO_E_AC3;
                i2 = -1;
                i7 = -1;
                str2 = null;
                zzgauVar = null;
                break;
            case 18:
                this.zzS = new zzaar();
                str4 = MimeTypes.AUDIO_TRUEHD;
                i2 = -1;
                i7 = -1;
                str2 = null;
                zzgauVar = null;
                break;
            case 19:
            case 20:
                str4 = MimeTypes.AUDIO_DTS;
                i2 = -1;
                i7 = -1;
                str2 = null;
                zzgauVar = null;
                break;
            case 21:
                str4 = MimeTypes.AUDIO_DTS_HD;
                i2 = -1;
                i7 = -1;
                str2 = null;
                zzgauVar = null;
                break;
            case 22:
                singletonList = Collections.singletonList(zzi(str3));
                str4 = MimeTypes.AUDIO_FLAC;
                zzgauVar = singletonList;
                i2 = -1;
                i7 = -1;
                str2 = null;
                break;
            case 23:
                if (zzh(new zzef(zzi(str3)))) {
                    i7 = zzen.zzn(this.zzO);
                    if (i7 == 0) {
                        zzdw.zze("MatroskaExtractor", "Unsupported PCM bit depth: " + this.zzO + ". Setting mimeType to audio/x-unknown");
                    }
                    i2 = -1;
                    str2 = null;
                    zzgauVar = null;
                    break;
                } else {
                    zzdw.zze("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                }
                i2 = -1;
                i7 = -1;
                str4 = MimeTypes.AUDIO_UNKNOWN;
                str2 = null;
                zzgauVar = null;
            case 24:
                i7 = zzen.zzn(this.zzO);
                if (i7 == 0) {
                    zzdw.zze("MatroskaExtractor", "Unsupported little endian PCM bit depth: " + this.zzO + ". Setting mimeType to audio/x-unknown");
                    i2 = -1;
                    i7 = -1;
                    str4 = MimeTypes.AUDIO_UNKNOWN;
                    str2 = null;
                    zzgauVar = null;
                    break;
                }
                i2 = -1;
                str2 = null;
                zzgauVar = null;
            case 25:
                int i10 = this.zzO;
                if (i10 != 8) {
                    if (i10 != 16) {
                        zzdw.zze("MatroskaExtractor", "Unsupported big endian PCM bit depth: " + i10 + ". Setting mimeType to audio/x-unknown");
                        i2 = -1;
                        i7 = -1;
                        str4 = MimeTypes.AUDIO_UNKNOWN;
                        str2 = null;
                        zzgauVar = null;
                        break;
                    } else {
                        i7 = 268435456;
                    }
                } else {
                    i7 = 3;
                }
                i2 = -1;
                str2 = null;
                zzgauVar = null;
            case 26:
                int i11 = this.zzO;
                if (i11 != 32) {
                    zzdw.zze("MatroskaExtractor", "Unsupported floating point PCM bit depth: " + i11 + ". Setting mimeType to audio/x-unknown");
                    i2 = -1;
                    i7 = -1;
                    str4 = MimeTypes.AUDIO_UNKNOWN;
                    str2 = null;
                    zzgauVar = null;
                    break;
                }
                i2 = -1;
                str2 = null;
                zzgauVar = null;
            case 27:
                i2 = -1;
                i7 = -1;
                str4 = MimeTypes.APPLICATION_SUBRIP;
                str2 = null;
                zzgauVar = null;
                break;
            case 28:
                bArr = zzaej.zzc;
                zzgauVar = zzgau.zzq(bArr, zzi(this.zzb));
                i2 = -1;
                i7 = -1;
                str4 = MimeTypes.TEXT_SSA;
                str2 = null;
                break;
            case 29:
                i2 = -1;
                i7 = -1;
                str4 = MimeTypes.TEXT_VTT;
                str2 = null;
                zzgauVar = null;
                break;
            case 30:
                singletonList = zzgau.zzp(zzi(str3));
                str4 = MimeTypes.APPLICATION_VOBSUB;
                zzgauVar = singletonList;
                i2 = -1;
                i7 = -1;
                str2 = null;
                break;
            case 31:
                str4 = MimeTypes.APPLICATION_PGS;
                i2 = -1;
                i7 = -1;
                str2 = null;
                zzgauVar = null;
                break;
            case ' ':
                byte[] bArr4 = new byte[4];
                System.arraycopy(zzi(str3), 0, bArr4, 0, 4);
                singletonList = zzgau.zzp(bArr4);
                str4 = MimeTypes.APPLICATION_DVBSUBS;
                zzgauVar = singletonList;
                i2 = -1;
                i7 = -1;
                str2 = null;
                break;
            default:
                throw zzbu.zza("Unrecognized codec identifier.", null);
        }
        byte[] bArr5 = this.zzM;
        if (bArr5 != null && (zza = zzzf.zza(new zzef(bArr5))) != null) {
            str2 = zza.zza;
            str4 = MimeTypes.VIDEO_DOLBY_VISION;
        }
        String str5 = str4;
        int i12 = (this.zzU ? 1 : 0) | (true != this.zzT ? 0 : 2);
        zzad zzadVar = new zzad();
        if (zzbt.zzg(str5)) {
            zzadVar.zzw(this.zzN);
            zzadVar.zzT(this.zzP);
            zzadVar.zzN(i7);
        } else if (zzbt.zzh(str5)) {
            if (this.zzp == 0) {
                int i13 = this.zzn;
                if (i13 == -1) {
                    i13 = this.zzl;
                }
                this.zzn = i13;
                int i14 = this.zzo;
                if (i14 == -1) {
                    i14 = this.zzm;
                }
                this.zzo = i14;
            }
            float f2 = (this.zzn == -1 || (i5 = this.zzo) == -1) ? -1.0f : (this.zzm * i4) / (this.zzl * i5);
            if (this.zzw) {
                if (this.zzC == -1.0f || this.zzD == -1.0f || this.zzE == -1.0f || this.zzF == -1.0f || this.zzG == -1.0f || this.zzH == -1.0f || this.zzI == -1.0f || this.zzJ == -1.0f || this.zzK == -1.0f || this.zzL == -1.0f) {
                    bArr2 = null;
                } else {
                    bArr2 = new byte[25];
                    ByteBuffer order = ByteBuffer.wrap(bArr2).order(ByteOrder.LITTLE_ENDIAN);
                    order.put((byte) 0);
                    order.putShort((short) ((this.zzC * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.zzD * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.zzE * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.zzF * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.zzG * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.zzH * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.zzI * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.zzJ * 50000.0f) + 0.5f));
                    order.putShort((short) (this.zzK + 0.5f));
                    order.putShort((short) (this.zzL + 0.5f));
                    order.putShort((short) this.zzA);
                    order.putShort((short) this.zzB);
                }
                zzqVar = new zzq(this.zzx, this.zzz, this.zzy, bArr2);
            } else {
                zzqVar = null;
            }
            if (this.zza != null) {
                map = zzaej.zzg;
                if (map.containsKey(this.zza)) {
                    map2 = zzaej.zzg;
                    i9 = ((Integer) map2.get(this.zza)).intValue();
                }
            }
            if (this.zzq == 0 && Float.compare(this.zzr, 0.0f) == 0 && Float.compare(this.zzs, 0.0f) == 0) {
                if (Float.compare(this.zzt, 0.0f) != 0) {
                    if (Float.compare(this.zzs, 90.0f) == 0) {
                        i8 = 90;
                    } else if (Float.compare(this.zzs, -180.0f) == 0 || Float.compare(this.zzs, 180.0f) == 0) {
                        i8 = 180;
                    } else if (Float.compare(this.zzs, -90.0f) == 0) {
                        i8 = 270;
                    }
                }
                zzadVar.zzX(this.zzl);
                zzadVar.zzF(this.zzm);
                zzadVar.zzP(f2);
                zzadVar.zzR(i8);
                zzadVar.zzQ(this.zzu);
                zzadVar.zzV(this.zzv);
                zzadVar.zzy(zzqVar);
                i6 = 2;
            }
            i8 = i9;
            zzadVar.zzX(this.zzl);
            zzadVar.zzF(this.zzm);
            zzadVar.zzP(f2);
            zzadVar.zzR(i8);
            zzadVar.zzQ(this.zzu);
            zzadVar.zzV(this.zzv);
            zzadVar.zzy(zzqVar);
            i6 = 2;
        } else if (!MimeTypes.APPLICATION_SUBRIP.equals(str5) && !MimeTypes.TEXT_SSA.equals(str5) && !MimeTypes.TEXT_VTT.equals(str5) && !MimeTypes.APPLICATION_VOBSUB.equals(str5) && !MimeTypes.APPLICATION_PGS.equals(str5) && !MimeTypes.APPLICATION_DVBSUBS.equals(str5)) {
            throw zzbu.zza("Unexpected MIME type.", null);
        } else {
            i6 = 3;
        }
        if (this.zza != null) {
            map3 = zzaej.zzg;
            if (!map3.containsKey(this.zza)) {
                zzadVar.zzJ(this.zza);
            }
        }
        zzadVar.zzG(i);
        zzadVar.zzS(str5);
        zzadVar.zzL(i2);
        zzadVar.zzK(this.zzY);
        zzadVar.zzU(i12);
        zzadVar.zzI(zzgauVar);
        zzadVar.zzx(str2);
        zzadVar.zzB(this.zzk);
        zzaf zzY = zzadVar.zzY();
        zzaaq zzv = zzzmVar.zzv(this.zzc, i6);
        this.zzV = zzv;
        zzv.zzk(zzY);
    }
}

package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.firebase.FirebaseError;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzavy implements zzavg {
    public static final zzavi zza = new zzavt();
    private static final byte[] zzb = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] zzc = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};
    private static final UUID zzd = new UUID(72057594037932032L, -9223371306706625679L);
    private boolean zzA;
    private long zzB;
    private long zzC;
    private long zzD;
    private zzbam zzE;
    private zzbam zzF;
    private boolean zzG;
    private int zzH;
    private long zzI;
    private long zzJ;
    private int zzK;
    private int zzL;
    private int[] zzM;
    private int zzN;
    private int zzO;
    private int zzP;
    private int zzQ;
    private boolean zzR;
    private boolean zzS;
    private boolean zzT;
    private boolean zzU;
    private byte zzV;
    private int zzW;
    private int zzX;
    private int zzY;
    private boolean zzZ;
    private boolean zzaa;
    private zzavh zzab;
    private final zzavs zzac;
    private final zzawa zze;
    private final SparseArray zzf;
    private final boolean zzg;
    private final zzbar zzh;
    private final zzbar zzi;
    private final zzbar zzj;
    private final zzbar zzk;
    private final zzbar zzl;
    private final zzbar zzm;
    private final zzbar zzn;
    private final zzbar zzo;
    private final zzbar zzp;
    private ByteBuffer zzq;
    private long zzr;
    private long zzs;
    private long zzt;
    private long zzu;
    private long zzv;
    private zzavx zzw;
    private boolean zzx;
    private int zzy;
    private long zzz;

    public zzavy() {
        this(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final int zzl(int i) {
        switch (i) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 241:
            case 251:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 22186:
            case 22203:
            case 25188:
            case 2352003:
            case 2807729:
                return 2;
            case TsExtractor.TS_STREAM_TYPE_SPLICE_INFO /* 134 */:
            case FirebaseError.ERROR_WEAK_PASSWORD /* 17026 */:
            case 2274716:
                return 3;
            case 160:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
                return 5;
            default:
                return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final boolean zzm(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    private final long zzn(long j) throws zzatg {
        long j2 = this.zzt;
        if (j2 == C.TIME_UNSET) {
            throw new zzatg("Can't scale timecode prior to timecodeScale being set.");
        }
        return zzbay.zzj(j, j2, 1000L);
    }

    private final void zzo(zzavx zzavxVar, long j) {
        int i;
        byte[] zzq;
        if ("S_TEXT/UTF8".equals(zzavxVar.zza)) {
            byte[] bArr = this.zzn.zza;
            long j2 = this.zzJ;
            if (j2 == C.TIME_UNSET) {
                zzq = zzc;
            } else {
                int i2 = (int) (j2 / 3600000000L);
                long j3 = j2 - (i2 * 3600000000L);
                int i3 = (int) (j3 / 60000000);
                long j4 = j3 - (60000000 * i3);
                zzq = zzbay.zzq(String.format(Locale.US, "%02d:%02d:%02d,%03d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) (j4 / 1000000)), Integer.valueOf((int) ((j4 - (i * 1000000)) / 1000))));
            }
            System.arraycopy(zzq, 0, bArr, 19, 12);
            zzavp zzavpVar = zzavxVar.zzN;
            zzbar zzbarVar = this.zzn;
            zzavpVar.zzb(zzbarVar, zzbarVar.zzd());
            this.zzY += this.zzn.zzd();
        }
        zzavxVar.zzN.zzc(j, this.zzP, this.zzY, 0, zzavxVar.zzg);
        this.zzZ = true;
        zzp();
    }

    private final void zzp() {
        this.zzQ = 0;
        this.zzY = 0;
        this.zzX = 0;
        this.zzR = false;
        this.zzS = false;
        this.zzU = false;
        this.zzW = 0;
        this.zzV = (byte) 0;
        this.zzT = false;
        this.zzm.zzr();
    }

    private static int[] zzq(int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        int length = iArr.length;
        return length >= i ? iArr : new int[Math.max(length + length, i)];
    }

    private final int zzr(zzavf zzavfVar, zzavp zzavpVar, int i) throws IOException, InterruptedException {
        int zzd2;
        int zza2 = this.zzm.zza();
        if (zza2 > 0) {
            zzd2 = Math.min(i, zza2);
            zzavpVar.zzb(this.zzm, zzd2);
        } else {
            zzd2 = zzavpVar.zzd(zzavfVar, i, false);
        }
        this.zzQ += zzd2;
        this.zzY += zzd2;
        return zzd2;
    }

    private final void zzs(zzavf zzavfVar, int i) throws IOException, InterruptedException {
        if (this.zzj.zzd() >= i) {
            return;
        }
        if (this.zzj.zzb() < i) {
            zzbar zzbarVar = this.zzj;
            byte[] bArr = zzbarVar.zza;
            int length = bArr.length;
            zzbarVar.zzt(Arrays.copyOf(bArr, Math.max(length + length, i)), this.zzj.zzd());
        }
        zzbar zzbarVar2 = this.zzj;
        zzavfVar.zzh(zzbarVar2.zza, zzbarVar2.zzd(), i - this.zzj.zzd(), false);
        this.zzj.zzu(i);
    }

    private final void zzt(zzavf zzavfVar, zzavx zzavxVar, int i) throws IOException, InterruptedException {
        int i2;
        if ("S_TEXT/UTF8".equals(zzavxVar.zza)) {
            int i3 = i + 32;
            if (this.zzn.zzb() < i3) {
                this.zzn.zza = Arrays.copyOf(zzb, i3 + i);
            }
            zzavfVar.zzh(this.zzn.zza, 32, i, false);
            this.zzn.zzv(0);
            this.zzn.zzu(i3);
            return;
        }
        zzavp zzavpVar = zzavxVar.zzN;
        if (!this.zzR) {
            if (zzavxVar.zze) {
                this.zzP &= -1073741825;
                if (!this.zzS) {
                    zzavfVar.zzh(this.zzj.zza, 0, 1, false);
                    this.zzQ++;
                    byte b2 = this.zzj.zza[0];
                    if ((b2 & 128) != 128) {
                        this.zzV = b2;
                        this.zzS = true;
                    } else {
                        throw new zzatg("Extension bit is set in signal byte");
                    }
                }
                byte b3 = this.zzV;
                if ((b3 & 1) == 1) {
                    int i4 = b3 & 2;
                    this.zzP |= 1073741824;
                    if (!this.zzT) {
                        zzavfVar.zzh(this.zzo.zza, 0, 8, false);
                        this.zzQ += 8;
                        this.zzT = true;
                        zzbar zzbarVar = this.zzj;
                        zzbarVar.zza[0] = (byte) ((i4 != 2 ? 0 : 128) | 8);
                        zzbarVar.zzv(0);
                        zzavpVar.zzb(this.zzj, 1);
                        this.zzY++;
                        this.zzo.zzv(0);
                        zzavpVar.zzb(this.zzo, 8);
                        this.zzY += 8;
                    }
                    if (i4 == 2) {
                        if (!this.zzU) {
                            zzavfVar.zzh(this.zzj.zza, 0, 1, false);
                            this.zzQ++;
                            this.zzj.zzv(0);
                            this.zzW = this.zzj.zzg();
                            this.zzU = true;
                        }
                        int i5 = this.zzW * 4;
                        this.zzj.zzs(i5);
                        zzavfVar.zzh(this.zzj.zza, 0, i5, false);
                        this.zzQ += i5;
                        int i6 = (this.zzW >> 1) + 1;
                        int i7 = (i6 * 6) + 2;
                        ByteBuffer byteBuffer = this.zzq;
                        if (byteBuffer == null || byteBuffer.capacity() < i7) {
                            this.zzq = ByteBuffer.allocate(i7);
                        }
                        this.zzq.position(0);
                        this.zzq.putShort((short) i6);
                        int i8 = 0;
                        int i9 = 0;
                        while (true) {
                            i2 = this.zzW;
                            if (i8 >= i2) {
                                break;
                            }
                            int zzi = this.zzj.zzi();
                            if (i8 % 2 == 0) {
                                this.zzq.putShort((short) (zzi - i9));
                            } else {
                                this.zzq.putInt(zzi - i9);
                            }
                            i8++;
                            i9 = zzi;
                        }
                        int i10 = (i - this.zzQ) - i9;
                        if ((i2 & 1) == 1) {
                            this.zzq.putInt(i10);
                        } else {
                            this.zzq.putShort((short) i10);
                            this.zzq.putInt(0);
                        }
                        this.zzp.zzt(this.zzq.array(), i7);
                        zzavpVar.zzb(this.zzp, i7);
                        this.zzY += i7;
                    }
                }
            } else {
                byte[] bArr = zzavxVar.zzf;
                if (bArr != null) {
                    this.zzm.zzt(bArr, bArr.length);
                }
            }
            this.zzR = true;
        }
        int zzd2 = i + this.zzm.zzd();
        if (!"V_MPEG4/ISO/AVC".equals(zzavxVar.zza) && !"V_MPEGH/ISO/HEVC".equals(zzavxVar.zza)) {
            while (true) {
                int i11 = this.zzQ;
                if (i11 >= zzd2) {
                    break;
                }
                zzr(zzavfVar, zzavpVar, zzd2 - i11);
            }
        } else {
            byte[] bArr2 = this.zzi.zza;
            bArr2[0] = 0;
            bArr2[1] = 0;
            bArr2[2] = 0;
            int i12 = zzavxVar.zzO;
            int i13 = 4 - i12;
            while (this.zzQ < zzd2) {
                int i14 = this.zzX;
                if (i14 == 0) {
                    int min = Math.min(i12, this.zzm.zza());
                    zzavfVar.zzh(bArr2, i13 + min, i12 - min, false);
                    if (min > 0) {
                        this.zzm.zzq(bArr2, i13, min);
                    }
                    this.zzQ += i12;
                    this.zzi.zzv(0);
                    this.zzX = this.zzi.zzi();
                    this.zzh.zzv(0);
                    zzavpVar.zzb(this.zzh, 4);
                    this.zzY += 4;
                } else {
                    this.zzX = i14 - zzr(zzavfVar, zzavpVar, i14);
                }
            }
        }
        if ("A_VORBIS".equals(zzavxVar.zza)) {
            this.zzk.zzv(0);
            zzavpVar.zzb(this.zzk, 4);
            this.zzY += 4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzc(int i, double d2) {
        if (i == 181) {
            this.zzw.zzI = (int) d2;
        } else if (i == 17545) {
            this.zzu = (long) d2;
        } else {
            switch (i) {
                case 21969:
                    this.zzw.zzw = (float) d2;
                    return;
                case 21970:
                    this.zzw.zzx = (float) d2;
                    return;
                case 21971:
                    this.zzw.zzy = (float) d2;
                    return;
                case 21972:
                    this.zzw.zzz = (float) d2;
                    return;
                case 21973:
                    this.zzw.zzA = (float) d2;
                    return;
                case 21974:
                    this.zzw.zzB = (float) d2;
                    return;
                case 21975:
                    this.zzw.zzC = (float) d2;
                    return;
                case 21976:
                    this.zzw.zzD = (float) d2;
                    return;
                case 21977:
                    this.zzw.zzE = (float) d2;
                    return;
                case 21978:
                    this.zzw.zzF = (float) d2;
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final void zzd(zzavh zzavhVar) {
        this.zzab = zzavhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final void zze(long j, long j2) {
        this.zzD = C.TIME_UNSET;
        this.zzH = 0;
        this.zzac.zza();
        this.zze.zzd();
        zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final int zzf(zzavf zzavfVar, zzavl zzavlVar) throws IOException, InterruptedException {
        this.zzZ = false;
        while (!this.zzZ) {
            if (!this.zzac.zzc(zzavfVar)) {
                return -1;
            }
            long zzd2 = zzavfVar.zzd();
            if (this.zzA) {
                this.zzC = zzd2;
                zzavlVar.zza = this.zzB;
                this.zzA = false;
                return 1;
            } else if (this.zzx) {
                long j = this.zzC;
                if (j != -1) {
                    zzavlVar.zza = j;
                    this.zzC = -1L;
                    return 1;
                }
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final boolean zzg(zzavf zzavfVar) throws IOException, InterruptedException {
        return new zzavz().zza(zzavfVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzi(int i, long j, long j2) throws zzatg {
        if (i == 160) {
            this.zzaa = false;
        } else if (i == 174) {
            this.zzw = new zzavx(null);
        } else if (i == 187) {
            this.zzG = false;
        } else if (i == 19899) {
            this.zzy = -1;
            this.zzz = -1L;
        } else if (i == 20533) {
            this.zzw.zze = true;
        } else if (i == 21968) {
            this.zzw.zzq = true;
        } else if (i == 408125543) {
            long j3 = this.zzs;
            if (j3 != -1 && j3 != j) {
                throw new zzatg("Multiple Segment elements not supported");
            }
            this.zzs = j;
            this.zzr = j2;
        } else if (i == 475249515) {
            this.zzE = new zzbam(32);
            this.zzF = new zzbam(32);
        } else if (i == 524531317 && !this.zzx) {
            if (this.zzg && this.zzB != -1) {
                this.zzA = true;
                return;
            }
            this.zzab.zzc(new zzavm(this.zzv));
            this.zzx = true;
        }
    }

    public zzavy(int i) {
        zzavs zzavsVar = new zzavs();
        this.zzs = -1L;
        this.zzt = C.TIME_UNSET;
        this.zzu = C.TIME_UNSET;
        this.zzv = C.TIME_UNSET;
        this.zzB = -1L;
        this.zzC = -1L;
        this.zzD = C.TIME_UNSET;
        this.zzac = zzavsVar;
        zzavsVar.zzb(new zzavv(this, null));
        this.zzg = true;
        this.zze = new zzawa();
        this.zzf = new SparseArray();
        this.zzj = new zzbar(4);
        this.zzk = new zzbar(ByteBuffer.allocate(4).putInt(-1).array());
        this.zzl = new zzbar(4);
        this.zzh = new zzbar(zzbap.zza);
        this.zzi = new zzbar(4);
        this.zzm = new zzbar();
        this.zzn = new zzbar();
        this.zzo = new zzbar(8);
        this.zzp = new zzbar();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzj(int i, String str) throws zzatg {
        if (i == 134) {
            this.zzw.zza = str;
        } else if (i != 17026) {
            if (i != 2274716) {
                return;
            }
            zzavx.zza(this.zzw, str);
        } else if ("webm".equals(str) || "matroska".equals(str)) {
        } else {
            throw new zzatg("DocType " + str + " not supported");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzh(int i, long j) throws zzatg {
        if (i == 20529) {
            if (j == 0) {
                return;
            }
            throw new zzatg("ContentEncodingOrder " + j + " not supported");
        } else if (i == 20530) {
            if (j == 1) {
                return;
            }
            throw new zzatg("ContentEncodingScope " + j + " not supported");
        } else {
            switch (i) {
                case 131:
                    this.zzw.zzc = (int) j;
                    return;
                case 136:
                    this.zzw.zzL = j == 1;
                    return;
                case 155:
                    this.zzJ = zzn(j);
                    return;
                case 159:
                    this.zzw.zzG = (int) j;
                    return;
                case 176:
                    this.zzw.zzj = (int) j;
                    return;
                case 179:
                    this.zzE.zzc(zzn(j));
                    return;
                case 186:
                    this.zzw.zzk = (int) j;
                    return;
                case 215:
                    this.zzw.zzb = (int) j;
                    return;
                case 231:
                    this.zzD = zzn(j);
                    return;
                case 241:
                    if (this.zzG) {
                        return;
                    }
                    this.zzF.zzc(j);
                    this.zzG = true;
                    return;
                case 251:
                    this.zzaa = true;
                    return;
                case 16980:
                    if (j == 3) {
                        return;
                    }
                    throw new zzatg("ContentCompAlgo " + j + " not supported");
                case 17029:
                    if (j < 1 || j > 2) {
                        throw new zzatg("DocTypeReadVersion " + j + " not supported");
                    }
                    return;
                case 17143:
                    if (j == 1) {
                        return;
                    }
                    throw new zzatg("EBMLReadVersion " + j + " not supported");
                case 18401:
                    if (j == 5) {
                        return;
                    }
                    throw new zzatg("ContentEncAlgo " + j + " not supported");
                case 18408:
                    if (j == 1) {
                        return;
                    }
                    throw new zzatg("AESSettingsCipherMode " + j + " not supported");
                case 21420:
                    this.zzz = j + this.zzs;
                    return;
                case 21432:
                    int i2 = (int) j;
                    if (i2 == 0) {
                        this.zzw.zzp = 0;
                        return;
                    } else if (i2 == 1) {
                        this.zzw.zzp = 2;
                        return;
                    } else if (i2 == 3) {
                        this.zzw.zzp = 1;
                        return;
                    } else if (i2 != 15) {
                        return;
                    } else {
                        this.zzw.zzp = 3;
                        return;
                    }
                case 21680:
                    this.zzw.zzl = (int) j;
                    return;
                case 21682:
                    this.zzw.zzn = (int) j;
                    return;
                case 21690:
                    this.zzw.zzm = (int) j;
                    return;
                case 21930:
                    this.zzw.zzM = j == 1;
                    return;
                case 22186:
                    this.zzw.zzJ = j;
                    return;
                case 22203:
                    this.zzw.zzK = j;
                    return;
                case 25188:
                    this.zzw.zzH = (int) j;
                    return;
                case 2352003:
                    this.zzw.zzd = (int) j;
                    return;
                case 2807729:
                    this.zzt = j;
                    return;
                default:
                    switch (i) {
                        case 21945:
                            int i3 = (int) j;
                            if (i3 == 1) {
                                this.zzw.zzt = 2;
                                return;
                            } else if (i3 != 2) {
                                return;
                            } else {
                                this.zzw.zzt = 1;
                                return;
                            }
                        case 21946:
                            int i4 = (int) j;
                            if (i4 != 1) {
                                if (i4 == 16) {
                                    this.zzw.zzs = 6;
                                    return;
                                } else if (i4 == 18) {
                                    this.zzw.zzs = 7;
                                    return;
                                } else if (i4 != 6 && i4 != 7) {
                                    return;
                                }
                            }
                            this.zzw.zzs = 3;
                            return;
                        case 21947:
                            zzavx zzavxVar = this.zzw;
                            zzavxVar.zzq = true;
                            int i5 = (int) j;
                            if (i5 == 1) {
                                zzavxVar.zzr = 1;
                                return;
                            } else if (i5 == 9) {
                                zzavxVar.zzr = 6;
                                return;
                            } else if (i5 == 4 || i5 == 5 || i5 == 6 || i5 == 7) {
                                zzavxVar.zzr = 2;
                                return;
                            } else {
                                return;
                            }
                        case 21948:
                            this.zzw.zzu = (int) j;
                            return;
                        case 21949:
                            this.zzw.zzv = (int) j;
                            return;
                        default:
                            return;
                    }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01eb, code lost:
        throw new com.google.android.gms.internal.ads.zzatg("EBML lacing sample size out of range.");
     */
    /* JADX WARN: Removed duplicated region for block: B:95:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x023e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzk(int r20, int r21, com.google.android.gms.internal.ads.zzavf r22) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 650
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzavy.zzk(int, int, com.google.android.gms.internal.ads.zzavf):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb(int i) throws zzatg {
        zzavn zzavmVar;
        zzbam zzbamVar;
        zzbam zzbamVar2;
        int i2;
        int i3 = 0;
        if (i == 160) {
            if (this.zzH != 2) {
                return;
            }
            if (!this.zzaa) {
                this.zzP |= 1;
            }
            zzo((zzavx) this.zzf.get(this.zzN), this.zzI);
            this.zzH = 0;
        } else if (i == 174) {
            String str = this.zzw.zza;
            if ("V_VP8".equals(str) || "V_VP9".equals(str) || "V_MPEG2".equals(str) || "V_MPEG4/ISO/SP".equals(str) || "V_MPEG4/ISO/ASP".equals(str) || "V_MPEG4/ISO/AP".equals(str) || "V_MPEG4/ISO/AVC".equals(str) || "V_MPEGH/ISO/HEVC".equals(str) || "V_MS/VFW/FOURCC".equals(str) || "V_THEORA".equals(str) || "A_OPUS".equals(str) || "A_VORBIS".equals(str) || "A_AAC".equals(str) || "A_MPEG/L2".equals(str) || "A_MPEG/L3".equals(str) || "A_AC3".equals(str) || "A_EAC3".equals(str) || "A_TRUEHD".equals(str) || "A_DTS".equals(str) || "A_DTS/EXPRESS".equals(str) || "A_DTS/LOSSLESS".equals(str) || "A_FLAC".equals(str) || "A_MS/ACM".equals(str) || "A_PCM/INT/LIT".equals(str) || "S_TEXT/UTF8".equals(str) || "S_VOBSUB".equals(str) || "S_HDMV/PGS".equals(str) || "S_DVBSUB".equals(str)) {
                zzavx zzavxVar = this.zzw;
                zzavxVar.zzb(this.zzab, zzavxVar.zzb);
                SparseArray sparseArray = this.zzf;
                zzavx zzavxVar2 = this.zzw;
                sparseArray.put(zzavxVar2.zzb, zzavxVar2);
            }
            this.zzw = null;
        } else if (i == 19899) {
            int i4 = this.zzy;
            if (i4 != -1) {
                long j = this.zzz;
                if (j != -1) {
                    if (i4 == 475249515) {
                        this.zzB = j;
                        return;
                    }
                    return;
                }
            }
            throw new zzatg("Mandatory element SeekID or SeekPosition not found");
        } else if (i == 25152) {
            zzavx zzavxVar3 = this.zzw;
            if (zzavxVar3.zze) {
                if (zzavxVar3.zzg == null) {
                    throw new zzatg("Encrypted Track found but ContentEncKeyID was not found");
                }
                zzavxVar3.zzi = new zzavc(new zzavb(zzaso.zzb, "video/webm", this.zzw.zzg.zzb, false));
            }
        } else if (i == 28032) {
            zzavx zzavxVar4 = this.zzw;
            if (zzavxVar4.zze && zzavxVar4.zzf != null) {
                throw new zzatg("Combining encryption and compression is not supported");
            }
        } else if (i == 357149030) {
            if (this.zzt == C.TIME_UNSET) {
                this.zzt = 1000000L;
            }
            long j2 = this.zzu;
            if (j2 != C.TIME_UNSET) {
                this.zzv = zzn(j2);
            }
        } else if (i == 374648427) {
            if (this.zzf.size() == 0) {
                throw new zzatg("No valid tracks were found");
            }
            this.zzab.zzb();
        } else if (i == 475249515 && !this.zzx) {
            zzavh zzavhVar = this.zzab;
            if (this.zzs == -1 || this.zzv == C.TIME_UNSET || (zzbamVar = this.zzE) == null || zzbamVar.zza() == 0 || (zzbamVar2 = this.zzF) == null || zzbamVar2.zza() != zzbamVar.zza()) {
                this.zzE = null;
                this.zzF = null;
                zzavmVar = new zzavm(this.zzv);
            } else {
                int zza2 = zzbamVar.zza();
                int[] iArr = new int[zza2];
                long[] jArr = new long[zza2];
                long[] jArr2 = new long[zza2];
                long[] jArr3 = new long[zza2];
                for (int i5 = 0; i5 < zza2; i5++) {
                    jArr3[i5] = this.zzE.zzb(i5);
                    jArr[i5] = this.zzs + this.zzF.zzb(i5);
                }
                while (true) {
                    i2 = zza2 - 1;
                    if (i3 >= i2) {
                        break;
                    }
                    int i6 = i3 + 1;
                    iArr[i3] = (int) (jArr[i6] - jArr[i3]);
                    jArr2[i3] = jArr3[i6] - jArr3[i3];
                    i3 = i6;
                }
                iArr[i2] = (int) ((this.zzs + this.zzr) - jArr[i2]);
                jArr2[i2] = this.zzv - jArr3[i2];
                this.zzE = null;
                this.zzF = null;
                zzavmVar = new zzave(iArr, jArr, jArr2, jArr3);
            }
            zzavhVar.zzc(zzavmVar);
            this.zzx = true;
        }
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.util.MimeTypes;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzabh implements zzaaz {
    public final zzgau zza;
    private final int zzb;

    private zzabh(int i, zzgau zzgauVar) {
        this.zzb = i;
        this.zza = zzgauVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static zzabh zzc(int i, zzef zzefVar) {
        String str;
        zzaaz zzabiVar;
        String str2;
        zzgar zzgarVar = new zzgar();
        int zzd = zzefVar.zzd();
        int i2 = -2;
        while (zzefVar.zza() > 8) {
            int zzg = zzefVar.zzg();
            int zzc = zzefVar.zzc() + zzefVar.zzg();
            zzefVar.zzE(zzc);
            if (zzg != 1414744396) {
                zzabi zzabiVar2 = null;
                switch (zzg) {
                    case 1718776947:
                        if (i2 == 2) {
                            zzefVar.zzG(4);
                            int zzg2 = zzefVar.zzg();
                            int zzg3 = zzefVar.zzg();
                            zzefVar.zzG(4);
                            int zzg4 = zzefVar.zzg();
                            switch (zzg4) {
                                case 808802372:
                                case 877677894:
                                case 1145656883:
                                case 1145656920:
                                case 1482049860:
                                case 1684633208:
                                case 2021026148:
                                    str2 = MimeTypes.VIDEO_MP4V;
                                    break;
                                case 826496577:
                                case 828601953:
                                case 875967048:
                                    str2 = "video/avc";
                                    break;
                                case 842289229:
                                    str2 = "video/mp42";
                                    break;
                                case 859066445:
                                    str2 = "video/mp43";
                                    break;
                                case 1196444237:
                                case 1735420525:
                                    str2 = "video/mjpeg";
                                    break;
                                default:
                                    str2 = null;
                                    break;
                            }
                            if (str2 == null) {
                                zzdw.zze("StreamFormatChunk", "Ignoring track with unsupported compression " + zzg4);
                            } else {
                                zzad zzadVar = new zzad();
                                zzadVar.zzX(zzg2);
                                zzadVar.zzF(zzg3);
                                zzadVar.zzS(str2);
                                zzabiVar2 = new zzabi(zzadVar.zzY());
                            }
                        } else if (i2 == 1) {
                            int zzi = zzefVar.zzi();
                            if (zzi == 1) {
                                str = MimeTypes.AUDIO_RAW;
                            } else if (zzi == 85) {
                                str = MimeTypes.AUDIO_MPEG;
                            } else if (zzi == 255) {
                                str = MimeTypes.AUDIO_AAC;
                            } else if (zzi != 8192) {
                                str = zzi != 8193 ? null : MimeTypes.AUDIO_DTS;
                            } else {
                                str = MimeTypes.AUDIO_AC3;
                            }
                            if (str == null) {
                                zzdw.zze("StreamFormatChunk", "Ignoring track with unsupported format tag " + zzi);
                            } else {
                                int zzi2 = zzefVar.zzi();
                                int zzg5 = zzefVar.zzg();
                                zzefVar.zzG(6);
                                int zzn = zzen.zzn(zzefVar.zzo());
                                int zzi3 = zzefVar.zzi();
                                byte[] bArr = new byte[zzi3];
                                zzefVar.zzB(bArr, 0, zzi3);
                                zzad zzadVar2 = new zzad();
                                zzadVar2.zzS(str);
                                zzadVar2.zzw(zzi2);
                                zzadVar2.zzT(zzg5);
                                if (MimeTypes.AUDIO_RAW.equals(str) && zzn != 0) {
                                    zzadVar2.zzN(zzn);
                                }
                                if (MimeTypes.AUDIO_AAC.equals(str) && zzi3 > 0) {
                                    zzadVar2.zzI(zzgau.zzp(bArr));
                                }
                                zzabiVar = new zzabi(zzadVar2.zzY());
                                break;
                            }
                        } else {
                            zzdw.zze("StreamFormatChunk", "Ignoring strf box for unsupported track type: ".concat(zzen.zzO(i2)));
                        }
                        zzabiVar = zzabiVar2;
                        break;
                    case 1751742049:
                        zzabiVar = zzabe.zzb(zzefVar);
                        break;
                    case 1752331379:
                        zzabiVar = zzabf.zzb(zzefVar);
                        break;
                    case 1852994675:
                        zzabiVar = zzabj.zzb(zzefVar);
                        break;
                    default:
                        zzabiVar = zzabiVar2;
                        break;
                }
            } else {
                zzabiVar = zzc(zzefVar.zzg(), zzefVar);
            }
            if (zzabiVar != null) {
                if (zzabiVar.zza() == 1752331379) {
                    int i3 = ((zzabf) zzabiVar).zza;
                    if (i3 == 1935960438) {
                        i2 = 2;
                    } else if (i3 == 1935963489) {
                        i2 = 1;
                    } else if (i3 != 1937012852) {
                        zzdw.zze("AviStreamHeaderChunk", "Found unsupported streamType fourCC: ".concat(String.valueOf(Integer.toHexString(i3))));
                        i2 = -1;
                    } else {
                        i2 = 3;
                    }
                }
                zzgarVar.zze(zzabiVar);
            }
            zzefVar.zzF(zzc);
            zzefVar.zzE(zzd);
        }
        return new zzabh(i, zzgarVar.zzg());
    }

    @Override // com.google.android.gms.internal.ads.zzaaz
    public final int zza() {
        return this.zzb;
    }

    public final zzaaz zzb(Class cls) {
        zzgau zzgauVar = this.zza;
        int size = zzgauVar.size();
        int i = 0;
        while (i < size) {
            zzaaz zzaazVar = (zzaaz) zzgauVar.get(i);
            i++;
            if (zzaazVar.getClass() == cls) {
                return zzaazVar;
            }
        }
        return null;
    }
}

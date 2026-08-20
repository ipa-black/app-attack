package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.util.Pair;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Pattern;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzre {
    public static final /* synthetic */ int zza = 0;
    private static final Pattern zzb = Pattern.compile("^\\D?(\\d+)$");
    private static final HashMap zzc = new HashMap();
    private static int zzd = -1;

    public static int zza() throws zzqy {
        int i;
        int i2 = zzd;
        if (i2 == -1) {
            zzqm zzc2 = zzc("video/avc", false, false);
            if (zzc2 != null) {
                int i3 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : zzc2.zzg()) {
                    int i4 = codecProfileLevel.level;
                    if (i4 == 1 || i4 == 2) {
                        i = 25344;
                    } else {
                        switch (i4) {
                            case 8:
                            case 16:
                            case 32:
                                i = 101376;
                                continue;
                            case 64:
                                i = 202752;
                                continue;
                            case 128:
                            case 256:
                                i = 414720;
                                continue;
                            case 512:
                                i = 921600;
                                continue;
                            case 1024:
                                i = 1310720;
                                continue;
                            case 2048:
                            case 4096:
                                i = 2097152;
                                continue;
                            case 8192:
                                i = 2228224;
                                continue;
                            case 16384:
                                i = 5652480;
                                continue;
                            case 32768:
                            case 65536:
                                i = 9437184;
                                continue;
                            case 131072:
                            case 262144:
                            case 524288:
                                i = 35651584;
                                continue;
                            default:
                                i = -1;
                                continue;
                        }
                    }
                    i3 = Math.max(i, i3);
                }
                i2 = Math.max(i3, zzen.zza >= 21 ? 345600 : 172800);
            } else {
                i2 = 0;
            }
            zzd = i2;
        }
        return i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x02c0 A[Catch: NumberFormatException -> 0x02d0, TRY_LEAVE, TryCatch #2 {NumberFormatException -> 0x02d0, blocks: (B:148:0x026a, B:150:0x027c, B:161:0x0298, B:177:0x02c0), top: B:487:0x026a }] */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0601  */
    /* JADX WARN: Removed duplicated region for block: B:361:0x0610  */
    /* JADX WARN: Removed duplicated region for block: B:416:0x06c3  */
    /* JADX WARN: Removed duplicated region for block: B:417:0x06d6  */
    /* JADX WARN: Removed duplicated region for block: B:453:0x0775  */
    /* JADX WARN: Removed duplicated region for block: B:454:0x0787  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x011e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair zzb(com.google.android.gms.internal.ads.zzaf r19) {
        /*
            Method dump skipped, instructions count: 2476
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzre.zzb(com.google.android.gms.internal.ads.zzaf):android.util.Pair");
    }

    public static zzqm zzc(String str, boolean z, boolean z2) throws zzqy {
        List zzf = zzf(str, false, false);
        if (zzf.isEmpty()) {
            return null;
        }
        return (zzqm) zzf.get(0);
    }

    public static zzqm zzd() throws zzqy {
        return zzc(MimeTypes.AUDIO_RAW, false, false);
    }

    public static String zze(zzaf zzafVar) {
        Pair zzb2;
        if (MimeTypes.AUDIO_E_AC3_JOC.equals(zzafVar.zzm)) {
            return MimeTypes.AUDIO_E_AC3;
        }
        if (!MimeTypes.VIDEO_DOLBY_VISION.equals(zzafVar.zzm) || (zzb2 = zzb(zzafVar)) == null) {
            return null;
        }
        int intValue = ((Integer) zzb2.first).intValue();
        if (intValue == 16 || intValue == 256) {
            return "video/hevc";
        }
        if (intValue == 512) {
            return "video/avc";
        }
        return null;
    }

    public static synchronized List zzf(String str, boolean z, boolean z2) throws zzqy {
        zzqz zzrbVar;
        int i;
        synchronized (zzre.class) {
            zzqw zzqwVar = new zzqw(str, z, z2);
            HashMap hashMap = zzc;
            List list = (List) hashMap.get(zzqwVar);
            if (list != null) {
                return list;
            }
            if (zzen.zza >= 21) {
                zzrbVar = new zzrc(z, z2);
            } else {
                zzrbVar = new zzrb(null);
            }
            ArrayList zzh = zzh(zzqwVar, zzrbVar);
            if (z && zzh.isEmpty() && (i = zzen.zza) >= 21 && i <= 23) {
                zzh = zzh(zzqwVar, new zzrb(null));
                if (!zzh.isEmpty()) {
                    String str2 = ((zzqm) zzh.get(0)).zza;
                    zzdw.zze("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + str2);
                }
            }
            if (MimeTypes.AUDIO_RAW.equals(str)) {
                if (zzen.zza < 26 && zzen.zzb.equals("R9") && zzh.size() == 1 && ((zzqm) zzh.get(0)).zza.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                    zzh.add(zzqm.zzc("OMX.google.raw.decoder", MimeTypes.AUDIO_RAW, MimeTypes.AUDIO_RAW, null, false, true, false, false, false));
                }
                zzi(zzh, new zzrd() { // from class: com.google.android.gms.internal.ads.zzqu
                    @Override // com.google.android.gms.internal.ads.zzrd
                    public final int zza(Object obj) {
                        int i2 = zzre.zza;
                        String str3 = ((zzqm) obj).zza;
                        if (str3.startsWith("OMX.google") || str3.startsWith("c2.android")) {
                            return 1;
                        }
                        return (zzen.zza >= 26 || !str3.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
                    }
                });
            }
            if (zzen.zza < 21 && zzh.size() > 1) {
                String str3 = ((zzqm) zzh.get(0)).zza;
                if ("OMX.SEC.mp3.dec".equals(str3) || "OMX.SEC.MP3.Decoder".equals(str3) || "OMX.brcm.audio.mp3.decoder".equals(str3)) {
                    zzi(zzh, new zzrd() { // from class: com.google.android.gms.internal.ads.zzqv
                        @Override // com.google.android.gms.internal.ads.zzrd
                        public final int zza(Object obj) {
                            int i2 = zzre.zza;
                            return ((zzqm) obj).zza.startsWith("OMX.google") ? 1 : 0;
                        }
                    });
                }
            }
            if (zzen.zza < 32 && zzh.size() > 1 && "OMX.qti.audio.decoder.flac".equals(((zzqm) zzh.get(0)).zza)) {
                zzh.add((zzqm) zzh.remove(0));
            }
            zzgau zzm = zzgau.zzm(zzh);
            hashMap.put(zzqwVar, zzm);
            return zzm;
        }
    }

    public static List zzg(List list, final zzaf zzafVar) {
        ArrayList arrayList = new ArrayList(list);
        zzi(arrayList, new zzrd() { // from class: com.google.android.gms.internal.ads.zzqs
            @Override // com.google.android.gms.internal.ads.zzrd
            public final int zza(Object obj) {
                zzaf zzafVar2 = zzaf.this;
                zzqm zzqmVar = (zzqm) obj;
                int i = zzre.zza;
                try {
                    return !zzqmVar.zzd(zzafVar2) ? 0 : 1;
                } catch (zzqy unused) {
                    return -1;
                }
            }
        });
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:153:0x025b, code lost:
        if (r1.zzb == false) goto L112;
     */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x020c A[Catch: Exception -> 0x02ba, TryCatch #1 {Exception -> 0x02ba, blocks: (B:118:0x01da, B:124:0x01f1, B:130:0x0206, B:132:0x020c, B:137:0x021d, B:139:0x0227, B:149:0x0253, B:140:0x022c, B:142:0x023c, B:144:0x0244, B:133:0x0212), top: B:191:0x01da }] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0212 A[Catch: Exception -> 0x02ba, TryCatch #1 {Exception -> 0x02ba, blocks: (B:118:0x01da, B:124:0x01f1, B:130:0x0206, B:132:0x020c, B:137:0x021d, B:139:0x0227, B:149:0x0253, B:140:0x022c, B:142:0x023c, B:144:0x0244, B:133:0x0212), top: B:191:0x01da }] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0227 A[Catch: Exception -> 0x02ba, TryCatch #1 {Exception -> 0x02ba, blocks: (B:118:0x01da, B:124:0x01f1, B:130:0x0206, B:132:0x020c, B:137:0x021d, B:139:0x0227, B:149:0x0253, B:140:0x022c, B:142:0x023c, B:144:0x0244, B:133:0x0212), top: B:191:0x01da }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x022c A[Catch: Exception -> 0x02ba, TryCatch #1 {Exception -> 0x02ba, blocks: (B:118:0x01da, B:124:0x01f1, B:130:0x0206, B:132:0x020c, B:137:0x021d, B:139:0x0227, B:149:0x0253, B:140:0x022c, B:142:0x023c, B:144:0x0244, B:133:0x0212), top: B:191:0x01da }] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x02c9 A[Catch: Exception -> 0x0317, TRY_ENTER, TryCatch #4 {Exception -> 0x0317, blocks: (B:3:0x0008, B:5:0x001d, B:7:0x0027, B:10:0x0034, B:14:0x0042, B:16:0x0048, B:18:0x004e, B:20:0x0056, B:22:0x005e, B:24:0x0066, B:26:0x006e, B:28:0x0076, B:30:0x007e, B:33:0x0086, B:35:0x008e, B:37:0x0096, B:39:0x009e, B:41:0x00a8, B:43:0x00b2, B:45:0x00bc, B:47:0x00c6, B:49:0x00d0, B:51:0x00da, B:53:0x00e4, B:55:0x00ee, B:58:0x00f6, B:60:0x00fe, B:62:0x0106, B:64:0x0110, B:66:0x011a, B:68:0x0122, B:70:0x012c, B:72:0x0136, B:74:0x013a, B:76:0x0142, B:78:0x014a, B:80:0x0150, B:82:0x0158, B:84:0x0160, B:86:0x0169, B:176:0x02c1, B:179:0x02c9, B:181:0x02cf, B:182:0x02e9, B:183:0x030a, B:89:0x0173, B:90:0x0178, B:92:0x0180, B:95:0x018b, B:97:0x0193, B:100:0x019e, B:102:0x01a6, B:105:0x01b1, B:107:0x01b9, B:110:0x01c4, B:112:0x01cc), top: B:197:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0259 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x02e9 A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList zzh(com.google.android.gms.internal.ads.zzqw r23, com.google.android.gms.internal.ads.zzqz r24) throws com.google.android.gms.internal.ads.zzqy {
        /*
            Method dump skipped, instructions count: 799
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzre.zzh(com.google.android.gms.internal.ads.zzqw, com.google.android.gms.internal.ads.zzqz):java.util.ArrayList");
    }

    private static void zzi(List list, final zzrd zzrdVar) {
        Collections.sort(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zzqt
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                zzrd zzrdVar2 = zzrd.this;
                int i = zzre.zza;
                return zzrdVar2.zza(obj2) - zzrdVar2.zza(obj);
            }
        });
    }

    private static boolean zzj(MediaCodecInfo mediaCodecInfo, String str) {
        if (zzen.zza >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        if (zzbt.zzg(str)) {
            return true;
        }
        String zza2 = zzfxl.zza(mediaCodecInfo.getName());
        if (zza2.startsWith("arc.")) {
            return false;
        }
        if (zza2.startsWith("omx.google.") || zza2.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((zza2.startsWith("omx.sec.") && zza2.contains(".sw.")) || zza2.equals("omx.qcom.video.decoder.hevcswvdec") || zza2.startsWith("c2.android.") || zza2.startsWith("c2.google.")) {
            return true;
        }
        return (zza2.startsWith("omx.") || zza2.startsWith("c2.")) ? false : true;
    }
}

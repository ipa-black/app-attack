package com.google.android.gms.internal.ads;

import android.util.Log;
import com.appnext.base.b.d;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.common.net.HttpHeaders;
import com.ironsource.mediationsdk.IronSourceSegment;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzawq {
    private static final int zza = zzbay.zzg("nam");
    private static final int zzb = zzbay.zzg("trk");
    private static final int zzc = zzbay.zzg("cmt");
    private static final int zzd = zzbay.zzg(d.fk);
    private static final int zze = zzbay.zzg("ART");
    private static final int zzf = zzbay.zzg("too");
    private static final int zzg = zzbay.zzg("alb");
    private static final int zzh = zzbay.zzg("com");
    private static final int zzi = zzbay.zzg("wrt");
    private static final int zzj = zzbay.zzg("lyr");
    private static final int zzk = zzbay.zzg(IronSourceSegment.GENDER);
    private static final int zzl = zzbay.zzg("covr");
    private static final int zzm = zzbay.zzg("gnre");
    private static final int zzn = zzbay.zzg("grp");
    private static final int zzo = zzbay.zzg("disk");
    private static final int zzp = zzbay.zzg("trkn");
    private static final int zzq = zzbay.zzg("tmpo");
    private static final int zzr = zzbay.zzg("cpil");
    private static final int zzs = zzbay.zzg("aART");
    private static final int zzt = zzbay.zzg("sonm");
    private static final int zzu = zzbay.zzg("soal");
    private static final int zzv = zzbay.zzg("soar");
    private static final int zzw = zzbay.zzg("soaa");
    private static final int zzx = zzbay.zzg("soco");
    private static final int zzy = zzbay.zzg("rtng");
    private static final int zzz = zzbay.zzg("pgap");
    private static final int zzA = zzbay.zzg("sosn");
    private static final int zzB = zzbay.zzg("tvsh");
    private static final int zzC = zzbay.zzg(InternalFrame.ID);
    private static final String[] zzD = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", HttpHeaders.TRAILER, "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039 A[Catch: all -> 0x01d3, TryCatch #0 {all -> 0x01d3, blocks: (B:4:0x0020, B:6:0x0025, B:8:0x002b, B:10:0x0032, B:13:0x0039, B:14:0x0040, B:17:0x0049, B:19:0x004d, B:22:0x0057, B:24:0x005b, B:27:0x0065, B:29:0x006b, B:32:0x0075, B:34:0x0079, B:37:0x0083, B:39:0x0088, B:41:0x0094, B:49:0x00b0, B:50:0x00c0, B:51:0x00d2, B:54:0x00db, B:56:0x00df, B:59:0x00e9, B:61:0x00ed, B:64:0x00f7, B:66:0x00fb, B:69:0x0105, B:71:0x0109, B:74:0x0113, B:76:0x0117, B:79:0x0121, B:81:0x0125, B:84:0x012f, B:86:0x0133, B:89:0x013d, B:91:0x0141, B:94:0x014b, B:96:0x014f, B:99:0x0159, B:101:0x015d, B:104:0x0167, B:107:0x016f, B:109:0x0175, B:111:0x0188, B:112:0x018f, B:114:0x0193, B:115:0x019a, B:121:0x01a3, B:122:0x01a9, B:124:0x01b1, B:128:0x01bc, B:187:0x0280, B:134:0x01da, B:136:0x01de, B:138:0x01ea, B:139:0x01fb, B:142:0x020c, B:144:0x0210, B:147:0x0216, B:149:0x021a, B:152:0x0220, B:154:0x0224, B:157:0x022e, B:159:0x0232, B:162:0x023c, B:164:0x0240, B:167:0x024a, B:169:0x024e, B:172:0x0258, B:174:0x025c, B:177:0x0266, B:179:0x026a, B:182:0x0272, B:184:0x0276, B:190:0x0297, B:193:0x02a1), top: B:198:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0040 A[Catch: all -> 0x01d3, TRY_LEAVE, TryCatch #0 {all -> 0x01d3, blocks: (B:4:0x0020, B:6:0x0025, B:8:0x002b, B:10:0x0032, B:13:0x0039, B:14:0x0040, B:17:0x0049, B:19:0x004d, B:22:0x0057, B:24:0x005b, B:27:0x0065, B:29:0x006b, B:32:0x0075, B:34:0x0079, B:37:0x0083, B:39:0x0088, B:41:0x0094, B:49:0x00b0, B:50:0x00c0, B:51:0x00d2, B:54:0x00db, B:56:0x00df, B:59:0x00e9, B:61:0x00ed, B:64:0x00f7, B:66:0x00fb, B:69:0x0105, B:71:0x0109, B:74:0x0113, B:76:0x0117, B:79:0x0121, B:81:0x0125, B:84:0x012f, B:86:0x0133, B:89:0x013d, B:91:0x0141, B:94:0x014b, B:96:0x014f, B:99:0x0159, B:101:0x015d, B:104:0x0167, B:107:0x016f, B:109:0x0175, B:111:0x0188, B:112:0x018f, B:114:0x0193, B:115:0x019a, B:121:0x01a3, B:122:0x01a9, B:124:0x01b1, B:128:0x01bc, B:187:0x0280, B:134:0x01da, B:136:0x01de, B:138:0x01ea, B:139:0x01fb, B:142:0x020c, B:144:0x0210, B:147:0x0216, B:149:0x021a, B:152:0x0220, B:154:0x0224, B:157:0x022e, B:159:0x0232, B:162:0x023c, B:164:0x0240, B:167:0x024a, B:169:0x024e, B:172:0x0258, B:174:0x025c, B:177:0x0266, B:179:0x026a, B:182:0x0272, B:184:0x0276, B:190:0x0297, B:193:0x02a1), top: B:198:0x001e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzaxn zza(com.google.android.gms.internal.ads.zzbar r14) {
        /*
            Method dump skipped, instructions count: 687
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzawq.zza(com.google.android.gms.internal.ads.zzbar):com.google.android.gms.internal.ads.zzaxn");
    }

    private static int zzb(zzbar zzbarVar) {
        zzbarVar.zzw(4);
        if (zzbarVar.zze() == zzawd.zzaH) {
            zzbarVar.zzw(8);
            return zzbarVar.zzg();
        }
        Log.w("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    private static zzaxu zzc(int i, String str, zzbar zzbarVar, boolean z, boolean z2) {
        int zzb2 = zzb(zzbarVar);
        if (z2) {
            zzb2 = Math.min(1, zzb2);
        }
        if (zzb2 < 0) {
            Log.w("MetadataUtil", "Failed to parse uint8 attribute: ".concat(zzawd.zzg(i)));
            return null;
        } else if (z) {
            return new zzaxw(str, null, Integer.toString(zzb2));
        } else {
            return new zzaxs(C.LANGUAGE_UNDETERMINED, str, Integer.toString(zzb2));
        }
    }

    private static zzaxw zzd(int i, String str, zzbar zzbarVar) {
        int zze2 = zzbarVar.zze();
        if (zzbarVar.zze() == zzawd.zzaH && zze2 >= 22) {
            zzbarVar.zzw(10);
            int zzj2 = zzbarVar.zzj();
            if (zzj2 > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(zzj2);
                String sb2 = sb.toString();
                int zzj3 = zzbarVar.zzj();
                if (zzj3 > 0) {
                    sb2 = sb2 + "/" + zzj3;
                }
                return new zzaxw(str, null, sb2);
            }
        }
        Log.w("MetadataUtil", "Failed to parse index/count attribute: ".concat(zzawd.zzg(i)));
        return null;
    }

    private static zzaxw zze(int i, String str, zzbar zzbarVar) {
        int zze2 = zzbarVar.zze();
        if (zzbarVar.zze() == zzawd.zzaH) {
            zzbarVar.zzw(8);
            return new zzaxw(str, null, zzbarVar.zzo(zze2 - 16));
        }
        Log.w("MetadataUtil", "Failed to parse text attribute: ".concat(zzawd.zzg(i)));
        return null;
    }
}

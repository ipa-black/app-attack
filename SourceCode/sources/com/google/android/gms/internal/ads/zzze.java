package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzze implements zzzq {
    private static final int[] zza = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14};
    private static final zzzd zzc = new zzzd(new zzzc() { // from class: com.google.android.gms.internal.ads.zzza
        @Override // com.google.android.gms.internal.ads.zzzc
        public final Constructor zza() {
            if (Boolean.TRUE.equals(Class.forName("androidx.media3.decoder.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
                return Class.forName("androidx.media3.decoder.flac.FlacExtractor").asSubclass(zzzj.class).getConstructor(Integer.TYPE);
            }
            return null;
        }
    });
    private static final zzzd zzd = new zzzd(new zzzc() { // from class: com.google.android.gms.internal.ads.zzzb
        @Override // com.google.android.gms.internal.ads.zzzc
        public final Constructor zza() {
            return Class.forName("androidx.media3.decoder.midi.MidiExtractor").asSubclass(zzzj.class).getConstructor(new Class[0]);
        }
    });

    private static final void zzc(int i, List list) {
        switch (i) {
            case 0:
                list.add(new zzags());
                return;
            case 1:
                list.add(new zzagv());
                return;
            case 2:
                list.add(new zzagy(0));
                return;
            case 3:
                list.add(new zzaay(0));
                return;
            case 4:
                zzzj zza2 = zzc.zza(0);
                if (zza2 != null) {
                    list.add(zza2);
                    return;
                } else {
                    list.add(new zzabp(0));
                    return;
                }
            case 5:
                list.add(new zzabs());
                return;
            case 6:
                list.add(new zzaej(0));
                return;
            case 7:
                list.add(new zzaer(0));
                return;
            case 8:
                list.add(new zzafm(0, null));
                list.add(new zzafr(0));
                return;
            case 9:
                list.add(new zzagg());
                return;
            case 10:
                list.add(new zzaib());
                return;
            case 11:
                list.add(new zzail(1, 0, TsExtractor.DEFAULT_TIMESTAMP_SEARCH_BYTES));
                return;
            case 12:
                list.add(new zzaix());
                return;
            case 13:
            default:
                return;
            case 14:
                list.add(new zzabx());
                return;
            case 15:
                zzzj zza3 = zzd.zza(new Object[0]);
                if (zza3 != null) {
                    list.add(zza3);
                    return;
                }
                return;
            case 16:
                list.add(new zzabd());
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzq
    public final synchronized zzzj[] zza() {
        return zzb(Uri.EMPTY, new HashMap());
    }

    /* JADX WARN: Code restructure failed: missing block: B:211:0x0309, code lost:
        if (r9 == r3) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x030b, code lost:
        zzc(r9, r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0197 A[Catch: all -> 0x032d, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0016, B:8:0x001d, B:113:0x0197, B:114:0x019a, B:212:0x030b, B:213:0x030e, B:215:0x0313, B:218:0x0319, B:219:0x031c, B:220:0x031f, B:117:0x01a3, B:119:0x01ab, B:122:0x01b5, B:125:0x01c0, B:127:0x01c8, B:130:0x01d2, B:133:0x01dd, B:136:0x01e8, B:139:0x01f3, B:141:0x01fb, B:143:0x0203, B:146:0x020d, B:148:0x021b, B:151:0x0225, B:154:0x0230, B:156:0x0238, B:158:0x0246, B:160:0x0254, B:163:0x0264, B:165:0x0272, B:168:0x027c, B:170:0x0284, B:172:0x028c, B:174:0x0294, B:177:0x029d, B:179:0x02a5, B:182:0x02b4, B:184:0x02bc, B:187:0x02c5, B:189:0x02cd, B:192:0x02d6, B:194:0x02de, B:197:0x02e7, B:12:0x003f, B:13:0x0047, B:94:0x016e, B:15:0x004c, B:18:0x0058, B:21:0x0063, B:24:0x006f, B:27:0x007a, B:30:0x0085, B:33:0x0090, B:36:0x009b, B:39:0x00a6, B:42:0x00b2, B:45:0x00be, B:48:0x00ca, B:51:0x00d5, B:54:0x00e0, B:57:0x00eb, B:60:0x00f7, B:63:0x0102, B:66:0x010d, B:69:0x0118, B:72:0x0123, B:75:0x012e, B:78:0x0139, B:81:0x0143, B:84:0x014d, B:87:0x0158, B:90:0x0163), top: B:226:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01a3 A[Catch: all -> 0x032d, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0016, B:8:0x001d, B:113:0x0197, B:114:0x019a, B:212:0x030b, B:213:0x030e, B:215:0x0313, B:218:0x0319, B:219:0x031c, B:220:0x031f, B:117:0x01a3, B:119:0x01ab, B:122:0x01b5, B:125:0x01c0, B:127:0x01c8, B:130:0x01d2, B:133:0x01dd, B:136:0x01e8, B:139:0x01f3, B:141:0x01fb, B:143:0x0203, B:146:0x020d, B:148:0x021b, B:151:0x0225, B:154:0x0230, B:156:0x0238, B:158:0x0246, B:160:0x0254, B:163:0x0264, B:165:0x0272, B:168:0x027c, B:170:0x0284, B:172:0x028c, B:174:0x0294, B:177:0x029d, B:179:0x02a5, B:182:0x02b4, B:184:0x02bc, B:187:0x02c5, B:189:0x02cd, B:192:0x02d6, B:194:0x02de, B:197:0x02e7, B:12:0x003f, B:13:0x0047, B:94:0x016e, B:15:0x004c, B:18:0x0058, B:21:0x0063, B:24:0x006f, B:27:0x007a, B:30:0x0085, B:33:0x0090, B:36:0x009b, B:39:0x00a6, B:42:0x00b2, B:45:0x00be, B:48:0x00ca, B:51:0x00d5, B:54:0x00e0, B:57:0x00eb, B:60:0x00f7, B:63:0x0102, B:66:0x010d, B:69:0x0118, B:72:0x0123, B:75:0x012e, B:78:0x0139, B:81:0x0143, B:84:0x014d, B:87:0x0158, B:90:0x0163), top: B:226:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0313 A[Catch: all -> 0x032d, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0016, B:8:0x001d, B:113:0x0197, B:114:0x019a, B:212:0x030b, B:213:0x030e, B:215:0x0313, B:218:0x0319, B:219:0x031c, B:220:0x031f, B:117:0x01a3, B:119:0x01ab, B:122:0x01b5, B:125:0x01c0, B:127:0x01c8, B:130:0x01d2, B:133:0x01dd, B:136:0x01e8, B:139:0x01f3, B:141:0x01fb, B:143:0x0203, B:146:0x020d, B:148:0x021b, B:151:0x0225, B:154:0x0230, B:156:0x0238, B:158:0x0246, B:160:0x0254, B:163:0x0264, B:165:0x0272, B:168:0x027c, B:170:0x0284, B:172:0x028c, B:174:0x0294, B:177:0x029d, B:179:0x02a5, B:182:0x02b4, B:184:0x02bc, B:187:0x02c5, B:189:0x02cd, B:192:0x02d6, B:194:0x02de, B:197:0x02e7, B:12:0x003f, B:13:0x0047, B:94:0x016e, B:15:0x004c, B:18:0x0058, B:21:0x0063, B:24:0x006f, B:27:0x007a, B:30:0x0085, B:33:0x0090, B:36:0x009b, B:39:0x00a6, B:42:0x00b2, B:45:0x00be, B:48:0x00ca, B:51:0x00d5, B:54:0x00e0, B:57:0x00eb, B:60:0x00f7, B:63:0x0102, B:66:0x010d, B:69:0x0118, B:72:0x0123, B:75:0x012e, B:78:0x0139, B:81:0x0143, B:84:0x014d, B:87:0x0158, B:90:0x0163), top: B:226:0x0001 }] */
    @Override // com.google.android.gms.internal.ads.zzzq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized com.google.android.gms.internal.ads.zzzj[] zzb(android.net.Uri r21, java.util.Map r22) {
        /*
            Method dump skipped, instructions count: 978
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzze.zzb(android.net.Uri, java.util.Map):com.google.android.gms.internal.ads.zzzj[]");
    }
}

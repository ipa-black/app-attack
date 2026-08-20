package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zztf implements zzws, zzrw {
    final /* synthetic */ zztk zza;
    private final Uri zzc;
    private final zzfy zzd;
    private final zzta zze;
    private final zzzm zzf;
    private final zzdg zzg;
    private volatile boolean zzi;
    private long zzk;
    private zzaaq zzm;
    private boolean zzn;
    private final zzaaj zzh = new zzaaj();
    private boolean zzj = true;
    private final long zzb = zzry.zza();
    private zzfc zzl = zzi(0);

    public zztf(zztk zztkVar, Uri uri, zzex zzexVar, zzta zztaVar, zzzm zzzmVar, zzdg zzdgVar) {
        this.zza = zztkVar;
        this.zzc = uri;
        this.zzd = new zzfy(zzexVar);
        this.zze = zztaVar;
        this.zzf = zzzmVar;
        this.zzg = zzdgVar;
    }

    public static /* bridge */ /* synthetic */ long zzb(zztf zztfVar) {
        return zztfVar.zzb;
    }

    public static /* bridge */ /* synthetic */ long zzc(zztf zztfVar) {
        return zztfVar.zzk;
    }

    public static /* bridge */ /* synthetic */ zzfc zzd(zztf zztfVar) {
        return zztfVar.zzl;
    }

    public static /* bridge */ /* synthetic */ zzfy zze(zztf zztfVar) {
        return zztfVar.zzd;
    }

    public static /* bridge */ /* synthetic */ void zzf(zztf zztfVar, long j, long j2) {
        zztfVar.zzh.zza = j;
        zztfVar.zzk = j2;
        zztfVar.zzj = true;
        zztfVar.zzn = false;
    }

    private final zzfc zzi(long j) {
        Map map;
        zzfa zzfaVar = new zzfa();
        zzfaVar.zzd(this.zzc);
        zzfaVar.zzc(j);
        zzfaVar.zza(6);
        map = zztk.zzb;
        zzfaVar.zzb(map);
        return zzfaVar.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzws
    public final void zzg() {
        this.zzi = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:163:0x0082 A[Catch: all -> 0x01eb, TryCatch #7 {all -> 0x01eb, blocks: (B:144:0x000b, B:146:0x001f, B:147:0x0025, B:150:0x003b, B:151:0x0041, B:161:0x0077, B:163:0x0082, B:165:0x008e, B:167:0x0098, B:169:0x00a4, B:171:0x00ae, B:173:0x00ba, B:175:0x00c4, B:177:0x00d6, B:179:0x00e0, B:180:0x00e6, B:190:0x0115, B:191:0x011c, B:193:0x0129, B:195:0x0131, B:197:0x014e, B:183:0x00ee, B:187:0x0105, B:155:0x004b, B:159:0x0065), top: B:263:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0098 A[Catch: all -> 0x01eb, TryCatch #7 {all -> 0x01eb, blocks: (B:144:0x000b, B:146:0x001f, B:147:0x0025, B:150:0x003b, B:151:0x0041, B:161:0x0077, B:163:0x0082, B:165:0x008e, B:167:0x0098, B:169:0x00a4, B:171:0x00ae, B:173:0x00ba, B:175:0x00c4, B:177:0x00d6, B:179:0x00e0, B:180:0x00e6, B:190:0x0115, B:191:0x011c, B:193:0x0129, B:195:0x0131, B:197:0x014e, B:183:0x00ee, B:187:0x0105, B:155:0x004b, B:159:0x0065), top: B:263:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x00ae A[Catch: all -> 0x01eb, TryCatch #7 {all -> 0x01eb, blocks: (B:144:0x000b, B:146:0x001f, B:147:0x0025, B:150:0x003b, B:151:0x0041, B:161:0x0077, B:163:0x0082, B:165:0x008e, B:167:0x0098, B:169:0x00a4, B:171:0x00ae, B:173:0x00ba, B:175:0x00c4, B:177:0x00d6, B:179:0x00e0, B:180:0x00e6, B:190:0x0115, B:191:0x011c, B:193:0x0129, B:195:0x0131, B:197:0x014e, B:183:0x00ee, B:187:0x0105, B:155:0x004b, B:159:0x0065), top: B:263:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x00c4 A[Catch: all -> 0x01eb, TryCatch #7 {all -> 0x01eb, blocks: (B:144:0x000b, B:146:0x001f, B:147:0x0025, B:150:0x003b, B:151:0x0041, B:161:0x0077, B:163:0x0082, B:165:0x008e, B:167:0x0098, B:169:0x00a4, B:171:0x00ae, B:173:0x00ba, B:175:0x00c4, B:177:0x00d6, B:179:0x00e0, B:180:0x00e6, B:190:0x0115, B:191:0x011c, B:193:0x0129, B:195:0x0131, B:197:0x014e, B:183:0x00ee, B:187:0x0105, B:155:0x004b, B:159:0x0065), top: B:263:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x00e0 A[Catch: all -> 0x01eb, TRY_LEAVE, TryCatch #7 {all -> 0x01eb, blocks: (B:144:0x000b, B:146:0x001f, B:147:0x0025, B:150:0x003b, B:151:0x0041, B:161:0x0077, B:163:0x0082, B:165:0x008e, B:167:0x0098, B:169:0x00a4, B:171:0x00ae, B:173:0x00ba, B:175:0x00c4, B:177:0x00d6, B:179:0x00e0, B:180:0x00e6, B:190:0x0115, B:191:0x011c, B:193:0x0129, B:195:0x0131, B:197:0x014e, B:183:0x00ee, B:187:0x0105, B:155:0x004b, B:159:0x0065), top: B:263:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0115 A[Catch: all -> 0x01eb, TryCatch #7 {all -> 0x01eb, blocks: (B:144:0x000b, B:146:0x001f, B:147:0x0025, B:150:0x003b, B:151:0x0041, B:161:0x0077, B:163:0x0082, B:165:0x008e, B:167:0x0098, B:169:0x00a4, B:171:0x00ae, B:173:0x00ba, B:175:0x00c4, B:177:0x00d6, B:179:0x00e0, B:180:0x00e6, B:190:0x0115, B:191:0x011c, B:193:0x0129, B:195:0x0131, B:197:0x014e, B:183:0x00ee, B:187:0x0105, B:155:0x004b, B:159:0x0065), top: B:263:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0129 A[Catch: all -> 0x01eb, TryCatch #7 {all -> 0x01eb, blocks: (B:144:0x000b, B:146:0x001f, B:147:0x0025, B:150:0x003b, B:151:0x0041, B:161:0x0077, B:163:0x0082, B:165:0x008e, B:167:0x0098, B:169:0x00a4, B:171:0x00ae, B:173:0x00ba, B:175:0x00c4, B:177:0x00d6, B:179:0x00e0, B:180:0x00e6, B:190:0x0115, B:191:0x011c, B:193:0x0129, B:195:0x0131, B:197:0x014e, B:183:0x00ee, B:187:0x0105, B:155:0x004b, B:159:0x0065), top: B:263:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0169 A[Catch: all -> 0x01e8, TryCatch #5 {all -> 0x01e8, blocks: (B:199:0x015e, B:201:0x0169, B:202:0x016e, B:204:0x0172), top: B:259:0x015e }] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0172 A[Catch: all -> 0x01e8, TRY_LEAVE, TryCatch #5 {all -> 0x01e8, blocks: (B:199:0x015e, B:201:0x0169, B:202:0x016e, B:204:0x0172), top: B:259:0x015e }] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0185 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:268:0x020b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:269:0x01c6 A[EDGE_INSN: B:269:0x01c6->B:224:0x01c6 ?: BREAK  , SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzws
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzh() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztf.zzh():void");
    }

    @Override // com.google.android.gms.internal.ads.zzrw
    public final void zza(zzef zzefVar) {
        long zzQ;
        long max;
        if (this.zzn) {
            zzQ = this.zza.zzQ(true);
            max = Math.max(zzQ, this.zzk);
        } else {
            max = this.zzk;
        }
        int zza = zzefVar.zza();
        zzaaq zzaaqVar = this.zzm;
        zzaaqVar.getClass();
        zzaao.zzb(zzaaqVar, zzefVar, zza);
        zzaaqVar.zzs(max, 1, zza, 0, null);
        this.zzn = true;
    }
}

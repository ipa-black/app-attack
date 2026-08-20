package com.google.android.gms.measurement.internal;

import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement@@21.2.0 */
/* loaded from: classes4.dex */
public final class zzaa extends zzkh {
    private String zza;
    private Set zzb;
    private Map zzc;
    private Long zzd;
    private Long zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaa(zzkt zzktVar) {
        super(zzktVar);
    }

    private final zzu zzd(Integer num) {
        if (this.zzc.containsKey(num)) {
            return (zzu) this.zzc.get(num);
        }
        zzu zzuVar = new zzu(this, this.zza, null);
        this.zzc.put(num, zzuVar);
        return zzuVar;
    }

    private final boolean zzf(int i, int i2) {
        zzu zzuVar = (zzu) this.zzc.get(Integer.valueOf(i));
        if (zzuVar == null) {
            return false;
        }
        return zzu.zzb(zzuVar).get(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't wrap try/catch for region: R(17:(6:19|20|21|22|23|(20:(7:25|26|27|28|(1:30)(3:514|(1:516)(1:518)|517)|31|(1:34)(1:33))|(1:36)|37|38|39|40|41|42|(3:44|(1:46)|47)(4:478|(6:479|480|481|482|483|(1:486)(1:485))|(1:488)|489)|48|(1:50)(6:287|(6:289|290|291|292|293|(2:(3:295|(1:297)|298)|300)(1:463))(1:477)|307|(10:310|(3:314|(4:317|(5:319|320|(1:322)(1:326)|323|324)(1:327)|325|315)|328)|329|(3:333|(4:336|(3:341|342|343)|344|334)|347)|348|(3:350|(6:353|(2:355|(3:357|358|359))(1:362)|360|361|359|351)|363)|364|(3:373|(8:376|(1:378)|379|(1:381)|382|(3:384|385|386)(1:388)|387|374)|389)|390|308)|396|397)|51|(3:183|(4:186|(10:188|189|(1:191)(1:284)|192|(13:194|195|196|197|198|199|200|201|202|204|205|(3:(9:207|208|209|210|211|(3:213|214|215)(1:258)|216|217|(1:220)(1:219))|(1:222)|223)(2:262|263)|224)(1:283)|225|(4:228|(3:246|247|248)(4:230|231|(2:232|(2:234|(1:236)(2:237|238))(1:245))|(3:240|241|242)(1:244))|243|226)|249|250|251)(1:285)|252|184)|286)|53|54|(3:56|(6:59|(11:61|62|63|64|65|66|67|68|69|(4:(9:71|72|73|74|75|76|(1:78)|79|80)|82|(1:84)|85)(2:137|138)|86)(1:158)|87|(2:88|(2:90|(3:124|125|126)(8:92|(2:93|(4:95|(3:97|(1:99)(1:101)|100)|102|(1:1)(2:106|(1:108)(2:109|110)))(1:123))|117|(1:119)(1:121)|120|112|113|114))(0))|127|57)|159)|160|(9:163|164|165|166|167|168|(2:170|171)(1:173)|172|161)|181|182)(1:522))|39|40|41|42|(0)(0)|48|(0)(0)|51|(0)|53|54|(0)|160|(1:161)|181|182) */
    /* JADX WARN: Can't wrap try/catch for region: R(25:1|(2:2|(2:4|(2:6|7))(2:538|539))|8|(3:10|11|12)|16|(6:19|20|21|22|23|(20:(7:25|26|27|28|(1:30)(3:514|(1:516)(1:518)|517)|31|(1:34)(1:33))|(1:36)|37|38|39|40|41|42|(3:44|(1:46)|47)(4:478|(6:479|480|481|482|483|(1:486)(1:485))|(1:488)|489)|48|(1:50)(6:287|(6:289|290|291|292|293|(2:(3:295|(1:297)|298)|300)(1:463))(1:477)|307|(10:310|(3:314|(4:317|(5:319|320|(1:322)(1:326)|323|324)(1:327)|325|315)|328)|329|(3:333|(4:336|(3:341|342|343)|344|334)|347)|348|(3:350|(6:353|(2:355|(3:357|358|359))(1:362)|360|361|359|351)|363)|364|(3:373|(8:376|(1:378)|379|(1:381)|382|(3:384|385|386)(1:388)|387|374)|389)|390|308)|396|397)|51|(3:183|(4:186|(10:188|189|(1:191)(1:284)|192|(13:194|195|196|197|198|199|200|201|202|204|205|(3:(9:207|208|209|210|211|(3:213|214|215)(1:258)|216|217|(1:220)(1:219))|(1:222)|223)(2:262|263)|224)(1:283)|225|(4:228|(3:246|247|248)(4:230|231|(2:232|(2:234|(1:236)(2:237|238))(1:245))|(3:240|241|242)(1:244))|243|226)|249|250|251)(1:285)|252|184)|286)|53|54|(3:56|(6:59|(11:61|62|63|64|65|66|67|68|69|(4:(9:71|72|73|74|75|76|(1:78)|79|80)|82|(1:84)|85)(2:137|138)|86)(1:158)|87|(2:88|(2:90|(3:124|125|126)(8:92|(2:93|(4:95|(3:97|(1:99)(1:101)|100)|102|(1:1)(2:106|(1:108)(2:109|110)))(1:123))|117|(1:119)(1:121)|120|112|113|114))(0))|127|57)|159)|160|(9:163|164|165|166|167|168|(2:170|171)(1:173)|172|161)|181|182)(1:522))|537|38|39|40|41|42|(0)(0)|48|(0)(0)|51|(0)|53|54|(0)|160|(1:161)|181|182|(5:(0)|(0)|(0)|(0)|(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x02c6, code lost:
        if (r5 != null) goto L302;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x02c8, code lost:
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x02d0, code lost:
        if (r5 != null) goto L302;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x02f5, code lost:
        if (r5 == null) goto L303;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x02f8, code lost:
        com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r1);
        com.google.android.gms.common.internal.Preconditions.checkNotNull(r13);
        r1 = new androidx.collection.ArrayMap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0307, code lost:
        if (r13.isEmpty() == false) goto L398;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0309, code lost:
        r21 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x030d, code lost:
        r3 = r13.keySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0319, code lost:
        if (r3.hasNext() == false) goto L462;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x031b, code lost:
        r4 = ((java.lang.Integer) r3.next()).intValue();
        r5 = java.lang.Integer.valueOf(r4);
        r6 = (com.google.android.gms.internal.measurement.zzgi) r13.get(r5);
        r7 = (java.util.List) r0.get(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0335, code lost:
        if (r7 == null) goto L461;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x033b, code lost:
        if (r7.isEmpty() == false) goto L405;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x033f, code lost:
        r17 = r0;
        r0 = r63.zzf.zzu().zzq(r6.zzk(), r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0353, code lost:
        if (r0.isEmpty() != false) goto L407;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0355, code lost:
        r5 = (com.google.android.gms.internal.measurement.zzgh) r6.zzby();
        r5.zzf();
        r5.zzb(r0);
        r19 = r3;
        r0 = r63.zzf.zzu().zzq(r6.zzn(), r7);
        r5.zzh();
        r5.zzd(r0);
        com.google.android.gms.internal.measurement.zzoc.zzc();
        r21 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0389, code lost:
        if (r63.zzt.zzf().zzs(null, com.google.android.gms.measurement.internal.zzdu.zzas) == false) goto L439;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x038b, code lost:
        r0 = new java.util.ArrayList();
        r3 = r6.zzj().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x039c, code lost:
        if (r3.hasNext() == false) goto L423;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x039e, code lost:
        r8 = (com.google.android.gms.internal.measurement.zzfr) r3.next();
        r23 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x03b4, code lost:
        if (r7.contains(java.lang.Integer.valueOf(r8.zza())) != false) goto L422;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x03b6, code lost:
        r0.add(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x03b9, code lost:
        r3 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x03bd, code lost:
        r5.zze();
        r5.zza(r0);
        r0 = new java.util.ArrayList();
        r3 = r6.zzm().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x03d4, code lost:
        if (r3.hasNext() == false) goto L434;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x03d6, code lost:
        r6 = (com.google.android.gms.internal.measurement.zzgk) r3.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x03e8, code lost:
        if (r7.contains(java.lang.Integer.valueOf(r6.zzb())) != false) goto L433;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x03ea, code lost:
        r0.add(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x03ee, code lost:
        r5.zzg();
        r5.zzc(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x03f5, code lost:
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x03fa, code lost:
        if (r0 >= r6.zza()) goto L448;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x040c, code lost:
        if (r7.contains(java.lang.Integer.valueOf(r6.zze(r0).zza())) == false) goto L447;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x040e, code lost:
        r5.zzi(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0411, code lost:
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0414, code lost:
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0419, code lost:
        if (r0 >= r6.zzc()) goto L458;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x042b, code lost:
        if (r7.contains(java.lang.Integer.valueOf(r6.zzi(r0).zzb())) == false) goto L457;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x042d, code lost:
        r5.zzj(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0430, code lost:
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0433, code lost:
        r1.put(java.lang.Integer.valueOf(r4), (com.google.android.gms.internal.measurement.zzgi) r5.zzaC());
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0441, code lost:
        r0 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0445, code lost:
        r17 = r0;
        r19 = r3;
        r21 = r8;
        r1.put(r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x044e, code lost:
        r0 = r17;
        r3 = r19;
        r8 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0456, code lost:
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x0785, code lost:
        if (r5 != null) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x0787, code lost:
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x07b9, code lost:
        if (r5 == null) goto L224;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x092e, code lost:
        if (r9 != null) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x0930, code lost:
        r9.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x0957, code lost:
        if (r9 != null) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:409:0x0a76, code lost:
        if (r8 != false) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0156, code lost:
        if (r5 != null) goto L524;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0158, code lost:
        r5.close();
        r4 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x017a, code lost:
        if (r5 == null) goto L537;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0228, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0229, code lost:
        r20 = "audience_id";
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x022c, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x022d, code lost:
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0230, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0231, code lost:
        r20 = "audience_id";
        r4 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:172:0x045a  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x060d  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x086f  */
    /* JADX WARN: Removed duplicated region for block: B:415:0x0a9e  */
    /* JADX WARN: Removed duplicated region for block: B:432:0x0b36  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01bd A[Catch: SQLiteException -> 0x0228, all -> 0x0b32, TRY_LEAVE, TryCatch #13 {SQLiteException -> 0x0228, blocks: (B:61:0x01b7, B:63:0x01bd, B:67:0x01cb, B:68:0x01d0, B:69:0x01da, B:70:0x01ea, B:72:0x01f7), top: B:452:0x01b7 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01cb A[Catch: SQLiteException -> 0x0228, all -> 0x0b32, TRY_ENTER, TryCatch #13 {SQLiteException -> 0x0228, blocks: (B:61:0x01b7, B:63:0x01bd, B:67:0x01cb, B:68:0x01d0, B:69:0x01da, B:70:0x01ea, B:72:0x01f7), top: B:452:0x01b7 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x025d  */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v59, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r5v6, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r5v60 */
    /* JADX WARN: Type inference failed for: r5v61, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v9, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List zza(java.lang.String r64, java.util.List r65, java.util.List r66, java.lang.Long r67, java.lang.Long r68) {
        /*
            Method dump skipped, instructions count: 2874
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzaa.zza(java.lang.String, java.util.List, java.util.List, java.lang.Long, java.lang.Long):java.util.List");
    }

    @Override // com.google.android.gms.measurement.internal.zzkh
    protected final boolean zzb() {
        return false;
    }
}

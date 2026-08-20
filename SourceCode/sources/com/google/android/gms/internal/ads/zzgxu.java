package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgxu {
    private static final zzgxu zzb = new zzgxu(true);
    final zzhat zza = new zzhaj(16);
    private boolean zzc;
    private boolean zzd;

    private zzgxu() {
    }

    public static zzgxu zza() {
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void zzd(com.google.android.gms.internal.ads.zzgxt r2, java.lang.Object r3) {
        /*
            com.google.android.gms.internal.ads.zzhbn r0 = r2.zzb()
            com.google.android.gms.internal.ads.zzgyn.zze(r3)
            com.google.android.gms.internal.ads.zzhbn r1 = com.google.android.gms.internal.ads.zzhbn.DOUBLE
            com.google.android.gms.internal.ads.zzhbo r1 = com.google.android.gms.internal.ads.zzhbo.INT
            com.google.android.gms.internal.ads.zzhbo r0 = r0.zza()
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto L41;
                case 1: goto L3e;
                case 2: goto L3b;
                case 3: goto L38;
                case 4: goto L35;
                case 5: goto L32;
                case 6: goto L29;
                case 7: goto L20;
                case 8: goto L17;
                default: goto L16;
            }
        L16:
            goto L46
        L17:
            boolean r0 = r3 instanceof com.google.android.gms.internal.ads.zzgzn
            if (r0 != 0) goto L45
            boolean r0 = r3 instanceof com.google.android.gms.internal.ads.zzgys
            if (r0 == 0) goto L46
            goto L45
        L20:
            boolean r0 = r3 instanceof java.lang.Integer
            if (r0 != 0) goto L45
            boolean r0 = r3 instanceof com.google.android.gms.internal.ads.zzgyf
            if (r0 == 0) goto L46
            goto L45
        L29:
            boolean r0 = r3 instanceof com.google.android.gms.internal.ads.zzgwv
            if (r0 != 0) goto L45
            boolean r0 = r3 instanceof byte[]
            if (r0 == 0) goto L46
            goto L45
        L32:
            boolean r0 = r3 instanceof java.lang.String
            goto L43
        L35:
            boolean r0 = r3 instanceof java.lang.Boolean
            goto L43
        L38:
            boolean r0 = r3 instanceof java.lang.Double
            goto L43
        L3b:
            boolean r0 = r3 instanceof java.lang.Float
            goto L43
        L3e:
            boolean r0 = r3 instanceof java.lang.Long
            goto L43
        L41:
            boolean r0 = r3 instanceof java.lang.Integer
        L43:
            if (r0 == 0) goto L46
        L45:
            return
        L46:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            int r1 = r2.zza()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            com.google.android.gms.internal.ads.zzhbn r2 = r2.zzb()
            com.google.android.gms.internal.ads.zzhbo r2 = r2.zza()
            java.lang.Class r3 = r3.getClass()
            java.lang.String r3 = r3.getName()
            java.lang.Object[] r2 = new java.lang.Object[]{r1, r2, r3}
            java.lang.String r3 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            java.lang.String r2 = java.lang.String.format(r3, r2)
            r0.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgxu.zzd(com.google.android.gms.internal.ads.zzgxt, java.lang.Object):void");
    }

    public final /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzgxu zzgxuVar = new zzgxu();
        for (int i = 0; i < this.zza.zzb(); i++) {
            Map.Entry zzg = this.zza.zzg(i);
            zzgxuVar.zzc((zzgxt) zzg.getKey(), zzg.getValue());
        }
        for (Map.Entry entry : this.zza.zzc()) {
            zzgxuVar.zzc((zzgxt) entry.getKey(), entry.getValue());
        }
        zzgxuVar.zzd = this.zzd;
        return zzgxuVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzgxu) {
            return this.zza.equals(((zzgxu) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final void zzb() {
        if (this.zzc) {
            return;
        }
        for (int i = 0; i < this.zza.zzb(); i++) {
            Map.Entry zzg = this.zza.zzg(i);
            if (zzg.getValue() instanceof zzgyd) {
                ((zzgyd) zzg.getValue()).zzaQ();
            }
        }
        this.zza.zza();
        this.zzc = true;
    }

    public final void zzc(zzgxt zzgxtVar, Object obj) {
        if (zzgxtVar.zzc()) {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                zzd(zzgxtVar, arrayList.get(i));
            }
            obj = arrayList;
        } else {
            zzd(zzgxtVar, obj);
        }
        if (obj instanceof zzgys) {
            this.zzd = true;
        }
        this.zza.put(zzgxtVar, obj);
    }

    private zzgxu(boolean z) {
        zzb();
        zzb();
    }
}

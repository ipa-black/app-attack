package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfpk {
    private final zzeoj zza;
    private final String zzb;
    private final String zzc;
    private final String zzd;
    private final Context zze;
    private final zzfiy zzf;
    private final zzfiz zzg;
    private final Clock zzh;
    private final zzapj zzi;

    public zzfpk(zzeoj zzeojVar, zzchu zzchuVar, String str, String str2, Context context, zzfiy zzfiyVar, zzfiz zzfizVar, Clock clock, zzapj zzapjVar) {
        this.zza = zzeojVar;
        this.zzb = zzchuVar.zza;
        this.zzc = str;
        this.zzd = str2;
        this.zze = context;
        this.zzf = zzfiyVar;
        this.zzg = zzfizVar;
        this.zzh = clock;
        this.zzi = zzapjVar;
    }

    public static final List zzf(int i, int i2, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(zzh((String) it.next(), "@gw_mpe@", "2." + i2));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String zzg(String str) {
        return TextUtils.isEmpty(str) ? "" : zzchn.zzl() ? "fakeForAdDebugLog" : str;
    }

    private static String zzh(String str, String str2, String str3) {
        if (true == TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        return str.replaceAll(str2, str3);
    }

    public final List zzc(zzfix zzfixVar, zzfil zzfilVar, List list) {
        return zzd(zzfixVar, zzfilVar, false, "", "", list);
    }

    public final List zzd(zzfix zzfixVar, zzfil zzfilVar, boolean z, String str, String str2, List list) {
        ArrayList arrayList = new ArrayList();
        String str3 = true != z ? "0" : IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String zzh = zzh(zzh(zzh((String) it.next(), "@gw_adlocid@", zzfixVar.zza.zza.zzf), "@gw_adnetrefresh@", str3), "@gw_sdkver@", this.zzb);
            if (zzfilVar != null) {
                zzh = zzcfv.zzc(zzh(zzh(zzh(zzh, "@gw_qdata@", zzfilVar.zzz), "@gw_adnetid@", zzfilVar.zzy), "@gw_allocid@", zzfilVar.zzx), this.zze, zzfilVar.zzX);
            }
            String zzh2 = zzh(zzh(zzh(zzh, "@gw_adnetstatus@", this.zza.zzf()), "@gw_seqnum@", this.zzc), "@gw_sessid@", this.zzd);
            boolean z2 = false;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcZ)).booleanValue() && !TextUtils.isEmpty(str)) {
                z2 = true;
            }
            boolean z3 = !TextUtils.isEmpty(str2);
            if (!z2) {
                if (z3) {
                    z3 = true;
                } else {
                    arrayList.add(zzh2);
                }
            }
            if (this.zzi.zzf(Uri.parse(zzh2))) {
                Uri.Builder buildUpon = Uri.parse(zzh2).buildUpon();
                if (z2) {
                    buildUpon = buildUpon.appendQueryParameter("ms", str);
                }
                if (z3) {
                    buildUpon = buildUpon.appendQueryParameter("attok", str2);
                }
                zzh2 = buildUpon.build().toString();
            }
            arrayList.add(zzh2);
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x005f A[LOOP:0: B:13:0x0059->B:15:0x005f, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List zze(com.google.android.gms.internal.ads.zzfil r10, java.util.List r11, com.google.android.gms.internal.ads.zzccr r12) {
        /*
            r9 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            com.google.android.gms.common.util.Clock r1 = r9.zzh
            long r1 = r1.currentTimeMillis()
            java.lang.String r3 = r12.zzc()     // Catch: android.os.RemoteException -> La8
            int r12 = r12.zzb()     // Catch: android.os.RemoteException -> La8
            java.lang.String r12 = java.lang.Integer.toString(r12)     // Catch: android.os.RemoteException -> La8
            com.google.android.gms.internal.ads.zzbjb r4 = com.google.android.gms.internal.ads.zzbjj.zzda
            com.google.android.gms.internal.ads.zzbjh r5 = com.google.android.gms.ads.internal.client.zzba.zzc()
            java.lang.Object r4 = r5.zzb(r4)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L35
            com.google.android.gms.internal.ads.zzfiz r4 = r9.zzg
            if (r4 != 0) goto L32
            com.google.android.gms.internal.ads.zzfya r4 = com.google.android.gms.internal.ads.zzfya.zzc()
            goto L3b
        L32:
            com.google.android.gms.internal.ads.zzfiy r4 = r4.zza
            goto L37
        L35:
            com.google.android.gms.internal.ads.zzfiy r4 = r9.zzf
        L37:
            com.google.android.gms.internal.ads.zzfya r4 = com.google.android.gms.internal.ads.zzfya.zzd(r4)
        L3b:
            com.google.android.gms.internal.ads.zzfpi r5 = new com.google.android.gms.internal.ads.zzfxt() { // from class: com.google.android.gms.internal.ads.zzfpi
                static {
                    /*
                        com.google.android.gms.internal.ads.zzfpi r0 = new com.google.android.gms.internal.ads.zzfpi
                        r0.<init>()
                        
                        // error: 0x0005: SPUT  (r0 I:com.google.android.gms.internal.ads.zzfpi) com.google.android.gms.internal.ads.zzfpi.zza com.google.android.gms.internal.ads.zzfpi
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfpi.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfpi.<init>():void");
                }

                @Override // com.google.android.gms.internal.ads.zzfxt
                public final java.lang.Object apply(java.lang.Object r1) {
                    /*
                        r0 = this;
                        com.google.android.gms.internal.ads.zzfiy r1 = (com.google.android.gms.internal.ads.zzfiy) r1
                        java.lang.String r1 = com.google.android.gms.internal.ads.zzfpk.zza(r1)
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfpi.apply(java.lang.Object):java.lang.Object");
                }
            }
            com.google.android.gms.internal.ads.zzfya r5 = r4.zza(r5)
            java.lang.String r6 = ""
            java.lang.Object r5 = r5.zzb(r6)
            java.lang.String r5 = (java.lang.String) r5
            com.google.android.gms.internal.ads.zzfpj r7 = new com.google.android.gms.internal.ads.zzfxt() { // from class: com.google.android.gms.internal.ads.zzfpj
                static {
                    /*
                        com.google.android.gms.internal.ads.zzfpj r0 = new com.google.android.gms.internal.ads.zzfpj
                        r0.<init>()
                        
                        // error: 0x0005: SPUT  (r0 I:com.google.android.gms.internal.ads.zzfpj) com.google.android.gms.internal.ads.zzfpj.zza com.google.android.gms.internal.ads.zzfpj
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfpj.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfpj.<init>():void");
                }

                @Override // com.google.android.gms.internal.ads.zzfxt
                public final java.lang.Object apply(java.lang.Object r1) {
                    /*
                        r0 = this;
                        com.google.android.gms.internal.ads.zzfiy r1 = (com.google.android.gms.internal.ads.zzfiy) r1
                        java.lang.String r1 = com.google.android.gms.internal.ads.zzfpk.zzb(r1)
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfpj.apply(java.lang.Object):java.lang.Object");
                }
            }
            com.google.android.gms.internal.ads.zzfya r4 = r4.zza(r7)
            java.lang.Object r4 = r4.zzb(r6)
            java.lang.String r4 = (java.lang.String) r4
            java.util.Iterator r11 = r11.iterator()
        L59:
            boolean r6 = r11.hasNext()
            if (r6 == 0) goto La7
            java.lang.Object r6 = r11.next()
            java.lang.String r6 = (java.lang.String) r6
            java.lang.String r7 = "@gw_rwd_userid@"
            java.lang.String r8 = android.net.Uri.encode(r5)
            java.lang.String r6 = zzh(r6, r7, r8)
            java.lang.String r7 = "@gw_rwd_custom_data@"
            java.lang.String r8 = android.net.Uri.encode(r4)
            java.lang.String r6 = zzh(r6, r7, r8)
            java.lang.String r7 = "@gw_tmstmp@"
            java.lang.String r8 = java.lang.Long.toString(r1)
            java.lang.String r6 = zzh(r6, r7, r8)
            java.lang.String r7 = "@gw_rwd_itm@"
            java.lang.String r8 = android.net.Uri.encode(r3)
            java.lang.String r6 = zzh(r6, r7, r8)
            java.lang.String r7 = "@gw_rwd_amt@"
            java.lang.String r6 = zzh(r6, r7, r12)
            java.lang.String r7 = "@gw_sdkver@"
            java.lang.String r8 = r9.zzb
            java.lang.String r6 = zzh(r6, r7, r8)
            android.content.Context r7 = r9.zze
            boolean r8 = r10.zzX
            java.lang.String r6 = com.google.android.gms.internal.ads.zzcfv.zzc(r6, r7, r8)
            r0.add(r6)
            goto L59
        La7:
            return r0
        La8:
            r10 = move-exception
            java.lang.String r11 = "Unable to determine award type and amount."
            com.google.android.gms.ads.internal.util.zze.zzh(r11, r10)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfpk.zze(com.google.android.gms.internal.ads.zzfil, java.util.List, com.google.android.gms.internal.ads.zzccr):java.util.List");
    }
}

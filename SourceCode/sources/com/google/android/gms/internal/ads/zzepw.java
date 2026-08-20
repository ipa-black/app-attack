package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.Iterator;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzepw implements zzekq {
    private final zzeks zza;
    private final zzekx zzb;
    private final zzfnj zzc;
    private final zzgfc zzd;

    public zzepw(zzfnj zzfnjVar, zzgfc zzgfcVar, zzeks zzeksVar, zzekx zzekxVar) {
        this.zzc = zzfnjVar;
        this.zzd = zzgfcVar;
        this.zzb = zzekxVar;
        this.zza = zzeksVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final String zze(String str, int i) {
        return "Error from: " + str + ", code: " + i;
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final zzgfb zza(final zzfix zzfixVar, final zzfil zzfilVar) {
        final zzekt zzektVar;
        Iterator it = zzfilVar.zzu.iterator();
        while (true) {
            if (!it.hasNext()) {
                zzektVar = null;
                break;
            }
            try {
                zzektVar = this.zza.zza((String) it.next(), zzfilVar.zzw);
                break;
            } catch (zzfjl unused) {
            }
        }
        if (zzektVar == null) {
            return zzger.zzh(new zzeny("Unable to instantiate mediation adapter class."));
        }
        zzcig zzcigVar = new zzcig();
        zzektVar.zzc.zza(new zzepv(this, zzektVar, zzcigVar));
        if (zzfilVar.zzN) {
            Bundle bundle = zzfixVar.zza.zza.zzd.zzm;
            Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
            if (bundle2 == null) {
                bundle2 = new Bundle();
                bundle.putBundle(AdMobAdapter.class.getName(), bundle2);
            }
            bundle2.putBoolean("render_test_ad_label", true);
        }
        zzfnj zzfnjVar = this.zzc;
        return zzfmt.zzd(new zzfmn() { // from class: com.google.android.gms.internal.ads.zzept
            @Override // com.google.android.gms.internal.ads.zzfmn
            public final void zza() {
                zzepw.this.zzd(zzfixVar, zzfilVar, zzektVar);
            }
        }, this.zzd, zzfnd.ADAPTER_LOAD_AD_SYN, zzfnjVar).zzb(zzfnd.ADAPTER_LOAD_AD_ACK).zzd(zzcigVar).zzb(zzfnd.ADAPTER_WRAP_ADAPTER).zze(new zzfmm() { // from class: com.google.android.gms.internal.ads.zzepu
            @Override // com.google.android.gms.internal.ads.zzfmm
            public final Object zza(Object obj) {
                return zzepw.this.zzc(zzfixVar, zzfilVar, zzektVar, (Void) obj);
            }
        }).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final boolean zzb(zzfix zzfixVar, zzfil zzfilVar) {
        return !zzfilVar.zzu.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object zzc(zzfix zzfixVar, zzfil zzfilVar, zzekt zzektVar, Void r4) throws Exception {
        return this.zzb.zza(zzfixVar, zzfilVar, zzektVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzd(zzfix zzfixVar, zzfil zzfilVar, zzekt zzektVar) throws Exception {
        this.zzb.zzb(zzfixVar, zzfilVar, zzektVar);
    }
}

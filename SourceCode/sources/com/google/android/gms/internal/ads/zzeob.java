package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzeob implements zzekq {
    private static Bundle zzd(Bundle bundle) {
        return bundle == null ? new Bundle() : new Bundle(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final zzgfb zza(zzfix zzfixVar, zzfil zzfilVar) {
        String optString = zzfilVar.zzw.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, "");
        zzfjg zzfjgVar = zzfixVar.zza.zza;
        zzfje zzfjeVar = new zzfje();
        zzfjeVar.zzp(zzfjgVar);
        zzfjeVar.zzs(optString);
        Bundle zzd = zzd(zzfjgVar.zzd.zzm);
        Bundle zzd2 = zzd(zzd.getBundle("com.google.ads.mediation.admob.AdMobAdapter"));
        zzd2.putInt("gw", 1);
        String optString2 = zzfilVar.zzw.optString("mad_hac", null);
        if (optString2 != null) {
            zzd2.putString("mad_hac", optString2);
        }
        String optString3 = zzfilVar.zzw.optString("adJson", null);
        if (optString3 != null) {
            zzd2.putString("_ad", optString3);
        }
        zzd2.putBoolean("_noRefresh", true);
        Iterator<String> keys = zzfilVar.zzE.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString4 = zzfilVar.zzE.optString(next, null);
            if (next != null) {
                zzd2.putString(next, optString4);
            }
        }
        zzd.putBundle("com.google.ads.mediation.admob.AdMobAdapter", zzd2);
        com.google.android.gms.ads.internal.client.zzl zzlVar = zzfjgVar.zzd;
        zzfjeVar.zzE(new com.google.android.gms.ads.internal.client.zzl(zzlVar.zza, zzlVar.zzb, zzd2, zzlVar.zzd, zzlVar.zze, zzlVar.zzf, zzlVar.zzg, zzlVar.zzh, zzlVar.zzi, zzlVar.zzj, zzlVar.zzk, zzlVar.zzl, zzd, zzlVar.zzn, zzlVar.zzo, zzlVar.zzp, zzlVar.zzq, zzlVar.zzr, zzlVar.zzs, zzlVar.zzt, zzlVar.zzu, zzlVar.zzv, zzlVar.zzw, zzlVar.zzx));
        zzfjg zzG = zzfjeVar.zzG();
        Bundle bundle = new Bundle();
        zzfio zzfioVar = zzfixVar.zzb.zzb;
        Bundle bundle2 = new Bundle();
        bundle2.putStringArrayList("nofill_urls", new ArrayList<>(zzfioVar.zza));
        bundle2.putInt("refresh_interval", zzfioVar.zzc);
        bundle2.putString("gws_query_id", zzfioVar.zzb);
        bundle.putBundle("parent_common_config", bundle2);
        String str = zzfixVar.zza.zza.zzf;
        Bundle bundle3 = new Bundle();
        bundle3.putString("initial_ad_unit_id", str);
        bundle3.putString("allocation_id", zzfilVar.zzx);
        bundle3.putStringArrayList("click_urls", new ArrayList<>(zzfilVar.zzc));
        bundle3.putStringArrayList("imp_urls", new ArrayList<>(zzfilVar.zzd));
        bundle3.putStringArrayList("manual_tracking_urls", new ArrayList<>(zzfilVar.zzq));
        bundle3.putStringArrayList("fill_urls", new ArrayList<>(zzfilVar.zzn));
        bundle3.putStringArrayList("video_start_urls", new ArrayList<>(zzfilVar.zzh));
        bundle3.putStringArrayList("video_reward_urls", new ArrayList<>(zzfilVar.zzi));
        bundle3.putStringArrayList("video_complete_urls", new ArrayList<>(zzfilVar.zzj));
        bundle3.putString("transaction_id", zzfilVar.zzk);
        bundle3.putString("valid_from_timestamp", zzfilVar.zzl);
        bundle3.putBoolean("is_closable_area_disabled", zzfilVar.zzQ);
        if (zzfilVar.zzm != null) {
            Bundle bundle4 = new Bundle();
            bundle4.putInt("rb_amount", zzfilVar.zzm.zzb);
            bundle4.putString("rb_type", zzfilVar.zzm.zza);
            bundle3.putParcelableArray("rewards", new Bundle[]{bundle4});
        }
        bundle.putBundle("parent_ad_config", bundle3);
        return zzc(zzG, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final boolean zzb(zzfix zzfixVar, zzfil zzfilVar) {
        return !TextUtils.isEmpty(zzfilVar.zzw.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, ""));
    }

    protected abstract zzgfb zzc(zzfjg zzfjgVar, Bundle bundle);
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import java.util.ArrayList;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzejk extends zzejl {
    private static final SparseArray zzb;
    private final Context zzc;
    private final zzddt zzd;
    private final TelephonyManager zze;
    private final zzejc zzf;
    private int zzg;

    static {
        SparseArray sparseArray = new SparseArray();
        zzb = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), zzbhj.CONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.AUTHENTICATING.ordinal(), zzbhj.CONNECTING);
        sparseArray.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), zzbhj.CONNECTING);
        sparseArray.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), zzbhj.CONNECTING);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), zzbhj.DISCONNECTING);
        sparseArray.put(NetworkInfo.DetailedState.BLOCKED.ordinal(), zzbhj.DISCONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), zzbhj.DISCONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.FAILED.ordinal(), zzbhj.DISCONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.IDLE.ordinal(), zzbhj.DISCONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.SCANNING.ordinal(), zzbhj.DISCONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), zzbhj.SUSPENDED);
        sparseArray.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), zzbhj.CONNECTING);
        sparseArray.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), zzbhj.CONNECTING);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzejk(Context context, zzddt zzddtVar, zzejc zzejcVar, zzeiy zzeiyVar, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        super(zzeiyVar, zzgVar);
        this.zzc = context;
        this.zzd = zzddtVar;
        this.zzf = zzejcVar;
        this.zze = (TelephonyManager) context.getSystemService("phone");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzbha zza(zzejk zzejkVar, Bundle bundle) {
        zzbgt zza = zzbha.zza();
        int i = bundle.getInt("cnt", -2);
        int i2 = bundle.getInt("gnt", 0);
        int i3 = 2;
        if (i == -1) {
            zzejkVar.zzg = 2;
        } else {
            zzejkVar.zzg = 1;
            if (i == 0) {
                zza.zzb(2);
            } else if (i == 1) {
                zza.zzb(3);
            } else {
                zza.zzb(1);
            }
            switch (i2) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    break;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    i3 = 3;
                    break;
                case 13:
                    i3 = 5;
                    break;
                default:
                    i3 = 1;
                    break;
            }
            zza.zza(i3);
        }
        return (zzbha) zza.zzak();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzbhj zzb(zzejk zzejkVar, Bundle bundle) {
        return (zzbhj) zzb.get(zzfjr.zza(zzfjr.zza(bundle, "device"), "network").getInt("active_network_state", -1), zzbhj.UNSPECIFIED);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ byte[] zze(zzejk zzejkVar, boolean z, ArrayList arrayList, zzbha zzbhaVar, zzbhj zzbhjVar) {
        zzbhe zzg = zzbhf.zzg();
        zzg.zza(arrayList);
        zzg.zzi(zzg(Settings.Global.getInt(zzejkVar.zzc.getContentResolver(), "airplane_mode_on", 0) != 0));
        zzg.zzj(com.google.android.gms.ads.internal.zzt.zzq().zzi(zzejkVar.zzc, zzejkVar.zze));
        zzg.zzf(zzejkVar.zzf.zze());
        zzg.zze(zzejkVar.zzf.zzb());
        zzg.zzb(zzejkVar.zzf.zza());
        zzg.zzc(zzbhjVar);
        zzg.zzd(zzbhaVar);
        zzg.zzk(zzejkVar.zzg);
        zzg.zzl(zzg(z));
        zzg.zzh(zzejkVar.zzf.zzd());
        zzg.zzg(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis());
        zzg.zzm(zzg(Settings.Global.getInt(zzejkVar.zzc.getContentResolver(), "wifi_on", 0) != 0));
        return ((zzbhf) zzg.zzak()).zzaw();
    }

    private static final int zzg(boolean z) {
        return z ? 2 : 1;
    }

    public final void zzd(boolean z) {
        zzger.zzr(this.zzd.zzb(), new zzejj(this, z), zzcib.zzf);
    }
}

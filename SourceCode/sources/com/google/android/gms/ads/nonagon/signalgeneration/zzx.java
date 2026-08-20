package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbjj;
import com.google.android.gms.internal.ads.zzbks;
import com.google.android.gms.internal.ads.zzcgc;
import com.google.android.gms.internal.ads.zzcgj;
import com.google.android.gms.internal.ads.zzcho;
import com.google.android.gms.internal.ads.zzchu;
import com.google.android.gms.internal.ads.zzdzc;
import com.google.android.gms.internal.ads.zzdzm;
import com.google.android.gms.internal.ads.zzfol;
import com.google.android.gms.internal.ads.zzfow;
import com.google.android.gms.internal.ads.zzgen;
import com.google.android.gms.internal.ads.zzgfb;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes3.dex */
final class zzx implements zzgen {
    final /* synthetic */ zzgfb zza;
    final /* synthetic */ zzcgj zzb;
    final /* synthetic */ zzcgc zzc;
    final /* synthetic */ zzfol zzd;
    final /* synthetic */ long zze;
    final /* synthetic */ zzac zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzx(zzac zzacVar, zzgfb zzgfbVar, zzcgj zzcgjVar, zzcgc zzcgcVar, zzfol zzfolVar, long j) {
        this.zzf = zzacVar;
        this.zza = zzgfbVar;
        this.zzb = zzcgjVar;
        this.zzc = zzcgcVar;
        this.zzd = zzfolVar;
        this.zze = j;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
        zzdzm zzdzmVar;
        zzdzc zzdzcVar;
        long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
        long j = this.zze;
        String message = th.getMessage();
        com.google.android.gms.ads.internal.zzt.zzo().zzu(th, "SignalGeneratorImpl.generateSignals");
        zzac zzacVar = this.zzf;
        zzdzmVar = zzacVar.zzr;
        zzdzcVar = zzacVar.zzj;
        zzf.zzc(zzdzmVar, zzdzcVar, "sgf", new Pair("sgf_reason", message), new Pair("tqgt", String.valueOf(currentTimeMillis - j)));
        zzfow zzr = zzac.zzr(this.zza, this.zzb);
        if (((Boolean) zzbks.zze.zze()).booleanValue() && zzr != null) {
            zzfol zzfolVar = this.zzd;
            zzfolVar.zzg(th);
            zzfolVar.zzf(false);
            zzr.zza(zzfolVar);
            zzr.zzg();
        }
        try {
            zzcgc zzcgcVar = this.zzc;
            zzcgcVar.zzb("Internal error. " + message);
        } catch (RemoteException e2) {
            zzcho.zzh("", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzdzm zzdzmVar;
        zzdzc zzdzcVar;
        zzdzc zzdzcVar2;
        boolean z;
        boolean z2;
        zzdzm zzdzmVar2;
        zzdzc zzdzcVar3;
        String str;
        String str2;
        String str3;
        String str4;
        Context context;
        zzchu zzchuVar;
        String str5;
        String str6;
        AtomicInteger atomicInteger;
        zzdzm zzdzmVar3;
        zzdzc zzdzcVar4;
        zzdzm zzdzmVar4;
        zzdzc zzdzcVar5;
        zzao zzaoVar = (zzao) obj;
        zzfow zzr = zzac.zzr(this.zza, this.zzb);
        if (!((Boolean) zzba.zzc().zzb(zzbjj.zzgV)).booleanValue()) {
            try {
                this.zzc.zzb("QueryInfo generation has been disabled.");
            } catch (RemoteException e2) {
                com.google.android.gms.ads.internal.util.zze.zzg("QueryInfo generation has been disabled.".concat(e2.toString()));
            }
            if (!((Boolean) zzbks.zze.zze()).booleanValue() || zzr == null) {
                return;
            }
            zzfol zzfolVar = this.zzd;
            zzfolVar.zzc("QueryInfo generation has been disabled.");
            zzfolVar.zzf(false);
            zzr.zza(zzfolVar);
            zzr.zzg();
            return;
        }
        long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() - this.zze;
        try {
            try {
                if (zzaoVar == null) {
                    this.zzc.zzc(null, null, null);
                    zzac zzacVar = this.zzf;
                    zzdzmVar4 = zzacVar.zzr;
                    zzdzcVar5 = zzacVar.zzj;
                    zzf.zzc(zzdzmVar4, zzdzcVar5, "sgs", new Pair("rid", "-1"));
                    this.zzd.zzf(true);
                    if (!((Boolean) zzbks.zze.zze()).booleanValue() || zzr == null) {
                        return;
                    }
                    zzr.zza(this.zzd);
                    zzr.zzg();
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(zzaoVar.zzb);
                    String optString = jSONObject.optString("request_id", "");
                    if (TextUtils.isEmpty(optString)) {
                        com.google.android.gms.ads.internal.util.zze.zzj("The request ID is empty in request JSON.");
                        this.zzc.zzb("Internal error: request ID is empty in request JSON.");
                        zzac zzacVar2 = this.zzf;
                        zzdzmVar3 = zzacVar2.zzr;
                        zzdzcVar4 = zzacVar2.zzj;
                        zzf.zzc(zzdzmVar3, zzdzcVar4, "sgf", new Pair("sgf_reason", "rid_missing"));
                        zzfol zzfolVar2 = this.zzd;
                        zzfolVar2.zzc("Request ID empty");
                        zzfolVar2.zzf(false);
                        if (!((Boolean) zzbks.zze.zze()).booleanValue() || zzr == null) {
                            return;
                        }
                        zzr.zza(this.zzd);
                        zzr.zzg();
                        return;
                    }
                    zzac zzacVar3 = this.zzf;
                    String str7 = zzaoVar.zzb;
                    zzdzcVar2 = zzacVar3.zzj;
                    zzac.zzG(zzacVar3, optString, str7, zzdzcVar2);
                    Bundle bundle = zzaoVar.zzc;
                    zzac zzacVar4 = this.zzf;
                    z = zzacVar4.zzw;
                    if (z && bundle != null) {
                        str5 = zzacVar4.zzy;
                        if (bundle.getInt(str5, -1) == -1) {
                            zzac zzacVar5 = this.zzf;
                            str6 = zzacVar5.zzy;
                            atomicInteger = zzacVar5.zzz;
                            bundle.putInt(str6, atomicInteger.get());
                        }
                    }
                    zzac zzacVar6 = this.zzf;
                    z2 = zzacVar6.zzv;
                    if (z2 && bundle != null) {
                        str = zzacVar6.zzx;
                        if (TextUtils.isEmpty(bundle.getString(str))) {
                            str2 = this.zzf.zzB;
                            if (TextUtils.isEmpty(str2)) {
                                zzac zzacVar7 = this.zzf;
                                com.google.android.gms.ads.internal.util.zzs zzp = com.google.android.gms.ads.internal.zzt.zzp();
                                zzac zzacVar8 = this.zzf;
                                context = zzacVar8.zzg;
                                zzchuVar = zzacVar8.zzA;
                                zzacVar7.zzB = zzp.zzc(context, zzchuVar.zza);
                            }
                            zzac zzacVar9 = this.zzf;
                            str3 = zzacVar9.zzx;
                            str4 = zzacVar9.zzB;
                            bundle.putString(str3, str4);
                        }
                    }
                    this.zzc.zzc(zzaoVar.zza, zzaoVar.zzb, bundle);
                    zzac zzacVar10 = this.zzf;
                    zzdzmVar2 = zzacVar10.zzr;
                    zzdzcVar3 = zzacVar10.zzj;
                    Pair[] pairArr = new Pair[2];
                    pairArr[0] = new Pair("tqgt", String.valueOf(currentTimeMillis));
                    String str8 = "na";
                    if (((Boolean) zzba.zzc().zzb(zzbjj.zziC)).booleanValue()) {
                        try {
                            str8 = jSONObject.getJSONObject("extras").getBoolean("accept_3p_cookie") ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0";
                        } catch (JSONException e3) {
                            com.google.android.gms.ads.internal.util.zze.zzh("Error retrieving JSONObject from the requestJson, ", e3);
                        }
                    }
                    pairArr[1] = new Pair("tpc", str8);
                    zzf.zzc(zzdzmVar2, zzdzcVar3, "sgs", pairArr);
                    this.zzd.zzf(true);
                    if (!((Boolean) zzbks.zze.zze()).booleanValue() || zzr == null) {
                        return;
                    }
                    zzr.zza(this.zzd);
                    zzr.zzg();
                } catch (JSONException e4) {
                    com.google.android.gms.ads.internal.util.zze.zzj("Failed to create JSON object from the request string.");
                    zzcgc zzcgcVar = this.zzc;
                    String obj2 = e4.toString();
                    zzcgcVar.zzb("Internal error for request JSON: " + obj2);
                    zzac zzacVar11 = this.zzf;
                    zzdzmVar = zzacVar11.zzr;
                    zzdzcVar = zzacVar11.zzj;
                    zzf.zzc(zzdzmVar, zzdzcVar, "sgf", new Pair("sgf_reason", "request_invalid"));
                    zzfol zzfolVar3 = this.zzd;
                    zzfolVar3.zzg(e4);
                    zzfolVar3.zzf(false);
                    com.google.android.gms.ads.internal.zzt.zzo().zzu(e4, "SignalGeneratorImpl.generateSignals.onSuccess");
                    if (!((Boolean) zzbks.zze.zze()).booleanValue() || zzr == null) {
                        return;
                    }
                    zzr.zza(this.zzd);
                    zzr.zzg();
                }
            } catch (RemoteException e5) {
                zzfol zzfolVar4 = this.zzd;
                zzfolVar4.zzg(e5);
                zzfolVar4.zzf(false);
                zzcho.zzh("", e5);
                com.google.android.gms.ads.internal.zzt.zzo().zzu(e5, "SignalGeneratorImpl.generateSignals.onSuccess");
                if (!((Boolean) zzbks.zze.zze()).booleanValue() || zzr == null) {
                    return;
                }
                zzr.zza(this.zzd);
                zzr.zzg();
            }
        } catch (Throwable th) {
            if (((Boolean) zzbks.zze.zze()).booleanValue() && zzr != null) {
                zzr.zza(this.zzd);
                zzr.zzg();
            }
            throw th;
        }
    }
}

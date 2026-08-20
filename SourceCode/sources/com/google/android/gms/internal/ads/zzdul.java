package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Arrays;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdul extends zzbne {
    private final Context zza;
    private final zzdqg zzb;
    private zzdrg zzc;
    private zzdqb zzd;

    public zzdul(Context context, zzdqg zzdqgVar, zzdrg zzdrgVar, zzdqb zzdqbVar) {
        this.zza = context;
        this.zzb = zzdqgVar;
        this.zzc = zzdrgVar;
        this.zzd = zzdqbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final com.google.android.gms.ads.internal.client.zzdq zze() {
        return this.zzb.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final zzbmi zzf() throws RemoteException {
        return this.zzd.zzc().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final zzbml zzg(String str) {
        return (zzbml) this.zzb.zzh().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final IObjectWrapper zzh() {
        return ObjectWrapper.wrap(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final String zzi() {
        return this.zzb.zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final String zzj(String str) {
        return (String) this.zzb.zzi().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final List zzk() {
        SimpleArrayMap zzh = this.zzb.zzh();
        SimpleArrayMap zzi = this.zzb.zzi();
        String[] strArr = new String[zzh.size() + zzi.size()];
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i2 < zzh.size()) {
            strArr[i3] = (String) zzh.keyAt(i2);
            i2++;
            i3++;
        }
        while (i < zzi.size()) {
            strArr[i3] = (String) zzi.keyAt(i);
            i++;
            i3++;
        }
        return Arrays.asList(strArr);
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final void zzl() {
        zzdqb zzdqbVar = this.zzd;
        if (zzdqbVar != null) {
            zzdqbVar.zzaa();
        }
        this.zzd = null;
        this.zzc = null;
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final void zzm() {
        String zzA = this.zzb.zzA();
        if ("Google".equals(zzA)) {
            com.google.android.gms.ads.internal.util.zze.zzj("Illegal argument specified for omid partner name.");
        } else if (TextUtils.isEmpty(zzA)) {
            com.google.android.gms.ads.internal.util.zze.zzj("Not starting OMID session. OM partner name has not been configured.");
        } else {
            zzdqb zzdqbVar = this.zzd;
            if (zzdqbVar != null) {
                zzdqbVar.zzr(zzA, false);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final void zzn(String str) {
        zzdqb zzdqbVar = this.zzd;
        if (zzdqbVar != null) {
            zzdqbVar.zzB(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final void zzo() {
        zzdqb zzdqbVar = this.zzd;
        if (zzdqbVar != null) {
            zzdqbVar.zzE();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final void zzp(IObjectWrapper iObjectWrapper) {
        zzdqb zzdqbVar;
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(unwrap instanceof View) || this.zzb.zzu() == null || (zzdqbVar = this.zzd) == null) {
            return;
        }
        zzdqbVar.zzF((View) unwrap);
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final boolean zzq() {
        zzdqb zzdqbVar = this.zzd;
        return (zzdqbVar == null || zzdqbVar.zzS()) && this.zzb.zzq() != null && this.zzb.zzr() == null;
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final boolean zzr(IObjectWrapper iObjectWrapper) {
        zzdrg zzdrgVar;
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if ((unwrap instanceof ViewGroup) && (zzdrgVar = this.zzc) != null && zzdrgVar.zzf((ViewGroup) unwrap)) {
            this.zzb.zzr().zzaq(new zzduk(this));
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final boolean zzs() {
        IObjectWrapper zzu = this.zzb.zzu();
        if (zzu != null) {
            com.google.android.gms.ads.internal.zzt.zzA().zzd(zzu);
            if (this.zzb.zzq() != null) {
                this.zzb.zzq().zzd("onSdkLoaded", new ArrayMap());
                return true;
            }
            return true;
        }
        com.google.android.gms.ads.internal.util.zze.zzj("Trying to start OMID session before creation.");
        return false;
    }
}

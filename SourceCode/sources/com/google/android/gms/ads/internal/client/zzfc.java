package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzcdh;
import com.google.android.gms.internal.ads.zzcdj;
import com.google.android.gms.internal.ads.zzcdn;
import com.google.android.gms.internal.ads.zzcdr;
import com.google.android.gms.internal.ads.zzcds;
import com.google.android.gms.internal.ads.zzcdy;
import com.google.android.gms.internal.ads.zzchh;
import com.google.android.gms.internal.ads.zzcho;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes3.dex */
public final class zzfc extends zzcdj {
    private static void zzr(final zzcdr zzcdrVar) {
        zzcho.zzg("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzchh.zza.post(new Runnable() { // from class: com.google.android.gms.ads.internal.client.zzfb
            @Override // java.lang.Runnable
            public final void run() {
                zzcdr zzcdrVar2 = zzcdr.this;
                if (zzcdrVar2 != null) {
                    try {
                        zzcdrVar2.zze(1);
                    } catch (RemoteException e2) {
                        zzcho.zzl("#007 Could not call remote method.", e2);
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final Bundle zzb() throws RemoteException {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final zzdn zzc() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final zzcdh zzd() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final String zze() throws RemoteException {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzf(zzl zzlVar, zzcdr zzcdrVar) throws RemoteException {
        zzr(zzcdrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzg(zzl zzlVar, zzcdr zzcdrVar) throws RemoteException {
        zzr(zzcdrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzh(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzi(zzdd zzddVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzj(zzdg zzdgVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzk(zzcdn zzcdnVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzl(zzcdy zzcdyVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzm(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzn(IObjectWrapper iObjectWrapper, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final boolean zzo() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzp(zzcds zzcdsVar) throws RemoteException {
    }
}

package com.google.android.gms.ads.nonagon.signalgeneration;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbjj;
import com.google.android.gms.internal.ads.zzcaf;
import com.google.android.gms.internal.ads.zzcho;
import com.google.android.gms.internal.ads.zzfpo;
import com.google.android.gms.internal.ads.zzgen;
import java.util.ArrayList;
import java.util.Iterator;
import javax.annotation.Nonnull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes3.dex */
public final class zzy implements zzgen {
    final /* synthetic */ zzcaf zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzac zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzy(zzac zzacVar, zzcaf zzcafVar, boolean z) {
        this.zzc = zzacVar;
        this.zza = zzcafVar;
        this.zzb = z;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
        try {
            zzcaf zzcafVar = this.zza;
            String message = th.getMessage();
            zzcafVar.zze("Internal error: " + message);
        } catch (RemoteException e2) {
            zzcho.zzh("", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final /* bridge */ /* synthetic */ void zzb(@Nonnull Object obj) {
        boolean z;
        String str;
        Uri zzX;
        zzfpo zzfpoVar;
        zzfpo zzfpoVar2;
        ArrayList arrayList = (ArrayList) obj;
        try {
            this.zza.zzf(arrayList);
            z = this.zzc.zzt;
            if (z || this.zzb) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Uri uri = (Uri) it.next();
                    if (this.zzc.zzP(uri)) {
                        str = this.zzc.zzC;
                        zzX = zzac.zzX(uri, str, IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                        zzfpoVar = this.zzc.zzs;
                        zzfpoVar.zzc(zzX.toString(), null);
                    } else {
                        if (((Boolean) zzba.zzc().zzb(zzbjj.zzgS)).booleanValue()) {
                            zzfpoVar2 = this.zzc.zzs;
                            zzfpoVar2.zzc(uri.toString(), null);
                        }
                    }
                }
            }
        } catch (RemoteException e2) {
            zzcho.zzh("", e2);
        }
    }
}

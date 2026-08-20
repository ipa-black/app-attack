package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.query.UpdateClickUrlCallback;
import com.google.android.gms.ads.query.UpdateImpressionUrlsCallback;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import javax.annotation.Nonnull;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcan {
    @Nonnull
    private final View zza;
    private final Map zzb;
    private final zzcgf zzc;

    public zzcan(zzcam zzcamVar) {
        View view;
        Map map;
        View view2;
        view = zzcamVar.zza;
        this.zza = view;
        map = zzcamVar.zzb;
        this.zzb = map;
        view2 = zzcamVar.zza;
        zzcgf zza = zzcah.zza(view2.getContext());
        this.zzc = zza;
        if (zza == null || map.isEmpty()) {
            return;
        }
        try {
            zza.zzf(new zzcao(ObjectWrapper.wrap(view).asBinder(), ObjectWrapper.wrap(map).asBinder()));
        } catch (RemoteException unused) {
            zzcho.zzg("Failed to call remote method.");
        }
    }

    public final void zza(List list) {
        if (list == null || list.isEmpty()) {
            zzcho.zzj("No click urls were passed to recordClick");
            return;
        }
        if (this.zzc == null) {
            zzcho.zzj("Failed to get internal reporting info generator in recordClick.");
        }
        try {
            this.zzc.zzg(list, ObjectWrapper.wrap(this.zza), new zzcal(this, list));
        } catch (RemoteException e2) {
            zzcho.zzg("RemoteException recording click: ".concat(e2.toString()));
        }
    }

    public final void zzb(List list) {
        if (list == null || list.isEmpty()) {
            zzcho.zzj("No impression urls were passed to recordImpression");
            return;
        }
        zzcgf zzcgfVar = this.zzc;
        if (zzcgfVar != null) {
            try {
                zzcgfVar.zzh(list, ObjectWrapper.wrap(this.zza), new zzcak(this, list));
                return;
            } catch (RemoteException e2) {
                zzcho.zzg("RemoteException recording impression urls: ".concat(e2.toString()));
                return;
            }
        }
        zzcho.zzj("Failed to get internal reporting info generator from recordImpression.");
    }

    public final void zzc(MotionEvent motionEvent) {
        zzcgf zzcgfVar = this.zzc;
        if (zzcgfVar != null) {
            try {
                zzcgfVar.zzj(ObjectWrapper.wrap(motionEvent));
                return;
            } catch (RemoteException unused) {
                zzcho.zzg("Failed to call remote method.");
                return;
            }
        }
        zzcho.zze("Failed to get internal reporting info generator.");
    }

    public final void zzd(Uri uri, UpdateClickUrlCallback updateClickUrlCallback) {
        if (this.zzc == null) {
            updateClickUrlCallback.onFailure("Failed to get internal reporting info generator.");
        }
        try {
            this.zzc.zzk(new ArrayList(Arrays.asList(uri)), ObjectWrapper.wrap(this.zza), new zzcaj(this, updateClickUrlCallback));
        } catch (RemoteException e2) {
            updateClickUrlCallback.onFailure("Internal error: ".concat(e2.toString()));
        }
    }

    public final void zze(List list, UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        if (this.zzc == null) {
            updateImpressionUrlsCallback.onFailure("Failed to get internal reporting info generator.");
        }
        try {
            this.zzc.zzl(list, ObjectWrapper.wrap(this.zza), new zzcai(this, updateImpressionUrlsCallback));
        } catch (RemoteException e2) {
            updateImpressionUrlsCallback.onFailure("Internal error: ".concat(e2.toString()));
        }
    }
}

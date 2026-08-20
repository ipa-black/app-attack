package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzete implements zzezm {
    private final zzgfc zza;
    private final zzgfc zzb;
    private final Context zzc;
    private final zzfjg zzd;
    private final View zze;

    public zzete(zzgfc zzgfcVar, zzgfc zzgfcVar2, Context context, zzfjg zzfjgVar, ViewGroup viewGroup) {
        this.zza = zzgfcVar;
        this.zzb = zzgfcVar2;
        this.zzc = context;
        this.zzd = zzfjgVar;
        this.zze = viewGroup;
    }

    private final List zze() {
        ArrayList arrayList = new ArrayList();
        View view = this.zze;
        while (view != null) {
            ViewParent parent = view.getParent();
            if (parent == null) {
                break;
            }
            int indexOfChild = parent instanceof ViewGroup ? ((ViewGroup) parent).indexOfChild(view) : -1;
            Bundle bundle = new Bundle();
            bundle.putString(SessionDescription.ATTR_TYPE, parent.getClass().getName());
            bundle.putInt("index_of_child", indexOfChild);
            arrayList.add(bundle);
            if (!(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 3;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        zzbjj.zzc(this.zzc);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzjg)).booleanValue()) {
            return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzetc
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return zzete.this.zzc();
                }
            });
        }
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzetd
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzete.this.zzd();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzetf zzc() throws Exception {
        return new zzetf(this.zzc, this.zzd.zze, zze());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzetf zzd() throws Exception {
        return new zzetf(this.zzc, this.zzd.zze, zze());
    }
}

package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfqs implements zzfqq {
    private final zzfqq zza;

    public zzfqs(zzfqq zzfqqVar) {
        this.zza = zzfqqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfqq
    public final JSONObject zza(View view) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfqq
    public final void zzb(View view, JSONObject jSONObject, zzfqp zzfqpVar, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        zzfqi zza = zzfqi.zza();
        if (zza != null) {
            Collection<zzfpx> zzb = zza.zzb();
            int size = zzb.size();
            IdentityHashMap identityHashMap = new IdentityHashMap(size + size + 3);
            for (zzfpx zzfpxVar : zzb) {
                View zzf = zzfpxVar.zzf();
                if (zzf != null && zzf.isAttachedToWindow() && zzf.isShown()) {
                    View view2 = zzf;
                    while (true) {
                        if (view2 != null) {
                            if (view2.getAlpha() != 0.0f) {
                                ViewParent parent = view2.getParent();
                                view2 = parent instanceof View ? (View) parent : null;
                            }
                        } else {
                            View rootView = zzf.getRootView();
                            if (rootView != null && !identityHashMap.containsKey(rootView)) {
                                identityHashMap.put(rootView, rootView);
                                float zza2 = zzfrb.zza(rootView);
                                int size2 = arrayList.size();
                                while (size2 > 0) {
                                    int i = size2 - 1;
                                    if (zzfrb.zza((View) arrayList.get(i)) <= zza2) {
                                        break;
                                    }
                                    size2 = i;
                                }
                                arrayList.add(size2, rootView);
                            }
                        }
                    }
                }
            }
        }
        int size3 = arrayList.size();
        for (int i2 = 0; i2 < size3; i2++) {
            zzfqpVar.zza((View) arrayList.get(i2), this.zza, jSONObject, z2);
        }
    }
}

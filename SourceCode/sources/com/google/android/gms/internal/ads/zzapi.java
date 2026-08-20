package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzapi extends zzaph {
    protected zzapi(Context context, String str, boolean z) {
        super(context, str, z);
    }

    public static zzapi zzs(String str, Context context, boolean z) {
        zzq(context, false);
        return new zzapi(context, str, false);
    }

    @Deprecated
    public static zzapi zzt(String str, Context context, boolean z, int i) {
        zzq(context, z);
        return new zzapi(context, str, z);
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    protected final List zzo(zzaqj zzaqjVar, Context context, zzaml zzamlVar, zzame zzameVar) {
        if (zzaqjVar.zzk() == null || !this.zzt) {
            return super.zzo(zzaqjVar, context, zzamlVar, null);
        }
        int zza = zzaqjVar.zza();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.zzo(zzaqjVar, context, zzamlVar, null));
        arrayList.add(new zzarc(zzaqjVar, "dJwO6Cl9MRqD0Gc5K3JTdZycyClQqkAPKU0XDLxQQPeGCWqiQha6f2rP1wtqtwx3", "rLNLoOjJQBnuvnCDgD+yaoADKoI2087E89SpHXw4yFg=", zzamlVar, zza, 24));
        return arrayList;
    }
}

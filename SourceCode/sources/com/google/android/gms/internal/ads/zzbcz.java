package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzbcz implements Comparator {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbcz(zzbdb zzbdbVar) {
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        zzbdf zzbdfVar = (zzbdf) obj;
        zzbdf zzbdfVar2 = (zzbdf) obj2;
        int i = zzbdfVar.zzc - zzbdfVar2.zzc;
        return i != 0 ? i : (zzbdfVar.zza > zzbdfVar2.zza ? 1 : (zzbdfVar.zza == zzbdfVar2.zza ? 0 : -1));
    }
}

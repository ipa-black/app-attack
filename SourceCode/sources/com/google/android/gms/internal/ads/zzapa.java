package com.google.android.gms.internal.ads;

import java.io.File;
import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzapa implements zzftu {
    final /* synthetic */ zzfru zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzapa(zzapc zzapcVar, zzfru zzfruVar) {
        this.zza = zzfruVar;
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final boolean zza(File file) {
        try {
            return this.zza.zza(file);
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }
}

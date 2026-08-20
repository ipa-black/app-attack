package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public class zzazz extends IOException {
    public final zzazv zza;

    public zzazz(IOException iOException, zzazv zzazvVar, int i) {
        super(iOException);
        this.zza = zzazvVar;
    }

    public zzazz(String str, zzazv zzazvVar, int i) {
        super(str);
        this.zza = zzazvVar;
    }

    public zzazz(String str, IOException iOException, zzazv zzazvVar, int i) {
        super(str, iOException);
        this.zza = zzazvVar;
    }
}

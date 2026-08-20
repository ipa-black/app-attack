package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.io.File;
/* renamed from: com.yandex.metrica.impl.ob.gj  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1567gj implements InterfaceC1467cj {

    /* renamed from: a  reason: collision with root package name */
    private final Context f14812a;

    /* renamed from: b  reason: collision with root package name */
    private final B0 f14813b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1567gj(Context context, B0 b0) {
        this.f14812a = context;
        this.f14813b = b0;
    }

    private boolean b() {
        boolean z;
        File c2 = this.f14813b.c(this.f14812a);
        if (c2 != null) {
            this.f14813b.getClass();
            z = new File(c2, "metrica_data.db").exists();
        } else {
            z = false;
        }
        if (!z && A2.a(21)) {
            B0 b0 = this.f14813b;
            Context context = this.f14812a;
            b0.getClass();
            File noBackupFilesDir = context.getNoBackupFilesDir();
            File file = noBackupFilesDir == null ? null : new File(noBackupFilesDir, "metrica_data.db");
            z = file != null && file.exists();
        }
        if (z) {
            return z;
        }
        B0 b02 = this.f14813b;
        Context context2 = this.f14812a;
        b02.getClass();
        File databasePath = context2.getDatabasePath("metrica_data.db");
        return databasePath != null && databasePath.exists();
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1467cj
    public boolean a() {
        return !b();
    }
}

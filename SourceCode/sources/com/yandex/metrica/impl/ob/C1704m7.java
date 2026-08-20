package com.yandex.metrica.impl.ob;

import java.io.File;
import java.io.FilenameFilter;
/* renamed from: com.yandex.metrica.impl.ob.m7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1704m7 implements FilenameFilter {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1704m7(C1729n7 c1729n7) {
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return str.endsWith(".dmp");
    }
}

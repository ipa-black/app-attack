package com.yandex.metrica.impl.ob;

import java.io.File;
/* renamed from: com.yandex.metrica.impl.ob.m6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1703m6 {
    public boolean a(File file) {
        if (file == null) {
            return false;
        }
        if (file.exists()) {
            if (file.isDirectory()) {
                return true;
            }
            if (file.delete()) {
                return file.mkdir();
            }
            return false;
        }
        return file.mkdir();
    }
}

package com.bykv.vk.openvk.preload.geckox.a.a;

import java.io.File;
import java.util.List;
/* compiled from: FIFOCachePolicy.java */
/* loaded from: classes2.dex */
final class e extends b {
    @Override // com.bykv.vk.openvk.preload.geckox.a.a.b
    public final void a(a aVar, File file, List<String> list) {
        super.a(aVar, file, list);
    }

    @Override // com.bykv.vk.openvk.preload.geckox.a.a.b
    public final void a() {
        for (String str : this.f8464f) {
            List<File> b2 = com.bykv.vk.openvk.preload.geckox.utils.c.b(new File(this.f8463e, str));
            if (b2 != null && b2.size() > this.f8462d.f8453a) {
                for (File file : b2.subList(0, b2.size() - this.f8462d.f8453a)) {
                    com.bykv.vk.openvk.preload.geckox.a.c.b(file.getAbsolutePath());
                    if (this.f8462d.f8455c != null) {
                        file.getName();
                    }
                }
            }
        }
    }
}

package com.bykv.vk.openvk.preload.falconx.loader;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.openvk.preload.geckox.f.b;
import com.bykv.vk.openvk.preload.geckox.g.c;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import java.io.File;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: GeckoResLoader.java */
/* loaded from: classes2.dex */
public final class a implements ILoader {

    /* renamed from: a  reason: collision with root package name */
    public b f8432a;

    /* renamed from: b  reason: collision with root package name */
    public AtomicBoolean f8433b = new AtomicBoolean(false);

    public a(Context context, String str, File file) {
        if (context == null) {
            throw new RuntimeException("context == null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("access key empty");
        }
        if (file == null) {
            throw new RuntimeException("resRootDir == null");
        }
        this.f8432a = new b(context, str, file);
    }

    @Override // com.bykv.vk.openvk.preload.falconx.loader.ILoader
    public final InputStream getInputStream(String str) throws Exception {
        if (this.f8433b.get()) {
            throw new RuntimeException("released!");
        }
        GeckoLogger.d("WebOffline-falcon", "GeckoResLoader ready to load, file:", str);
        b bVar = this.f8432a;
        if (bVar.f8536b.get()) {
            throw new RuntimeException("released");
        }
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("relativePath empty");
        }
        com.bykv.vk.openvk.preload.geckox.f.a a2 = bVar.a(str.trim());
        return a2.a(a2.f8529b).a(com.bykv.vk.openvk.preload.geckox.f.a.a(a2.f8529b, str));
    }

    @Override // com.bykv.vk.openvk.preload.falconx.loader.ILoader
    public final boolean exist(String str) throws Exception {
        if (this.f8433b.get()) {
            throw new RuntimeException("released!");
        }
        b bVar = this.f8432a;
        if (bVar.f8536b.get()) {
            throw new RuntimeException("released");
        }
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("relativePath empty");
        }
        com.bykv.vk.openvk.preload.geckox.f.a a2 = bVar.a(str.trim());
        return a2.a(a2.f8529b).b(com.bykv.vk.openvk.preload.geckox.f.a.a(a2.f8529b, str));
    }

    @Override // com.bykv.vk.openvk.preload.falconx.loader.ILoader
    public final String getResRootDir() {
        return this.f8432a.f8537c;
    }

    @Override // com.bykv.vk.openvk.preload.falconx.loader.ILoader
    public final Map<String, Long> getChannelVersion() {
        return this.f8432a.a();
    }

    @Override // com.bykv.vk.openvk.preload.falconx.loader.ILoader
    public final void release() throws Exception {
        if (this.f8433b.getAndSet(true)) {
            return;
        }
        b bVar = this.f8432a;
        if (bVar.f8536b.getAndSet(true)) {
            return;
        }
        GeckoLogger.d("Loader", "release version res loader");
        synchronized (bVar.f8535a) {
            for (com.bykv.vk.openvk.preload.geckox.f.a aVar : bVar.f8535a.values()) {
                if (!aVar.f8532e.getAndSet(true)) {
                    com.bykv.vk.openvk.preload.geckox.g.b a2 = com.bykv.vk.openvk.preload.geckox.g.b.a(aVar.f8528a + File.separator + aVar.f8529b + File.separator + "select.lock");
                    GeckoLogger.d("gecko-file-lock", "channel version loader clean");
                    if (aVar.f8530c != null) {
                        c.b(aVar.f8530c.getAbsolutePath() + File.separator + "using.lock");
                        a2.a();
                        com.bykv.vk.openvk.preload.geckox.a.c.a(aVar.f8528a + File.separator + aVar.f8529b);
                    } else {
                        a2.a();
                    }
                }
            }
            bVar.f8535a.clear();
        }
    }
}

package com.bykv.vk.openvk.preload.geckox.d.a.a;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.openvk.preload.b.d;
import com.bykv.vk.openvk.preload.geckox.buffer.stream.BufferOutputStream;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import com.bykv.vk.openvk.preload.geckox.model.UpdatePackage;
import java.io.File;
/* compiled from: DownloadFullSingleFileInterceptor.java */
/* loaded from: classes2.dex */
public class b extends d<Pair<Uri, UpdatePackage>, Pair<com.bykv.vk.openvk.preload.geckox.buffer.a, UpdatePackage>> {

    /* renamed from: g  reason: collision with root package name */
    private com.bykv.vk.openvk.preload.geckox.b f8505g;

    /* renamed from: h  reason: collision with root package name */
    private File f8506h;

    public static String a(UpdatePackage updatePackage, String str) {
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("url empty, channel:" + updatePackage.getChannel());
        }
        int lastIndexOf = str.lastIndexOf("/");
        if (lastIndexOf == -1) {
            throw new RuntimeException("url path illegal, url:".concat(String.valueOf(str)));
        }
        String substring = str.substring(lastIndexOf + 1);
        if (TextUtils.isEmpty(substring)) {
            throw new RuntimeException("url path illegal, url:".concat(String.valueOf(str)));
        }
        return substring;
    }

    @Override // com.bykv.vk.openvk.preload.b.d
    public final void a(Object... objArr) {
        super.a(objArr);
        this.f8505g = (com.bykv.vk.openvk.preload.geckox.b) objArr[0];
        this.f8506h = (File) objArr[1];
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bykv.vk.openvk.preload.b.d
    public Object a(com.bykv.vk.openvk.preload.b.b<Pair<com.bykv.vk.openvk.preload.geckox.buffer.a, UpdatePackage>> bVar, Pair<Uri, UpdatePackage> pair) throws Throwable {
        GeckoLogger.d("gecko-debug-tag", "start download full single file channel:", ((UpdatePackage) pair.second).getChannel());
        UpdatePackage updatePackage = (UpdatePackage) pair.second;
        String uri = ((Uri) pair.first).toString();
        long length = updatePackage.getFullPackage().getLength();
        File file = new File(this.f8506h, updatePackage.getAccessKey() + File.separator + updatePackage.getChannel() + File.separator + updatePackage.getVersion() + "--updating");
        file.mkdirs();
        com.bykv.vk.openvk.preload.geckox.buffer.a a2 = com.bykv.vk.openvk.preload.geckox.buffer.a.a.a(new File(file, "res" + File.separator + a(updatePackage, uri)), length);
        try {
            try {
                this.f8505g.f8471d.downloadFile(uri, length, new BufferOutputStream(a2));
                try {
                    Object a3 = bVar.a((com.bykv.vk.openvk.preload.b.b<Pair<com.bykv.vk.openvk.preload.geckox.buffer.a, UpdatePackage>>) new Pair<>(a2, updatePackage));
                    try {
                        a2.e();
                    } catch (Exception e2) {
                        GeckoLogger.w("gecko-debug-tag", "DownloadFullSingleFile-release:", e2);
                    }
                    return a3;
                } catch (Exception e3) {
                    throw e3;
                }
            } catch (Throwable th) {
                a2.e();
                throw new com.bykv.vk.openvk.preload.geckox.b.a("download full single file failed! url:" + uri + ", channel:" + updatePackage.getChannel() + ", pkg id:" + updatePackage.getFullPackage().getId() + ", caused by:" + th.getMessage(), th);
            }
        } catch (Throwable th2) {
            try {
                a2.e();
            } catch (Exception e4) {
                GeckoLogger.w("gecko-debug-tag", "DownloadFullSingleFile-release:", e4);
            }
            throw th2;
        }
    }
}

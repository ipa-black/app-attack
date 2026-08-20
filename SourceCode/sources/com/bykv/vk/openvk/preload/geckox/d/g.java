package com.bykv.vk.openvk.preload.geckox.d;

import android.net.Uri;
import android.util.Pair;
import com.bykv.vk.openvk.preload.b.k;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import com.bykv.vk.openvk.preload.geckox.model.UpdatePackage;
import java.util.List;
/* compiled from: RetryFullDownloadInterceptor.java */
/* loaded from: classes2.dex */
public class g extends k<UpdatePackage, Pair<Uri, UpdatePackage>> {

    /* renamed from: h  reason: collision with root package name */
    private int f8525h = 0;

    @Override // com.bykv.vk.openvk.preload.b.k
    public final boolean a(Throwable th) {
        GeckoLogger.w("gecko-debug-tag", "full update failed and retry", th);
        if (this.f8525h >= ((UpdatePackage) this.f8426g).getFullPackage().getUrlList().size()) {
            return false;
        }
        return (th instanceof com.bykv.vk.openvk.preload.geckox.b.a) || (th instanceof com.bykv.vk.openvk.preload.geckox.b.b);
    }

    @Override // com.bykv.vk.openvk.preload.b.k
    public final /* synthetic */ Pair<Uri, UpdatePackage> a() {
        UpdatePackage updatePackage = (UpdatePackage) this.f8426g;
        List<String> urlList = updatePackage.getFullPackage().getUrlList();
        int i = this.f8525h;
        this.f8525h = i + 1;
        return new Pair<>(Uri.parse(urlList.get(i)), updatePackage);
    }
}

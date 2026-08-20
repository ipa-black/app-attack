package com.yandex.metrica.impl.ob;

import android.app.WallpaperManager;
/* loaded from: classes5.dex */
final class B2<T, R> implements InterfaceC1769om<WallpaperManager, Integer> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f12662a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public B2(int i) {
        this.f12662a = i;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1769om
    public Integer a(WallpaperManager wallpaperManager) {
        return Integer.valueOf(wallpaperManager.getWallpaperId(this.f12662a));
    }
}

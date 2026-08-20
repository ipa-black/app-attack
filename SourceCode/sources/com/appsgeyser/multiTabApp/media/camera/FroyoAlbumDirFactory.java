package com.appsgeyser.multiTabApp.media.camera;

import android.os.Environment;
import java.io.File;
/* loaded from: classes2.dex */
public final class FroyoAlbumDirFactory extends AlbumStorageDirFactory {
    @Override // com.appsgeyser.multiTabApp.media.camera.AlbumStorageDirFactory
    public File getAlbumStorageDir(String str) {
        return new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), str);
    }
}

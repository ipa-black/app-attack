package com.appsgeyser.multiTabApp.media.camera;

import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes2.dex */
public class AlbumStorageController {
    private String _albumName;
    private AlbumStorageDirFactory _albumStorageDirFactory = null;
    private String _currentPhotoPath;

    public AlbumStorageController(String str) {
        this._albumName = (str == null || str.equals("")) ? "album_" + new SimpleDateFormat("yyyy-MM-dd").toString() : str;
    }

    public File setUpPhotoFile() throws IOException {
        File createImageFile = createImageFile();
        this._currentPhotoPath = createImageFile.getAbsolutePath();
        return createImageFile;
    }

    public String getCurrentPhotoPath() {
        return this._currentPhotoPath;
    }

    public void setCurrentPhotoPath(String str) {
        this._currentPhotoPath = str;
    }

    private File createImageFile() throws IOException {
        return File.createTempFile("IMG_" + new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date()) + "_", ".jpg", getAlbumDir());
    }

    private File getAlbumDir() {
        if ("mounted".equals(Environment.getExternalStorageState())) {
            File albumStorageDir = this._albumStorageDirFactory.getAlbumStorageDir(this._albumName);
            if (albumStorageDir == null || albumStorageDir.mkdirs() || albumStorageDir.exists()) {
                return albumStorageDir;
            }
            Log.e("AlbumStorageController", "failed to create directory");
            return null;
        }
        Log.e("AlbumStorageController", "External storage is not mounted READ/WRITE.");
        return null;
    }
}

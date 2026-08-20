package com.appsgeyser.multiTabApp.browser;

import android.content.ActivityNotFoundException;
import android.content.ContentValues;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import android.webkit.DownloadListener;
import android.webkit.MimeTypeMap;
import android.webkit.URLUtil;
import android.webkit.ValueCallback;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appsgeyser.multiTabApp.DownloadsListActivity;
import com.appsgeyser.multiTabApp.Factory;
import com.appsgeyser.multiTabApp.MainNavigationActivity;
import com.appsgeyser.multiTabApp.browser.DownloadsItem;
import com.appsgeyser.multiTabApp.configuration.WebWidgetConfiguration;
import com.appsgeyser.multiTabApp.controllers.WebContentController;
import com.appsgeyser.multiTabApp.storage.DatabaseOpenHelper;
import com.appsgeyser.multiTabApp.ui.dialog.SimpleDialogs;
import com.appsgeyser.multiTabApp.utils.FileManager;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.w_19998775.R;
/* loaded from: classes2.dex */
public class BrowserDownloadListener implements DownloadListener {
    private WebContentController _webController;

    public BrowserDownloadListener(WebContentController webContentController) {
        this._webController = webContentController;
    }

    @Override // android.webkit.DownloadListener
    public void onDownloadStart(final String str, String str2, final String str3, String str4, long j) {
        final MainNavigationActivity mainNavigationActivity;
        final String str5;
        WebWidgetConfiguration.DownloadActions downloadAction;
        try {
            mainNavigationActivity = Factory.getInstance().getMainNavigationActivity();
            String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
            String mimeTypeFromExtension = fileExtensionFromUrl != null ? MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtensionFromUrl) : null;
            str5 = mimeTypeFromExtension == null ? str4 : mimeTypeFromExtension;
            downloadAction = mainNavigationActivity.getConfig().getDownloadAction();
        } catch (ActivityNotFoundException e2) {
            Log.e("ANFE", "onDownloadStart :" + e2.getMessage());
        }
        if (downloadAction == WebWidgetConfiguration.DownloadActions.OPEN) {
            FileManager.fireOpenFileIntent(str, str5, mainNavigationActivity);
            return;
        }
        if (downloadAction == WebWidgetConfiguration.DownloadActions.SAVE) {
            try {
                download(str, null, str5, mainNavigationActivity);
                return;
            } catch (Exception unused) {
                FileManager.fireOpenFileIntent(str, str5, mainNavigationActivity);
                return;
            }
        } else if (downloadAction == WebWidgetConfiguration.DownloadActions.DIALOG) {
            try {
                SimpleDialogs.showOpenOrSaveDialog(mainNavigationActivity, new DialogInterface.OnClickListener() { // from class: com.appsgeyser.multiTabApp.browser.BrowserDownloadListener.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        FileManager.fireOpenFileIntent(str, str5, mainNavigationActivity);
                    }
                }, new DialogInterface.OnClickListener() { // from class: com.appsgeyser.multiTabApp.browser.BrowserDownloadListener.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        BrowserDownloadListener.this.download(str, str3, str5, mainNavigationActivity);
                    }
                });
                return;
            } catch (Exception unused2) {
                FileManager.fireOpenFileIntent(str, str4, mainNavigationActivity);
                return;
            }
        } else {
            return;
        }
        Log.e("ANFE", "onDownloadStart :" + e2.getMessage());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void download(final String str, final String str2, final String str3, final MainNavigationActivity mainNavigationActivity) {
        if (ContextCompat.checkSelfPermission(mainNavigationActivity, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            long downloadFile = FileManager.downloadFile(str, str3, str2, mainNavigationActivity);
            String guessFileName = URLUtil.guessFileName(str, str2, str3);
            addIntoDataBase(mainNavigationActivity, str, downloadFile, guessFileName);
            sendMessageToActivity(mainNavigationActivity, downloadFile, guessFileName, str);
            return;
        }
        ActivityCompat.requestPermissions(mainNavigationActivity, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 35);
        mainNavigationActivity.setPermissionCallback(new ValueCallback<Integer>() { // from class: com.appsgeyser.multiTabApp.browser.BrowserDownloadListener.3
            @Override // android.webkit.ValueCallback
            public void onReceiveValue(Integer num) {
                if (num.intValue() == 0) {
                    long downloadFile2 = FileManager.downloadFile(str, str3, str2, mainNavigationActivity);
                    String guessFileName2 = URLUtil.guessFileName(str, str2, str3);
                    BrowserDownloadListener.this.addIntoDataBase(mainNavigationActivity, str, downloadFile2, guessFileName2);
                    BrowserDownloadListener.this.sendMessageToActivity(mainNavigationActivity, downloadFile2, guessFileName2, str);
                    return;
                }
                Toast.makeText(mainNavigationActivity, (int) R.string.download_permission_denied, 1).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMessageToActivity(MainNavigationActivity mainNavigationActivity, long j, String str, String str2) {
        Intent intent = new Intent();
        intent.putExtra(SessionDescription.ATTR_TYPE, 100);
        intent.putExtra("item", new DownloadsItem(j, str, str2));
        intent.setAction(DownloadsListActivity.DOWNLOAD_LIST_MSG);
        mainNavigationActivity.sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addIntoDataBase(MainNavigationActivity mainNavigationActivity, String str, long j, String str2) {
        SQLiteDatabase writableDatabase = new DatabaseOpenHelper(mainNavigationActivity).getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        try {
            try {
                contentValues.put("id_d", Long.valueOf(j));
                contentValues.put("name", str2);
                contentValues.put("status", DownloadsItem.Status.InProgress.toString());
                contentValues.put("link_d", str);
                contentValues.put("description", str);
                writableDatabase.insert("downloadsList", null, contentValues);
            } catch (Exception e2) {
                Log.e(LogConstants.EVENT_ERROR, "  Error while add string into table downloadsList " + e2);
            }
        } finally {
            writableDatabase.close();
        }
    }
}

package com.appsgeyser.multiTabApp.javascriptinterface;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.util.Base64;
import android.webkit.WebView;
import android.widget.Toast;
import com.appsgeyser.multiTabApp.inline.StringEscapeUtils;
import com.appsgeyser.multiTabApp.server.BaseServerClient;
import com.appsgeyser.multiTabApp.utils.FileManager;
import com.appsgeyser.multiTabApp.utils.ImageReader;
import com.appsgeyser.multiTabApp.utils.UrlConverter;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
/* loaded from: classes2.dex */
public class BaseBrowserJavascriptInterface {
    public static final String JS_PREFERENCE_NAME = "JS-PREFERENCE";
    public static final String JS_PREFERENCE_PREFIX = "JS-Preference-";
    private Context _context;
    private WebView _view;
    private Handler _webViewThreadHandler;

    public BaseBrowserJavascriptInterface(Context context, WebView webView, Handler handler) {
        this._context = context;
        this._view = webView;
        this._webViewThreadHandler = handler;
    }

    @android.webkit.JavascriptInterface
    public void sendXMLHTTPRequest(String str, final String str2) {
        new BaseServerClient(this._context, null).sendRequestAsync(str, 0, new BaseServerClient.OnRequestDoneListener() { // from class: com.appsgeyser.multiTabApp.javascriptinterface.BaseBrowserJavascriptInterface.1
            @Override // com.appsgeyser.multiTabApp.server.BaseServerClient.OnRequestDoneListener
            public void onRequestDone(String str3, int i, String str4) {
                String str5;
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(str4.getBytes())));
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        sb.append(readLine);
                        sb.append('\n');
                    }
                    sb.deleteCharAt(sb.length() - 1);
                    str5 = sb.toString();
                } catch (IOException e2) {
                    e2.printStackTrace();
                    str5 = "";
                }
                final String str6 = "javascript:window." + str2 + "('" + StringEscapeUtils.escapeJavaScript(str5) + "');";
                BaseBrowserJavascriptInterface.this._webViewThreadHandler.post(new Runnable() { // from class: com.appsgeyser.multiTabApp.javascriptinterface.BaseBrowserJavascriptInterface.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        BaseBrowserJavascriptInterface.this._view.loadUrl(str6);
                    }
                });
            }
        });
    }

    @android.webkit.JavascriptInterface
    public void showInfo(String str) {
        Context context = this._context;
        if (context != null) {
            Toast.makeText(context, str, 0).show();
        }
    }

    @android.webkit.JavascriptInterface
    public void downloadFile(String str) {
        FileManager.downloadFile(new UrlConverter(this._view).toAbsolute(str), "", this._context);
    }

    @android.webkit.JavascriptInterface
    public String saveImageFromBase64(String str, String str2) {
        File saveBitmapToGallery;
        if (str2 == null) {
            str2 = "IMG";
        }
        Bitmap createBitmapFromBase64 = ImageReader.createBitmapFromBase64(str);
        if (createBitmapFromBase64 == null || (saveBitmapToGallery = FileManager.saveBitmapToGallery(str2, createBitmapFromBase64, this._context)) == null) {
            return null;
        }
        showInfo("Image saved to gallery...");
        return saveBitmapToGallery.toString();
    }

    @android.webkit.JavascriptInterface
    public String getFileContents(String str) {
        return FileManager.getStringFromAssetsFileWithFileName(str, this._context);
    }

    @android.webkit.JavascriptInterface
    public String getItem(String str) {
        return this._context.getSharedPreferences("JS-PREFERENCE", 0).getString("JS-Preference-" + str, null);
    }

    @android.webkit.JavascriptInterface
    public void setItem(String str, String str2) {
        this._context.getSharedPreferences("JS-PREFERENCE", 0).edit().putString("JS-Preference-" + str, str2).commit();
    }

    @android.webkit.JavascriptInterface
    public void getBase64FromImageUrl(String str, final String str2) {
        new BaseServerClient(this._context, null).sendRequestAsync(str, 0, new BaseServerClient.OnRequestDoneListener() { // from class: com.appsgeyser.multiTabApp.javascriptinterface.BaseBrowserJavascriptInterface.2
            @Override // com.appsgeyser.multiTabApp.server.BaseServerClient.OnRequestDoneListener
            public void onRequestDone(String str3, int i, String str4) {
                String str5;
                try {
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str4.getBytes());
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    while (true) {
                        int read = byteArrayInputStream.read();
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(read);
                    }
                    byteArrayOutputStream.flush();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayInputStream.close();
                    byteArrayOutputStream.close();
                    str5 = "data:image/png;base64," + Base64.encodeToString(byteArray, 0);
                } catch (IOException e2) {
                    e2.printStackTrace();
                    str5 = "";
                }
                final String replace = str5.replace("\n", "").replace("\\", "\\\\").replace("'", "\\'");
                BaseBrowserJavascriptInterface.this._webViewThreadHandler.post(new Runnable() { // from class: com.appsgeyser.multiTabApp.javascriptinterface.BaseBrowserJavascriptInterface.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        BaseBrowserJavascriptInterface.this._view.loadUrl("javascript:" + str2 + "('" + replace + "');");
                    }
                });
            }
        });
    }
}

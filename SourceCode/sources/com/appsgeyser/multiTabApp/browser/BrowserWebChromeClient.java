package com.appsgeyser.multiTabApp.browser;

import android.content.DialogInterface;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.appsgeyser.multiTabApp.Factory;
import com.appsgeyser.multiTabApp.controllers.WebContentController;
import com.appsgeyser.multiTabApp.ui.dialog.SimpleDialogs;
/* loaded from: classes2.dex */
public class BrowserWebChromeClient extends WebChromeClient {
    public static final String WEB_VIEW_LOG_PREFIX = "webConsoleMessage";
    private WebContentController _webController;

    public BrowserWebChromeClient(WebContentController webContentController) {
        this._webController = webContentController;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        this._webController.setProgressBarState(i);
    }

    @Override // android.webkit.WebChromeClient
    public View getVideoLoadingProgressView() {
        return Factory.getInstance().getMainNavigationActivity().getVideoLoadingProgressView();
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        super.onShowCustomView(view, customViewCallback);
        Factory.getInstance().getMainNavigationActivity().onShowCustomView(view, customViewCallback);
    }

    @Override // android.webkit.WebChromeClient
    public void onHideCustomView() {
        super.onHideCustomView();
        Factory.getInstance().getMainNavigationActivity().onHideCustomView();
    }

    @Override // android.webkit.WebChromeClient
    public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        return Factory.getInstance().getMainNavigationActivity().openFileChooser(webView, valueCallback, fileChooserParams);
    }

    public void openFileChooser(ValueCallback<Uri> valueCallback, String str, String str2) {
        openFileChooser(valueCallback, str);
    }

    public void openFileChooser(ValueCallback<Uri> valueCallback, String str) {
        Factory.getInstance().getMainNavigationActivity().openFileChooser(valueCallback, str);
    }

    public void openFileChooser(ValueCallback<Uri> valueCallback) {
        openFileChooser(valueCallback, "");
    }

    @Override // android.webkit.WebChromeClient
    public void onPermissionRequest(final PermissionRequest permissionRequest) {
        Factory.getInstance().getMainNavigationActivity().runOnUiThread(new Runnable() { // from class: com.appsgeyser.multiTabApp.browser.BrowserWebChromeClient.1
            @Override // java.lang.Runnable
            public void run() {
                String[] resources;
                for (String str : permissionRequest.getResources()) {
                    str.hashCode();
                    if (str.equals("android.webkit.resource.VIDEO_CAPTURE")) {
                        BrowserWebChromeClient.this.askForPermission(permissionRequest.getOrigin().toString(), "android.permission.CAMERA", 776);
                    } else if (str.equals("android.webkit.resource.AUDIO_CAPTURE")) {
                        BrowserWebChromeClient.this.askForPermission(permissionRequest.getOrigin().toString(), "android.permission.RECORD_AUDIO", 777);
                    }
                }
                PermissionRequest permissionRequest2 = permissionRequest;
                permissionRequest2.grant(permissionRequest2.getResources());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void askForPermission(String str, String str2, int i) {
        if (ContextCompat.checkSelfPermission(Factory.getInstance().getMainNavigationActivity(), str2) != 0) {
            ActivityCompat.requestPermissions(Factory.getInstance().getMainNavigationActivity(), new String[]{str2}, i);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        super.onGeolocationPermissionsShowPrompt(str, callback);
        callback.invoke(str, true, true);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, final JsResult jsResult) {
        SimpleDialogs.createConfirmDialog(Factory.getInstance().getMainNavigationActivity().getConfig().getWidgetName(), str2, webView.getContext(), new DialogInterface.OnClickListener() { // from class: com.appsgeyser.multiTabApp.browser.BrowserWebChromeClient.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                jsResult.confirm();
            }
        }, new DialogInterface.OnClickListener() { // from class: com.appsgeyser.multiTabApp.browser.BrowserWebChromeClient.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                jsResult.cancel();
            }
        }).show();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        Log.d(WEB_VIEW_LOG_PREFIX, String.format("%s @ %d: %s", consoleMessage.message(), Integer.valueOf(consoleMessage.lineNumber()), consoleMessage.sourceId()));
        return true;
    }
}

package com.appsgeyser.multiTabApp.utils;

import android.content.res.AssetFileDescriptor;
import android.webkit.WebView;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
/* loaded from: classes2.dex */
public class UrlConverter {
    private WebView _parentWebView;

    public UrlConverter(WebView webView) {
        this._parentWebView = webView;
    }

    public InputStream toStream(String str) {
        InputStream openStream;
        String absolute = toAbsolute(str);
        if (absolute.length() == 0) {
            return null;
        }
        try {
            if (absolute.startsWith("file:///")) {
                openStream = this._parentWebView.getContext().getAssets().open(absolute.replace("file:///android_asset/", ""));
            } else {
                openStream = new URL(absolute).openStream();
            }
            return openStream;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public AssetFileDescriptor toFileDescriptor(String str) {
        String absolute = toAbsolute(str);
        if (absolute.length() == 0) {
            return null;
        }
        try {
            if (absolute.startsWith("file:///")) {
                return this._parentWebView.getContext().getAssets().openFd(absolute.replace("file:///android_asset/", ""));
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        return null;
    }

    public String toAbsolute(String str) {
        try {
            if (str.contains("://")) {
                return str;
            }
            URL url = new URL(this._parentWebView.getUrl());
            if (!str.startsWith("/")) {
                return url.getProtocol() + "://" + url.getFile().replaceAll("/[^/]+$", "/") + str;
            }
            return url.getProtocol() + "://" + url.getHost() + str;
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
            return "";
        }
    }
}

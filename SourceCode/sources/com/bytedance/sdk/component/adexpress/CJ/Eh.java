package com.bytedance.sdk.component.adexpress.CJ;

import android.net.Uri;
import android.text.TextUtils;
/* compiled from: UrlUtils.java */
/* loaded from: classes2.dex */
public class Eh {
    public static Qhi Qhi(String str) {
        Qhi qhi = Qhi.IMAGE;
        if (!TextUtils.isEmpty(str)) {
            try {
                String path = Uri.parse(str).getPath();
                if (path != null) {
                    if (path.endsWith(".css")) {
                        qhi = Qhi.CSS;
                    } else if (path.endsWith(".js")) {
                        qhi = Qhi.JS;
                    } else {
                        if (!path.endsWith(".jpg") && !path.endsWith(".gif") && !path.endsWith(".png") && !path.endsWith(".jpeg") && !path.endsWith(".webp") && !path.endsWith(".bmp") && !path.endsWith(".ico")) {
                            if (path.endsWith(".html")) {
                                qhi = Qhi.HTML;
                            }
                        }
                        qhi = Qhi.IMAGE;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return qhi;
    }

    public static boolean cJ(String str) {
        Uri parse;
        if (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null) {
            return false;
        }
        String path = parse.getPath();
        if (TextUtils.isEmpty(path)) {
            return false;
        }
        return path.endsWith(".gif");
    }

    /* compiled from: UrlUtils.java */
    /* loaded from: classes2.dex */
    public enum Qhi {
        HTML("text/html"),
        CSS("text/css"),
        JS("application/x-javascript"),
        IMAGE("image/*");
        
        private String fl;

        Qhi(String str) {
            this.fl = str;
        }

        public String Qhi() {
            return this.fl;
        }
    }
}

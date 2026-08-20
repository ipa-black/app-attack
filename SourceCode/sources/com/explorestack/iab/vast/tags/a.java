package com.explorestack.iab.vast.tags;

import android.text.TextUtils;
import android.util.Xml;
import com.explorestack.iab.vast.VastLog;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class a {
    public static VastTag a(InputStream inputStream) {
        if (inputStream != null) {
            XmlPullParser newPullParser = Xml.newPullParser();
            newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
            newPullParser.setInput(inputStream, null);
            int next = newPullParser.next();
            if (next != 1) {
                while (next != 3 && next != 1) {
                    if (newPullParser.getEventType() == 2 && VastXmlTag.a(newPullParser.getName(), "VAST")) {
                        return new VastTag(newPullParser);
                    }
                    next = newPullParser.next();
                }
                return null;
            }
            throw new Exception();
        }
        throw new Exception();
    }

    public static VastTag a(String str) {
        ByteArrayInputStream byteArrayInputStream;
        if (TextUtils.isEmpty(str)) {
            throw new Exception();
        }
        try {
            try {
                byteArrayInputStream = new ByteArrayInputStream(str.getBytes(Charset.defaultCharset().name()));
            } catch (Throwable th) {
                th = th;
                byteArrayInputStream = null;
            }
        } catch (Exception e2) {
            e = e2;
        }
        try {
            VastTag a2 = a(byteArrayInputStream);
            try {
                byteArrayInputStream.close();
            } catch (Exception e3) {
                VastLog.a("VastXmlParser", e3.getMessage(), e3);
            }
            return a2;
        } catch (Exception e4) {
            e = e4;
            VastLog.a("VastXmlParser", e.getMessage(), e);
            throw new Exception();
        } catch (Throwable th2) {
            th = th2;
            if (byteArrayInputStream != null) {
                try {
                    byteArrayInputStream.close();
                } catch (Exception e5) {
                    VastLog.a("VastXmlParser", e5.getMessage(), e5);
                }
            }
            throw th;
        }
    }
}

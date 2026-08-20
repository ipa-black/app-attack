package com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.ROR.Gm;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* compiled from: VastAdVerificationsParser.java */
/* loaded from: classes2.dex */
public class fl {
    public static Set<Gm> Qhi(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        Gm Qhi;
        if (xmlPullParser == null) {
            return new HashSet();
        }
        HashSet hashSet = new HashSet();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if ("Verification".equals(xmlPullParser.getName())) {
                    String attributeValue = xmlPullParser.getAttributeValue(Tgh.ROR, "vendor");
                    String str = null;
                    String str2 = null;
                    String str3 = null;
                    while (true) {
                        if (xmlPullParser.getEventType() != 3 || !"Verification".equals(xmlPullParser.getName())) {
                            xmlPullParser.next();
                            if (xmlPullParser.getEventType() == 2) {
                                String name = xmlPullParser.getName();
                                name.hashCode();
                                char c2 = 65535;
                                switch (name.hashCode()) {
                                    case 1335132887:
                                        if (name.equals("Tracking")) {
                                            c2 = 0;
                                            break;
                                        }
                                        break;
                                    case 1561251035:
                                        if (name.equals("JavaScriptResource")) {
                                            c2 = 1;
                                            break;
                                        }
                                        break;
                                    case 1749252741:
                                        if (name.equals("VerificationParameters")) {
                                            c2 = 2;
                                            break;
                                        }
                                        break;
                                }
                                switch (c2) {
                                    case 0:
                                        if (!"verificationNotExecuted".equals(xmlPullParser.getAttributeValue(Tgh.ROR, "event"))) {
                                            break;
                                        } else {
                                            str3 = Tgh.cJ(xmlPullParser, "Tracking");
                                            break;
                                        }
                                    case 1:
                                        if (!"omid".equals(xmlPullParser.getAttributeValue(Tgh.ROR, "apiFramework"))) {
                                            break;
                                        } else {
                                            str = Tgh.cJ(xmlPullParser, "JavaScriptResource");
                                            break;
                                        }
                                    case 2:
                                        str2 = Tgh.cJ(xmlPullParser, "VerificationParameters");
                                        break;
                                }
                            }
                        } else if (!TextUtils.isEmpty(str) && (Qhi = Gm.Qhi("omid", str, attributeValue, str2, str3)) != null) {
                            hashSet.add(Qhi);
                        }
                    }
                } else {
                    Tgh.Qhi(xmlPullParser);
                }
            }
        }
        return hashSet;
    }
}

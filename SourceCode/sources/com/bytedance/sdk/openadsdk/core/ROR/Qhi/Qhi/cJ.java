package com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi;

import android.content.Context;
import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.LogConstants;
import java.io.IOException;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* compiled from: InLineParser.java */
/* loaded from: classes2.dex */
public class cJ {
    public static com.bytedance.sdk.openadsdk.core.ROR.Qhi Qhi(Context context, XmlPullParser xmlPullParser, List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> list, int i, double d2) throws IOException, XmlPullParserException {
        xmlPullParser.require(2, Tgh.ROR, "InLine");
        com.bytedance.sdk.openadsdk.core.ROR.Qhi qhi = new com.bytedance.sdk.openadsdk.core.ROR.Qhi();
        while (true) {
            if (xmlPullParser.next() != 3 || !"InLine".equals(xmlPullParser.getName())) {
                if (xmlPullParser.getEventType() == 2) {
                    String name = xmlPullParser.getName();
                    name.hashCode();
                    char c2 = 65535;
                    switch (name.hashCode()) {
                        case -2077435339:
                            if (name.equals("AdVerifications")) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case -1692490108:
                            if (name.equals("Creatives")) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case -56677412:
                            if (name.equals("Description")) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case 67232232:
                            if (name.equals(LogConstants.EVENT_ERROR)) {
                                c2 = 3;
                                break;
                            }
                            break;
                        case 184043572:
                            if (name.equals("Extensions")) {
                                c2 = 4;
                                break;
                            }
                            break;
                        case 501930965:
                            if (name.equals("AdTitle")) {
                                c2 = 5;
                                break;
                            }
                            break;
                        case 2114088489:
                            if (name.equals("Impression")) {
                                c2 = 6;
                                break;
                            }
                            break;
                    }
                    switch (c2) {
                        case 0:
                            qhi.Qhi(fl.Qhi(xmlPullParser));
                            break;
                        case 1:
                            if (TextUtils.isEmpty(qhi.ROR()) || qhi.ac() == null) {
                                while (xmlPullParser.next() != 3) {
                                    if (xmlPullParser.getEventType() == 2) {
                                        if ("Creative".equals(xmlPullParser.getName())) {
                                            Qhi(context, xmlPullParser, qhi, i, d2);
                                        } else {
                                            Tgh.Qhi(xmlPullParser);
                                        }
                                    }
                                }
                                break;
                            } else {
                                Tgh.Qhi(xmlPullParser);
                                break;
                            }
                            break;
                        case 2:
                            qhi.cJ(Tgh.cJ(xmlPullParser, name));
                            break;
                        case 3:
                            list.addAll(Tgh.Qhi(xmlPullParser, name));
                            break;
                        case 4:
                            while (true) {
                                if (xmlPullParser.getEventType() != 3 || !"Extensions".equals(xmlPullParser.getName())) {
                                    xmlPullParser.next();
                                    if (xmlPullParser.getEventType() == 2 && "AdVerifications".equals(xmlPullParser.getName())) {
                                        qhi.Qhi(fl.Qhi(xmlPullParser));
                                    }
                                }
                            }
                            break;
                        case 5:
                            qhi.Qhi(Tgh.cJ(xmlPullParser, name));
                            break;
                        case 6:
                            qhi.Qhi().Qhi(Tgh.Qhi(xmlPullParser, name));
                            break;
                        default:
                            Tgh.Qhi(xmlPullParser);
                            break;
                    }
                }
            } else {
                qhi.Qhi().WAv(list);
                return qhi;
            }
        }
    }

    public static void Qhi(Context context, XmlPullParser xmlPullParser, com.bytedance.sdk.openadsdk.core.ROR.Qhi qhi, int i, double d2) throws IOException, XmlPullParserException {
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if ("Linear".equals(xmlPullParser.getName()) && TextUtils.isEmpty(qhi.ROR())) {
                    ac.Qhi(xmlPullParser, qhi, i, d2);
                } else if ("CompanionAds".equals(xmlPullParser.getName()) && qhi.ac() == null) {
                    qhi.Qhi(Qhi.Qhi(context, xmlPullParser));
                } else {
                    Tgh.Qhi(xmlPullParser);
                }
            }
        }
    }
}

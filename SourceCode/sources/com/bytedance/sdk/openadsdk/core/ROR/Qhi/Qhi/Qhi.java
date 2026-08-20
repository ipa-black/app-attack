package com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi;

import android.content.Context;
import android.graphics.Point;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi.Tgh;
import com.bytedance.sdk.openadsdk.core.ROR.ac.Qhi;
import io.bidmachine.utils.IabUtils;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* compiled from: CompanionAdsParser.java */
/* loaded from: classes2.dex */
public class Qhi {
    public static com.bytedance.sdk.openadsdk.core.ROR.ac Qhi(Context context, XmlPullParser xmlPullParser) throws IOException, XmlPullParserException {
        com.bytedance.sdk.openadsdk.core.ROR.ac acVar;
        Tgh.Qhi qhi;
        int i;
        Qhi.EnumC0217Qhi enumC0217Qhi;
        int i2;
        int i3;
        char c2;
        if (context == null) {
            Tgh.Qhi(xmlPullParser);
            return null;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i4 = displayMetrics.widthPixels;
        int i5 = displayMetrics.heightPixels;
        int i6 = (int) (i4 / displayMetrics.density);
        int i7 = (int) (i5 / displayMetrics.density);
        float f2 = Float.MIN_VALUE;
        com.bytedance.sdk.openadsdk.core.ROR.ac acVar2 = null;
        while (true) {
            int i8 = 3;
            if (xmlPullParser.getEventType() == 3 && xmlPullParser.getName().equals("CompanionAds")) {
                return acVar2;
            }
            xmlPullParser.next();
            int i9 = 2;
            if (xmlPullParser.getEventType() == 2) {
                String str = "Companion";
                if (xmlPullParser.getName().equals("Companion")) {
                    int cJ = Tgh.cJ(xmlPullParser.getAttributeValue(Tgh.ROR, IabUtils.KEY_WIDTH));
                    int cJ2 = Tgh.cJ(xmlPullParser.getAttributeValue(Tgh.ROR, IabUtils.KEY_HEIGHT));
                    if (cJ < 300 || cJ2 < 250) {
                        acVar = acVar2;
                        Tgh.Qhi(xmlPullParser);
                        acVar2 = acVar;
                    } else {
                        Tgh.Qhi qhi2 = new Tgh.Qhi();
                        while (true) {
                            if (xmlPullParser.getEventType() != i8 || !xmlPullParser.getName().equals(str)) {
                                xmlPullParser.next();
                                if (xmlPullParser.getEventType() == i9) {
                                    String name = xmlPullParser.getName();
                                    name.hashCode();
                                    com.bytedance.sdk.openadsdk.core.ROR.ac acVar3 = acVar2;
                                    String str2 = str;
                                    char c3 = 65535;
                                    switch (name.hashCode()) {
                                        case -375340334:
                                            if (name.equals("IFrameResource")) {
                                                c2 = 0;
                                                c3 = c2;
                                                break;
                                            }
                                            break;
                                        case -348198615:
                                            if (name.equals("CompanionClickThrough")) {
                                                c2 = 1;
                                                c3 = c2;
                                                break;
                                            }
                                            break;
                                        case 611554000:
                                            if (name.equals("TrackingEvents")) {
                                                c3 = 2;
                                                break;
                                            }
                                            break;
                                        case 676623548:
                                            if (name.equals("StaticResource")) {
                                                c3 = 3;
                                                break;
                                            }
                                            break;
                                        case 1877773523:
                                            if (name.equals("CompanionClickTracking")) {
                                                c2 = 4;
                                                c3 = c2;
                                                break;
                                            }
                                            break;
                                        case 1928285401:
                                            if (name.equals("HTMLResource")) {
                                                c2 = 5;
                                                c3 = c2;
                                                break;
                                            }
                                            break;
                                    }
                                    switch (c3) {
                                        case 0:
                                            Tgh.Qhi qhi3 = qhi2;
                                            int i10 = cJ2;
                                            int i11 = cJ;
                                            Point Qhi = com.bytedance.sdk.openadsdk.core.ROR.ac.Qhi.Qhi(context, i11, i10, Qhi.cJ.HTML_RESOURCE);
                                            float Qhi2 = com.bytedance.sdk.openadsdk.core.ROR.ac.Qhi(i6, i7, Qhi.x, Qhi.y, Qhi.cJ.IFRAME_RESOURCE, Qhi.EnumC0217Qhi.NONE);
                                            String cJ3 = Tgh.cJ(xmlPullParser, "IFrameResource");
                                            if (TextUtils.isEmpty(cJ3) || Qhi2 <= qhi3.ROR || Qhi2 <= f2) {
                                                i2 = 3;
                                                Tgh.Qhi(xmlPullParser, "IFrameResource", 3);
                                                qhi2 = qhi3;
                                                cJ2 = i10;
                                                cJ = i11;
                                                i9 = 2;
                                                acVar2 = acVar3;
                                                str = str2;
                                                i8 = i2;
                                                break;
                                            } else {
                                                qhi3.ROR = Qhi2;
                                                qhi3.Qhi(cJ3, Qhi.EnumC0217Qhi.NONE, Qhi.cJ.IFRAME_RESOURCE);
                                                qhi2 = qhi3;
                                                cJ2 = i10;
                                                cJ = i11;
                                                i9 = 2;
                                                acVar2 = acVar3;
                                                str = str2;
                                                i8 = 3;
                                                break;
                                            }
                                        case 1:
                                            qhi2.CJ = Tgh.cJ(xmlPullParser, "CompanionClickThrough");
                                            i9 = 2;
                                            cJ = cJ;
                                            acVar2 = acVar3;
                                            str = str2;
                                            i8 = 3;
                                            break;
                                        case 2:
                                            qhi = qhi2;
                                            i3 = cJ2;
                                            i = cJ;
                                            while (true) {
                                                if (xmlPullParser.next() == 3 && xmlPullParser.getName().equals("TrackingEvents")) {
                                                    cJ2 = i3;
                                                    cJ = i;
                                                    qhi2 = qhi;
                                                    acVar2 = acVar3;
                                                    str = str2;
                                                    i8 = 3;
                                                    i9 = 2;
                                                    break;
                                                } else if (xmlPullParser.getEventType() == 2 && xmlPullParser.getName().equals("Tracking")) {
                                                    qhi.cJ(Tgh.cJ(xmlPullParser, "Tracking"));
                                                }
                                            }
                                            break;
                                        case 3:
                                            qhi = qhi2;
                                            int i12 = cJ2;
                                            i = cJ;
                                            Qhi.EnumC0217Qhi enumC0217Qhi2 = Qhi.EnumC0217Qhi.NONE;
                                            String lowerCase = xmlPullParser.getAttributeValue(Tgh.ROR, "creativeType").toLowerCase();
                                            if (com.bytedance.sdk.openadsdk.core.ROR.ac.Qhi.Qhi.contains(lowerCase)) {
                                                enumC0217Qhi = Qhi.EnumC0217Qhi.IMAGE;
                                            } else {
                                                enumC0217Qhi = Qhi.EnumC0217Qhi.JAVASCRIPT;
                                            }
                                            Qhi.EnumC0217Qhi enumC0217Qhi3 = enumC0217Qhi;
                                            Point Qhi3 = com.bytedance.sdk.openadsdk.core.ROR.ac.Qhi.Qhi(context, i, i12, Qhi.cJ.STATIC_RESOURCE);
                                            float Qhi4 = com.bytedance.sdk.openadsdk.core.ROR.ac.Qhi(i6, i7, Qhi3.x, Qhi3.y, Qhi.cJ.STATIC_RESOURCE, enumC0217Qhi3);
                                            String cJ4 = (com.bytedance.sdk.openadsdk.core.ROR.ac.Qhi.Qhi.contains(lowerCase) || com.bytedance.sdk.openadsdk.core.ROR.ac.Qhi.cJ.contains(lowerCase)) ? Tgh.cJ(xmlPullParser, "StaticResource") : null;
                                            if (Qhi4 < qhi.ROR || Qhi4 <= f2 || TextUtils.isEmpty(cJ4)) {
                                                i2 = 3;
                                                Tgh.Qhi(xmlPullParser, "StaticResource", 3);
                                                cJ2 = i12;
                                                cJ = i;
                                                qhi2 = qhi;
                                                acVar2 = acVar3;
                                                str = str2;
                                                i9 = 2;
                                                i8 = i2;
                                                break;
                                            } else {
                                                qhi.ROR = Qhi4;
                                                qhi.Qhi(cJ4, enumC0217Qhi3, Qhi.cJ.STATIC_RESOURCE);
                                                cJ2 = i12;
                                                cJ = i;
                                                qhi2 = qhi;
                                                acVar2 = acVar3;
                                                str = str2;
                                                i8 = 3;
                                                i9 = 2;
                                                break;
                                            }
                                            break;
                                        case 4:
                                            qhi2.Qhi(Tgh.cJ(xmlPullParser, "CompanionClickTracking"));
                                            acVar2 = acVar3;
                                            str = str2;
                                            i8 = 3;
                                            i9 = 2;
                                            break;
                                        case 5:
                                            Point Qhi5 = com.bytedance.sdk.openadsdk.core.ROR.ac.Qhi.Qhi(context, cJ, cJ2, Qhi.cJ.HTML_RESOURCE);
                                            qhi = qhi2;
                                            int i13 = cJ2;
                                            int i14 = cJ;
                                            float Qhi6 = com.bytedance.sdk.openadsdk.core.ROR.ac.Qhi(i6, i7, Qhi5.x, Qhi5.y, Qhi.cJ.HTML_RESOURCE, Qhi.EnumC0217Qhi.NONE);
                                            String cJ5 = Tgh.cJ(xmlPullParser, "HTMLResource");
                                            if (TextUtils.isEmpty(cJ5) || Qhi6 <= qhi.ROR || Qhi6 <= f2) {
                                                Tgh.Qhi(xmlPullParser, "HTMLResource", 3);
                                                cJ2 = i13;
                                                i8 = 3;
                                                cJ = i14;
                                                qhi2 = qhi;
                                                acVar2 = acVar3;
                                                str = str2;
                                                i9 = 2;
                                                break;
                                            } else {
                                                qhi.ROR = Qhi6;
                                                qhi.Qhi(cJ5, Qhi.EnumC0217Qhi.NONE, Qhi.cJ.HTML_RESOURCE);
                                                cJ2 = i13;
                                                cJ = i14;
                                                qhi2 = qhi;
                                                acVar2 = acVar3;
                                                str = str2;
                                                i8 = 3;
                                                i9 = 2;
                                            }
                                            break;
                                        default:
                                            Tgh.Qhi(xmlPullParser);
                                            qhi = qhi2;
                                            i3 = cJ2;
                                            i = cJ;
                                            cJ2 = i3;
                                            cJ = i;
                                            qhi2 = qhi;
                                            acVar2 = acVar3;
                                            str = str2;
                                            i8 = 3;
                                            i9 = 2;
                                            break;
                                    }
                                }
                            } else if (!TextUtils.isEmpty(qhi2.Qhi) && qhi2.ROR >= f2) {
                                acVar2 = new com.bytedance.sdk.openadsdk.core.ROR.ac(cJ, cJ2, qhi2.cJ, qhi2.ac, qhi2.Qhi, qhi2.fl, qhi2.Tgh, qhi2.CJ);
                                f2 = qhi2.ROR;
                            }
                        }
                    }
                }
            }
            acVar = acVar2;
            acVar2 = acVar;
        }
    }
}

package com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi.Tgh;
import com.bytedance.sdk.openadsdk.core.ROR.ac.Qhi;
import com.bytedance.sdk.openadsdk.core.ROR.cJ.ac;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import io.bidmachine.utils.IabUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* compiled from: LinearParser.java */
/* loaded from: classes2.dex */
public class ac {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0050, code lost:
        if (r2.equals("Icons") == false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void Qhi(org.xmlpull.v1.XmlPullParser r8, com.bytedance.sdk.openadsdk.core.ROR.Qhi r9, int r10, double r11) throws java.io.IOException, org.xmlpull.v1.XmlPullParserException {
        /*
            r0 = 0
            r1 = r0
        L2:
            int r2 = r8.next()
            r3 = 3
            if (r2 != r3) goto L17
            java.lang.String r2 = r8.getName()
            java.lang.String r4 = "Linear"
            boolean r2 = r2.equals(r4)
            if (r2 != 0) goto L16
            goto L17
        L16:
            return
        L17:
            int r2 = r8.getEventType()
            r4 = 2
            if (r2 != r4) goto L2
            if (r1 == 0) goto L2d
            java.lang.String r2 = r9.ROR()
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L2d
            com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi.Tgh.Qhi(r8)
        L2d:
            java.lang.String r2 = r8.getName()
            r2.hashCode()
            int r5 = r2.hashCode()
            r6 = 1
            r7 = -1
            switch(r5) {
                case -2049897434: goto L69;
                case -1927368268: goto L5e;
                case -385055469: goto L53;
                case 70476538: goto L4a;
                case 611554000: goto L3f;
                default: goto L3d;
            }
        L3d:
            r3 = r7
            goto L73
        L3f:
            java.lang.String r3 = "TrackingEvents"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L48
            goto L3d
        L48:
            r3 = 4
            goto L73
        L4a:
            java.lang.String r4 = "Icons"
            boolean r2 = r2.equals(r4)
            if (r2 != 0) goto L73
            goto L3d
        L53:
            java.lang.String r3 = "MediaFiles"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L5c
            goto L3d
        L5c:
            r3 = r4
            goto L73
        L5e:
            java.lang.String r3 = "Duration"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L67
            goto L3d
        L67:
            r3 = r6
            goto L73
        L69:
            java.lang.String r3 = "VideoClicks"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L72
            goto L3d
        L72:
            r3 = r0
        L73:
            switch(r3) {
                case 0: goto La2;
                case 1: goto L99;
                case 2: goto L93;
                case 3: goto L82;
                case 4: goto L7a;
                default: goto L76;
            }
        L76:
            com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi.Tgh.Qhi(r8)
            goto L2
        L7a:
            com.bytedance.sdk.openadsdk.core.ROR.fl r2 = r9.Qhi()
            Qhi(r8, r2)
            goto L2
        L82:
            com.bytedance.sdk.openadsdk.core.ROR.cJ r2 = Qhi(r8)
            if (r2 == 0) goto L2
            com.bytedance.sdk.openadsdk.core.ROR.cJ r3 = r9.cJ()
            if (r3 != 0) goto L2
            r9.Qhi(r2)
            goto L2
        L93:
            Qhi(r8, r10, r11, r9)
            r1 = r6
            goto L2
        L99:
            double r2 = cJ(r8)
            r9.Qhi(r2)
            goto L2
        La2:
            Qhi(r8, r9)
            goto L2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi.ac.Qhi(org.xmlpull.v1.XmlPullParser, com.bytedance.sdk.openadsdk.core.ROR.Qhi, int, double):void");
    }

    private static String Qhi(XmlPullParser xmlPullParser, int i, double d2, com.bytedance.sdk.openadsdk.core.ROR.Qhi qhi) throws IOException, XmlPullParserException {
        double d3 = Double.NEGATIVE_INFINITY;
        String str = null;
        int i2 = Integer.MIN_VALUE;
        int i3 = Integer.MIN_VALUE;
        while (true) {
            if (xmlPullParser.next() == 3 && xmlPullParser.getName().equals("MediaFiles")) {
                break;
            } else if (xmlPullParser.getEventType() == 2 && xmlPullParser.getName().equals("MediaFile")) {
                String attributeValue = xmlPullParser.getAttributeValue(Tgh.ROR, SessionDescription.ATTR_TYPE);
                int cJ = Tgh.cJ(xmlPullParser.getAttributeValue(Tgh.ROR, IabUtils.KEY_WIDTH));
                int cJ2 = Tgh.cJ(xmlPullParser.getAttributeValue(Tgh.ROR, IabUtils.KEY_HEIGHT));
                int cJ3 = Tgh.cJ(xmlPullParser.getAttributeValue(Tgh.ROR, "bitrate"));
                String cJ4 = Tgh.cJ(xmlPullParser, "MediaFile");
                if (cJ > 0 && cJ2 > 0 && com.bytedance.sdk.openadsdk.core.ROR.ac.fl.Qhi.contains(attributeValue) && !TextUtils.isEmpty(cJ4)) {
                    double Qhi = com.bytedance.sdk.openadsdk.core.ROR.ac.fl.Qhi(i, d2, cJ, cJ2, cJ3, attributeValue);
                    if (Qhi > d3) {
                        str = cJ4;
                        i2 = cJ;
                        d3 = Qhi;
                        i3 = cJ2;
                    }
                }
            }
        }
        if (!TextUtils.isEmpty(str)) {
            qhi.CJ(str);
            qhi.Qhi(i2);
            qhi.cJ(i3);
        }
        return str;
    }

    public static com.bytedance.sdk.openadsdk.core.ROR.cJ Qhi(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        com.bytedance.sdk.openadsdk.core.ROR.cJ cJVar;
        com.bytedance.sdk.openadsdk.core.ROR.cJ cJVar2;
        int i;
        ArrayList arrayList;
        int i2;
        int i3;
        int i4;
        Qhi.EnumC0217Qhi enumC0217Qhi;
        char c2;
        com.bytedance.sdk.openadsdk.core.ROR.cJ cJVar3 = null;
        while (true) {
            int i5 = 3;
            if (xmlPullParser.getEventType() == 3 && xmlPullParser.getName().equals("Icons")) {
                return cJVar3;
            }
            xmlPullParser.next();
            int i6 = 2;
            if (xmlPullParser.getEventType() == 2 && xmlPullParser.getName().equals("Icon")) {
                int cJ = Tgh.cJ(xmlPullParser.getAttributeValue(Tgh.ROR, IabUtils.KEY_WIDTH));
                int cJ2 = Tgh.cJ(xmlPullParser.getAttributeValue(Tgh.ROR, IabUtils.KEY_HEIGHT));
                if (cJ <= 0 || cJ > 300 || cJ2 <= 0 || cJ2 > 300) {
                    cJVar = cJVar3;
                    Tgh.Qhi(xmlPullParser);
                } else {
                    int Qhi = com.bytedance.sdk.openadsdk.core.ROR.cJ.Qhi.Qhi(xmlPullParser.getAttributeValue(Tgh.ROR, TypedValues.CycleType.S_WAVE_OFFSET));
                    int Qhi2 = com.bytedance.sdk.openadsdk.core.ROR.cJ.Qhi.Qhi(xmlPullParser.getAttributeValue(Tgh.ROR, "duration"));
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    Tgh.Qhi qhi = null;
                    String str = null;
                    while (true) {
                        if (xmlPullParser.next() != i5 || !xmlPullParser.getName().equals("Icon")) {
                            ArrayList arrayList4 = arrayList3;
                            ArrayList arrayList5 = arrayList2;
                            if (xmlPullParser.getEventType() == i6) {
                                String name = xmlPullParser.getName();
                                name.hashCode();
                                cJVar2 = cJVar3;
                                char c3 = 65535;
                                switch (name.hashCode()) {
                                    case -1044238411:
                                        if (name.equals("IconViewTracking")) {
                                            c2 = 0;
                                            c3 = c2;
                                            break;
                                        }
                                        break;
                                    case -375340334:
                                        if (name.equals("IFrameResource")) {
                                            c2 = 1;
                                            c3 = c2;
                                            break;
                                        }
                                        break;
                                    case 676623548:
                                        if (name.equals("StaticResource")) {
                                            c3 = 2;
                                            break;
                                        }
                                        break;
                                    case 1030746596:
                                        if (name.equals("IconClicks")) {
                                            c3 = 3;
                                            break;
                                        }
                                        break;
                                    case 1928285401:
                                        if (name.equals("HTMLResource")) {
                                            c2 = 4;
                                            c3 = c2;
                                            break;
                                        }
                                        break;
                                }
                                switch (c3) {
                                    case 0:
                                        i2 = 3;
                                        i = 2;
                                        arrayList = arrayList4;
                                        arrayList.add(new ac.Qhi(Tgh.cJ(xmlPullParser, "IconViewTracking")).Qhi());
                                        break;
                                    case 1:
                                        i3 = 3;
                                        i4 = 2;
                                        if (qhi == null) {
                                            qhi = new Tgh.Qhi(Tgh.cJ(xmlPullParser, "IFrameResource"), Qhi.EnumC0217Qhi.NONE, Qhi.cJ.IFRAME_RESOURCE);
                                            arrayList2 = arrayList5;
                                            i5 = i3;
                                            i6 = i4;
                                            cJVar3 = cJVar2;
                                            arrayList3 = arrayList4;
                                            break;
                                        }
                                        Tgh.Qhi(xmlPullParser);
                                        arrayList2 = arrayList5;
                                        i5 = i3;
                                        i6 = i4;
                                        cJVar3 = cJVar2;
                                        arrayList3 = arrayList4;
                                    case 2:
                                        i3 = 3;
                                        i4 = 2;
                                        Qhi.EnumC0217Qhi enumC0217Qhi2 = Qhi.EnumC0217Qhi.NONE;
                                        String lowerCase = xmlPullParser.getAttributeValue(Tgh.ROR, "creativeType").toLowerCase();
                                        String cJ3 = (com.bytedance.sdk.openadsdk.core.ROR.ac.Qhi.Qhi.contains(lowerCase) || com.bytedance.sdk.openadsdk.core.ROR.ac.Qhi.cJ.contains(lowerCase)) ? Tgh.cJ(xmlPullParser, "StaticResource") : null;
                                        if (com.bytedance.sdk.openadsdk.core.ROR.ac.Qhi.Qhi.contains(lowerCase)) {
                                            enumC0217Qhi = Qhi.EnumC0217Qhi.IMAGE;
                                        } else {
                                            enumC0217Qhi = Qhi.EnumC0217Qhi.JAVASCRIPT;
                                        }
                                        qhi = new Tgh.Qhi(cJ3, enumC0217Qhi, Qhi.cJ.STATIC_RESOURCE);
                                        arrayList2 = arrayList5;
                                        i5 = i3;
                                        i6 = i4;
                                        cJVar3 = cJVar2;
                                        arrayList3 = arrayList4;
                                        break;
                                    case 3:
                                        while (true) {
                                            i3 = 3;
                                            if (xmlPullParser.next() == 3 && xmlPullParser.getName().equals("IconClicks")) {
                                                i4 = 2;
                                                arrayList2 = arrayList5;
                                                i5 = i3;
                                                i6 = i4;
                                                cJVar3 = cJVar2;
                                                arrayList3 = arrayList4;
                                                break;
                                            } else if (xmlPullParser.getEventType() == 2) {
                                                if (xmlPullParser.getName().equals("IconClickThrough")) {
                                                    str = Tgh.cJ(xmlPullParser, "IconClickThrough");
                                                } else if (xmlPullParser.getName().equals("IconClickTracking")) {
                                                    arrayList5.add(new ac.Qhi(Tgh.cJ(xmlPullParser, "IconClickTracking")).Qhi());
                                                }
                                            }
                                        }
                                        break;
                                    case 4:
                                        if (qhi == null || qhi.ac == Qhi.cJ.IFRAME_RESOURCE) {
                                            qhi = new Tgh.Qhi(Tgh.cJ(xmlPullParser, "HTMLResource"), Qhi.EnumC0217Qhi.NONE, Qhi.cJ.HTML_RESOURCE);
                                            arrayList2 = arrayList5;
                                            cJVar3 = cJVar2;
                                            arrayList3 = arrayList4;
                                            i5 = 3;
                                            i6 = 2;
                                            break;
                                        } else {
                                            i3 = 3;
                                            i4 = 2;
                                            Tgh.Qhi(xmlPullParser);
                                            arrayList2 = arrayList5;
                                            i5 = i3;
                                            i6 = i4;
                                            cJVar3 = cJVar2;
                                            arrayList3 = arrayList4;
                                            break;
                                        }
                                        break;
                                    default:
                                        i3 = 3;
                                        i4 = 2;
                                        Tgh.Qhi(xmlPullParser);
                                        arrayList2 = arrayList5;
                                        i5 = i3;
                                        i6 = i4;
                                        cJVar3 = cJVar2;
                                        arrayList3 = arrayList4;
                                        break;
                                }
                            } else {
                                cJVar2 = cJVar3;
                                i = i6;
                                arrayList = arrayList4;
                                i2 = 3;
                            }
                            arrayList2 = arrayList5;
                            i5 = i2;
                            i6 = i;
                            arrayList3 = arrayList;
                            cJVar3 = cJVar2;
                        } else if (qhi != null && (cJVar3 == null || TextUtils.isEmpty(cJVar3.Tgh()))) {
                            cJVar3 = new com.bytedance.sdk.openadsdk.core.ROR.cJ(cJ, cJ2, Qhi, Qhi2, qhi.cJ, qhi.ac, qhi.Qhi, arrayList2, arrayList3, str);
                            Tgh.Qhi(xmlPullParser, "Icons", 3);
                        }
                    }
                }
            } else {
                cJVar = cJVar3;
            }
            cJVar3 = cJVar;
        }
    }

    public static double cJ(XmlPullParser xmlPullParser) throws IOException, XmlPullParserException {
        String[] split = Tgh.cJ(xmlPullParser, "Duration").split(":");
        if (split.length == 3) {
            try {
                return (Integer.parseInt(split[0].trim()) * 3600) + (Integer.parseInt(split[1].trim()) * 60) + Float.parseFloat(split[2].trim());
            } catch (Exception unused) {
                return 0.0d;
            }
        }
        return 0.0d;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00af, code lost:
        if (r0.equals("unmute") == false) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void Qhi(org.xmlpull.v1.XmlPullParser r7, com.bytedance.sdk.openadsdk.core.ROR.fl r8) throws java.io.IOException, org.xmlpull.v1.XmlPullParserException {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi.ac.Qhi(org.xmlpull.v1.XmlPullParser, com.bytedance.sdk.openadsdk.core.ROR.fl):void");
    }

    private static void Qhi(XmlPullParser xmlPullParser, com.bytedance.sdk.openadsdk.core.ROR.Qhi qhi) throws IOException, XmlPullParserException {
        while (true) {
            if (xmlPullParser.next() == 3 && xmlPullParser.getName().equals("VideoClicks")) {
                return;
            }
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                name.hashCode();
                if (name.equals("ClickThrough")) {
                    qhi.ac(Tgh.cJ(xmlPullParser, "ClickThrough"));
                } else if (name.equals("ClickTracking")) {
                    qhi.Qhi().ROR(Tgh.Qhi(xmlPullParser, "ClickTracking"));
                } else {
                    Tgh.Qhi(xmlPullParser);
                }
            }
        }
    }

    private static List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> ac(XmlPullParser xmlPullParser) throws IOException, XmlPullParserException {
        return Tgh.Qhi(xmlPullParser, "Tracking");
    }
}

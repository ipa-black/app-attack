package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import antlr.Version;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
/* compiled from: InteractViewFactory.java */
/* loaded from: classes2.dex */
public class Gm {
    public static hm Qhi(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ac.Sf sf, com.bytedance.sdk.component.adexpress.dynamic.ac.Gm gm, com.bytedance.sdk.component.adexpress.cJ.iMK imk) {
        if (context == null || dynamicBaseWidget == null || sf == null) {
            return null;
        }
        String ip = sf.ip();
        String Dww = imk.Dww();
        ip.hashCode();
        char c2 = 65535;
        switch (ip.hashCode()) {
            case 48:
                if (ip.equals("0")) {
                    c2 = 0;
                    break;
                }
                break;
            case 49:
                if (ip.equals(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE)) {
                    c2 = 1;
                    break;
                }
                break;
            case 50:
                if (ip.equals("2")) {
                    c2 = 2;
                    break;
                }
                break;
            case 53:
                if (ip.equals("5")) {
                    c2 = 3;
                    break;
                }
                break;
            case 54:
                if (ip.equals("6")) {
                    c2 = 4;
                    break;
                }
                break;
            case 55:
                if (ip.equals(Version.subversion)) {
                    c2 = 5;
                    break;
                }
                break;
            case 56:
                if (ip.equals("8")) {
                    c2 = 6;
                    break;
                }
                break;
            case 57:
                if (ip.equals("9")) {
                    c2 = 7;
                    break;
                }
                break;
            case 1567:
                if (ip.equals("10")) {
                    c2 = '\b';
                    break;
                }
                break;
            case 1568:
                if (ip.equals("11")) {
                    c2 = '\t';
                    break;
                }
                break;
            case 1569:
                if (ip.equals("12")) {
                    c2 = '\n';
                    break;
                }
                break;
            case 1570:
                if (ip.equals("13")) {
                    c2 = 11;
                    break;
                }
                break;
            case 1571:
                if (ip.equals("14")) {
                    c2 = '\f';
                    break;
                }
                break;
            case 1573:
                if (ip.equals("16")) {
                    c2 = '\r';
                    break;
                }
                break;
            case 1574:
                if (ip.equals("17")) {
                    c2 = 14;
                    break;
                }
                break;
            case 1575:
                if (ip.equals("18")) {
                    c2 = 15;
                    break;
                }
                break;
            case 1598:
                if (ip.equals("20")) {
                    c2 = 16;
                    break;
                }
                break;
            case 1600:
                if (ip.equals("22")) {
                    c2 = 17;
                    break;
                }
                break;
            case 1601:
                if (ip.equals("23")) {
                    c2 = 18;
                    break;
                }
                break;
            case 1602:
                if (ip.equals("24")) {
                    c2 = 19;
                    break;
                }
                break;
            case 1603:
                if (ip.equals("25")) {
                    c2 = 20;
                    break;
                }
                break;
            case 1607:
                if (ip.equals("29")) {
                    c2 = 21;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return new ROR(context, dynamicBaseWidget, sf);
            case 1:
                return new fl(context, dynamicBaseWidget, sf);
            case 2:
                return new ac(context, dynamicBaseWidget, sf);
            case 3:
                if (sf.jPH() == 1) {
                    return new tP(context, dynamicBaseWidget, sf, sf.ots());
                }
                return new HzH(context, dynamicBaseWidget, sf);
            case 4:
            case '\t':
                return new pA(context, dynamicBaseWidget, sf);
            case 5:
            case '\f':
                return new ABk(context, dynamicBaseWidget, sf);
            case 6:
                return new iMK(context, dynamicBaseWidget, sf);
            case 7:
            case '\r':
                return new hpZ(context, dynamicBaseWidget, sf, ip, gm.Qhi(), gm.cJ(), gm.CJ(), gm.ROR());
            case '\b':
                return new Tgh(context, dynamicBaseWidget, sf);
            case '\n':
                return new HzH(context, dynamicBaseWidget, sf);
            case 11:
                return new tP(context, dynamicBaseWidget, sf);
            case 14:
            case 15:
                return new qMt(context, dynamicBaseWidget, sf, ip, gm);
            case 16:
                if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
                    return new zc(context, dynamicBaseWidget, sf, Dww + "static/lotties/glass-swipe/glass-swipe.json", "20");
                }
                return new cJ(context, dynamicBaseWidget, sf);
            case 17:
                if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
                    return new zc(context, dynamicBaseWidget, sf, Dww + "static/lotties/202327swiper-up-star/index.json", "22");
                }
                return new MQ(context, dynamicBaseWidget, sf);
            case 18:
                if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
                    return new zc(context, dynamicBaseWidget, sf, Dww + "static/lotties/202327swiper-up-star/click.json", "23");
                }
                return null;
            case 19:
                if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
                    return new Qhi(context, dynamicBaseWidget, sf);
                }
                return new kYc(context, dynamicBaseWidget, sf);
            case 20:
                if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
                    return new zc(context, dynamicBaseWidget, sf, Dww + "static/lotties/gesture-slide.json", "25");
                }
                return null;
            case 21:
                return new Sf(context, dynamicBaseWidget, sf, gm.Qhi(), gm.cJ(), gm.CJ(), gm.ROR());
            default:
                return null;
        }
    }
}

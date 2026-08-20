package com.applovin.exoplayer2.e;

import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.l.ai;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public final class r {

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f2699c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a  reason: collision with root package name */
    public int f2700a = -1;

    /* renamed from: b  reason: collision with root package name */
    public int f2701b = -1;

    private boolean a(String str) {
        Matcher matcher = f2699c.matcher(str);
        if (matcher.find()) {
            try {
                int parseInt = Integer.parseInt((String) ai.a(matcher.group(1)), 16);
                int parseInt2 = Integer.parseInt((String) ai.a(matcher.group(2)), 16);
                if (parseInt > 0 || parseInt2 > 0) {
                    this.f2700a = parseInt;
                    this.f2701b = parseInt2;
                    return true;
                }
                return false;
            } catch (NumberFormatException unused) {
                return false;
            }
        }
        return false;
    }

    public boolean a() {
        return (this.f2700a == -1 || this.f2701b == -1) ? false : true;
    }

    public boolean a(int i) {
        int i2 = i >> 12;
        int i3 = i & 4095;
        if (i2 > 0 || i3 > 0) {
            this.f2700a = i2;
            this.f2701b = i3;
            return true;
        }
        return false;
    }

    public boolean a(com.applovin.exoplayer2.g.a aVar) {
        for (int i = 0; i < aVar.a(); i++) {
            a.InterfaceC0042a a2 = aVar.a(i);
            if (a2 instanceof com.applovin.exoplayer2.g.e.e) {
                com.applovin.exoplayer2.g.e.e eVar = (com.applovin.exoplayer2.g.e.e) a2;
                if ("iTunSMPB".equals(eVar.f2888b) && a(eVar.f2889c)) {
                    return true;
                }
            } else if (a2 instanceof com.applovin.exoplayer2.g.e.i) {
                com.applovin.exoplayer2.g.e.i iVar = (com.applovin.exoplayer2.g.e.i) a2;
                if ("com.apple.iTunes".equals(iVar.f2900a) && "iTunSMPB".equals(iVar.f2901b) && a(iVar.f2902c)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }
}

package com.facebook.ads.redexgen.X;

import android.view.View;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Collection;
import java.util.Map;
import java.util.WeakHashMap;
@Nullsafe(Nullsafe.Mode.LOCAL)
/* renamed from: com.facebook.ads.redexgen.X.b2  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1330b2 {
    public final Map<View, C1337b9> A00 = new WeakHashMap();

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 3 out of bounds for length 3
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:147)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public final synchronized C1337b9 A00(View view) {
        C1337b9 c1337b9 = this.A00.get(view);
        if (c1337b9 == null) {
            return C1337b9.A08;
        }
        return c1337b9;
    }

    public final synchronized void A01(View view) {
        this.A00.remove(view);
    }

    public final synchronized void A02(View view, C1337b9 c1337b9) {
        this.A00.put(view, c1337b9);
    }

    public final synchronized void A03(Collection<View> result) {
        for (View view : this.A00.keySet()) {
            result.add(view);
        }
    }
}

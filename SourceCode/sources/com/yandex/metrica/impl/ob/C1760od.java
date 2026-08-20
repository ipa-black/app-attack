package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.H1;
import com.yandex.metrica.networktasks.api.IExecutionPolicy;
import java.util.EnumSet;
/* renamed from: com.yandex.metrica.impl.ob.od  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1760od implements IExecutionPolicy {

    /* renamed from: c  reason: collision with root package name */
    private static final EnumSet<H1.d> f15336c = EnumSet.of(H1.d.OFFLINE);

    /* renamed from: a  reason: collision with root package name */
    private Rl f15337a = new Ml();

    /* renamed from: b  reason: collision with root package name */
    private final Context f15338b;

    public C1760od(Context context) {
        this.f15338b = context;
    }

    @Override // com.yandex.metrica.networktasks.api.IExecutionPolicy
    public boolean canBeExecuted() {
        Rl rl = this.f15337a;
        Context context = this.f15338b;
        ((Ml) rl).getClass();
        return !f15336c.contains(H1.a(context));
    }
}

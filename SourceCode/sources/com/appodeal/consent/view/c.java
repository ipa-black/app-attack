package com.appodeal.consent.view;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class c extends Lambda implements Function0<Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ b f8162a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(b bVar) {
        super(0);
        this.f8162a = bVar;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Unit invoke() {
        String closeJs;
        b bVar = this.f8162a;
        closeJs = bVar.getCloseJs();
        b.a(bVar, closeJs);
        if (!this.f8162a.f8157g.getAndSet(true)) {
            this.f8162a.f8151a.a((JSONObject) null);
        }
        return Unit.INSTANCE;
    }
}

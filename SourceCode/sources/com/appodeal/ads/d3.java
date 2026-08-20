package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import com.appodeal.ads.networking.binders.b;
import com.explorestack.iab.vast.VastError;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes.dex */
public final class d3 extends Lambda implements Function1<JsonObjectBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ b.a.InterfaceC0131a f6627a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d3(b.a.InterfaceC0131a interfaceC0131a) {
        super(1);
        this.f6627a = interfaceC0131a;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
        int i;
        JsonObjectBuilder jsonObject = jsonObjectBuilder;
        Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
        jsonObject.hasValue(SessionDescription.ATTR_TYPE, this.f6627a.getType());
        b.a.InterfaceC0131a interfaceC0131a = this.f6627a;
        if (!(interfaceC0131a instanceof b.a.InterfaceC0131a.C0132a)) {
            if (interfaceC0131a instanceof b.a.InterfaceC0131a.c) {
                i = VastError.ERROR_CODE_GENERAL_WRAPPER;
            }
            return Unit.INSTANCE;
        }
        jsonObject.hasValue("animation", Boolean.valueOf(((b.a.InterfaceC0131a.C0132a) interfaceC0131a).a()));
        jsonObject.hasValue("smart", Boolean.valueOf(((b.a.InterfaceC0131a.C0132a) this.f6627a).c()));
        i = ((b.a.InterfaceC0131a.C0132a) this.f6627a).b();
        jsonObject.hasValue("size", Integer.valueOf(i));
        return Unit.INSTANCE;
    }
}

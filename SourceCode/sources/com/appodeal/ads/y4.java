package com.appodeal.ads;

import android.app.Application;
import android.content.Context;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.libs.network.AppodealEndpoints;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.exoplayer2.util.MimeTypes;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
@DebugMetadata(c = "com.appodeal.ads.SdkCoreInitializerImpl", f = "SdkCoreInitializer.kt", i = {0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2}, l = {175, 179, TsExtractor.TS_PACKET_SIZE}, m = "prepareSdkCore", n = {"this", MimeTypes.BASE_TYPE_APPLICATION, Constants.APP_KEY, "context", "this", MimeTypes.BASE_TYPE_APPLICATION, Constants.APP_KEY, "context", MimeTypes.BASE_TYPE_APPLICATION, Constants.APP_KEY, "context"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2"})
/* loaded from: classes.dex */
public final class y4 extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    public Object f7986a;

    /* renamed from: b  reason: collision with root package name */
    public Object f7987b;

    /* renamed from: c  reason: collision with root package name */
    public Object f7988c;

    /* renamed from: d  reason: collision with root package name */
    public Context f7989d;

    /* renamed from: e  reason: collision with root package name */
    public AppodealEndpoints f7990e;

    /* renamed from: f  reason: collision with root package name */
    public String f7991f;

    /* renamed from: g  reason: collision with root package name */
    public /* synthetic */ Object f7992g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ x4 f7993h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y4(x4 x4Var, Continuation<? super y4> continuation) {
        super(continuation);
        this.f7993h = x4Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f7992g = obj;
        this.i |= Integer.MIN_VALUE;
        return x4.a(this.f7993h, (Application) null, (String) null, this);
    }
}

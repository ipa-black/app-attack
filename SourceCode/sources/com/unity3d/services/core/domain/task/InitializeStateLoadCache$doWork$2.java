package com.unity3d.services.core.domain.task;

import com.google.android.exoplayer2.C;
import com.unity3d.services.core.domain.task.InitializeStateLoadCache;
import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.misc.Utilities;
import java.nio.charset.Charset;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InitializeStateLoadCache.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 2})
@DebugMetadata(c = "com.unity3d.services.core.domain.task.InitializeStateLoadCache$doWork$2", f = "InitializeStateLoadCache.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class InitializeStateLoadCache$doWork$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends String>>, Object> {
    final /* synthetic */ InitializeStateLoadCache.Params $params;
    int label;
    final /* synthetic */ InitializeStateLoadCache this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateLoadCache$doWork$2(InitializeStateLoadCache initializeStateLoadCache, InitializeStateLoadCache.Params params, Continuation continuation) {
        super(2, continuation);
        this.this$0 = initializeStateLoadCache;
        this.$params = params;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        return new InitializeStateLoadCache$doWork$2(this.this$0, this.$params, completion);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends String>> continuation) {
        return ((InitializeStateLoadCache$doWork$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object m501constructorimpl;
        byte[] webViewData;
        String Sha256;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        try {
            Result.Companion companion = Result.Companion;
            DeviceLog.debug("Unity Ads init: check if webapp can be loaded from local cache");
            webViewData = this.this$0.getWebViewData();
            String str = null;
            if (webViewData != null && (Sha256 = Utilities.Sha256(webViewData)) != null && Intrinsics.areEqual(Sha256, this.$params.getConfig().getWebViewHash())) {
                Charset forName = Charset.forName(C.UTF8_NAME);
                Intrinsics.checkNotNullExpressionValue(forName, "Charset.forName(\"UTF-8\")");
                String str2 = new String(webViewData, forName);
                DeviceLog.info("Unity Ads init: webapp loaded from local cache");
                str = str2;
            }
            m501constructorimpl = Result.m501constructorimpl(str);
        } catch (CancellationException e2) {
            throw e2;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m501constructorimpl = Result.m501constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m508isSuccessimpl(m501constructorimpl)) {
            Result.Companion companion3 = Result.Companion;
            m501constructorimpl = Result.m501constructorimpl(m501constructorimpl);
        } else {
            Throwable m504exceptionOrNullimpl = Result.m504exceptionOrNullimpl(m501constructorimpl);
            if (m504exceptionOrNullimpl != null) {
                Result.Companion companion4 = Result.Companion;
                m501constructorimpl = Result.m501constructorimpl(ResultKt.createFailure(m504exceptionOrNullimpl));
            }
        }
        return Result.m500boximpl(m501constructorimpl);
    }
}

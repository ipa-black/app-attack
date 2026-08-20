package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.configuration.Configuration;
import com.unity3d.services.core.configuration.ErrorState;
import com.unity3d.services.core.domain.task.InitializeStateCreateWithRemote;
import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.webview.WebViewApp;
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
/* compiled from: InitializeStateCreateWithRemote.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/unity3d/services/core/configuration/Configuration;", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 2})
@DebugMetadata(c = "com.unity3d.services.core.domain.task.InitializeStateCreateWithRemote$doWork$2", f = "InitializeStateCreateWithRemote.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class InitializeStateCreateWithRemote$doWork$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Configuration>>, Object> {
    final /* synthetic */ InitializeStateCreateWithRemote.Params $params;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateCreateWithRemote$doWork$2(InitializeStateCreateWithRemote.Params params, Continuation continuation) {
        super(2, continuation);
        this.$params = params;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        return new InitializeStateCreateWithRemote$doWork$2(this.$params, completion);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends Configuration>> continuation) {
        return ((InitializeStateCreateWithRemote$doWork$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object m501constructorimpl;
        Configuration config;
        ErrorState create;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        try {
            Result.Companion companion = Result.Companion;
            DeviceLog.debug("Unity Ads init: creating webapp");
            config = this.$params.getConfig();
            try {
                create = WebViewApp.create(config, true);
            } catch (IllegalThreadStateException e2) {
                DeviceLog.exception("Illegal Thread", e2);
                throw new InitializationException(ErrorState.CreateWebApp, e2, config);
            }
        } catch (CancellationException e3) {
            throw e3;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m501constructorimpl = Result.m501constructorimpl(ResultKt.createFailure(th));
        }
        if (create != null) {
            String str = "Unity Ads WebApp creation failed";
            WebViewApp currentApp = WebViewApp.getCurrentApp();
            Intrinsics.checkNotNullExpressionValue(currentApp, "WebViewApp.getCurrentApp()");
            if (currentApp.getWebAppFailureMessage() != null) {
                WebViewApp currentApp2 = WebViewApp.getCurrentApp();
                Intrinsics.checkNotNullExpressionValue(currentApp2, "WebViewApp.getCurrentApp()");
                str = currentApp2.getWebAppFailureMessage();
            }
            DeviceLog.error(str);
            throw new InitializationException(create, new Exception(str), config);
        }
        m501constructorimpl = Result.m501constructorimpl(config);
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

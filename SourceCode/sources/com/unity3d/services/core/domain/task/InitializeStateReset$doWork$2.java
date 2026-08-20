package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.configuration.Configuration;
import com.unity3d.services.core.domain.task.InitializeStateReset;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InitializeStateReset.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/unity3d/services/core/configuration/Configuration;", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 2})
@DebugMetadata(c = "com.unity3d.services.core.domain.task.InitializeStateReset$doWork$2", f = "InitializeStateReset.kt", i = {}, l = {39}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class InitializeStateReset$doWork$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Configuration>>, Object> {
    final /* synthetic */ InitializeStateReset.Params $params;
    int label;
    final /* synthetic */ InitializeStateReset this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateReset$doWork$2(InitializeStateReset initializeStateReset, InitializeStateReset.Params params, Continuation continuation) {
        super(2, continuation);
        this.this$0 = initializeStateReset;
        this.$params = params;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        return new InitializeStateReset$doWork$2(this.this$0, this.$params, completion);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends Configuration>> continuation) {
        return ((InitializeStateReset$doWork$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x007b A[Catch: all -> 0x00c4, CancellationException -> 0x00f1, TryCatch #2 {CancellationException -> 0x00f1, all -> 0x00c4, blocks: (B:5:0x000c, B:21:0x005e, B:26:0x006d, B:28:0x007b, B:32:0x008e, B:34:0x0091, B:36:0x009f, B:37:0x00ac, B:38:0x00af, B:31:0x008c, B:39:0x00ba, B:40:0x00c3, B:24:0x0063, B:25:0x006c, B:10:0x001b, B:12:0x0033, B:13:0x0036, B:15:0x003c, B:18:0x0044), top: B:54:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ba A[Catch: all -> 0x00c4, CancellationException -> 0x00f1, TryCatch #2 {CancellationException -> 0x00f1, all -> 0x00c4, blocks: (B:5:0x000c, B:21:0x005e, B:26:0x006d, B:28:0x007b, B:32:0x008e, B:34:0x0091, B:36:0x009f, B:37:0x00ac, B:38:0x00af, B:31:0x008c, B:39:0x00ba, B:40:0x00c3, B:24:0x0063, B:25:0x006c, B:10:0x001b, B:12:0x0033, B:13:0x0036, B:15:0x003c, B:18:0x0044), top: B:54:0x0008 }] */
    /* JADX WARN: Type inference failed for: r1v1, types: [T, com.unity3d.services.core.webview.WebViewApp] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.domain.task.InitializeStateReset$doWork$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

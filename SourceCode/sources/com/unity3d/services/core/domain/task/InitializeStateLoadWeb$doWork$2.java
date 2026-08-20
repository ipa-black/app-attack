package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.domain.task.InitializeStateLoadWeb;
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
/* compiled from: InitializeStateLoadWeb.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/unity3d/services/core/domain/task/InitializeStateLoadWeb$LoadWebResult;", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 2})
@DebugMetadata(c = "com.unity3d.services.core.domain.task.InitializeStateLoadWeb$doWork$2", f = "InitializeStateLoadWeb.kt", i = {0, 1}, l = {50, 57, 59}, m = "invokeSuspend", n = {"request", "request"}, s = {"L$0", "L$0"})
/* loaded from: classes3.dex */
public final class InitializeStateLoadWeb$doWork$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends InitializeStateLoadWeb.LoadWebResult>>, Object> {
    final /* synthetic */ InitializeStateLoadWeb.Params $params;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ InitializeStateLoadWeb this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateLoadWeb$doWork$2(InitializeStateLoadWeb initializeStateLoadWeb, InitializeStateLoadWeb.Params params, Continuation continuation) {
        super(2, continuation);
        this.this$0 = initializeStateLoadWeb;
        this.$params = params;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        InitializeStateLoadWeb$doWork$2 initializeStateLoadWeb$doWork$2 = new InitializeStateLoadWeb$doWork$2(this.this$0, this.$params, completion);
        initializeStateLoadWeb$doWork$2.L$0 = obj;
        return initializeStateLoadWeb$doWork$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends InitializeStateLoadWeb.LoadWebResult>> continuation) {
        return ((InitializeStateLoadWeb$doWork$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0184, code lost:
        com.unity3d.services.core.misc.Utilities.writeFile(new java.io.File(com.unity3d.services.core.properties.SdkProperties.getLocalWebViewFile()), r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e1 A[Catch: all -> 0x01bb, CancellationException -> 0x01e8, TryCatch #5 {CancellationException -> 0x01e8, all -> 0x01bb, blocks: (B:7:0x0016, B:42:0x012a, B:46:0x0153, B:48:0x015f, B:51:0x016b, B:52:0x0181, B:54:0x0184, B:55:0x0190, B:12:0x0029, B:37:0x00ff, B:39:0x010b, B:43:0x0132, B:44:0x0148, B:32:0x00db, B:34:0x00e1, B:45:0x0149, B:31:0x00d1, B:20:0x0047, B:21:0x0068, B:22:0x0079, B:57:0x01a1, B:58:0x01ba), top: B:78:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x010b A[Catch: all -> 0x01bb, CancellationException -> 0x01e8, TryCatch #5 {CancellationException -> 0x01e8, all -> 0x01bb, blocks: (B:7:0x0016, B:42:0x012a, B:46:0x0153, B:48:0x015f, B:51:0x016b, B:52:0x0181, B:54:0x0184, B:55:0x0190, B:12:0x0029, B:37:0x00ff, B:39:0x010b, B:43:0x0132, B:44:0x0148, B:32:0x00db, B:34:0x00e1, B:45:0x0149, B:31:0x00d1, B:20:0x0047, B:21:0x0068, B:22:0x0079, B:57:0x01a1, B:58:0x01ba), top: B:78:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0132 A[Catch: all -> 0x01bb, CancellationException -> 0x01e8, TryCatch #5 {CancellationException -> 0x01e8, all -> 0x01bb, blocks: (B:7:0x0016, B:42:0x012a, B:46:0x0153, B:48:0x015f, B:51:0x016b, B:52:0x0181, B:54:0x0184, B:55:0x0190, B:12:0x0029, B:37:0x00ff, B:39:0x010b, B:43:0x0132, B:44:0x0148, B:32:0x00db, B:34:0x00e1, B:45:0x0149, B:31:0x00d1, B:20:0x0047, B:21:0x0068, B:22:0x0079, B:57:0x01a1, B:58:0x01ba), top: B:78:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0149 A[Catch: all -> 0x01bb, CancellationException -> 0x01e8, TryCatch #5 {CancellationException -> 0x01e8, all -> 0x01bb, blocks: (B:7:0x0016, B:42:0x012a, B:46:0x0153, B:48:0x015f, B:51:0x016b, B:52:0x0181, B:54:0x0184, B:55:0x0190, B:12:0x0029, B:37:0x00ff, B:39:0x010b, B:43:0x0132, B:44:0x0148, B:32:0x00db, B:34:0x00e1, B:45:0x0149, B:31:0x00d1, B:20:0x0047, B:21:0x0068, B:22:0x0079, B:57:0x01a1, B:58:0x01ba), top: B:78:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x015f A[Catch: all -> 0x01bb, CancellationException -> 0x01e8, TryCatch #5 {CancellationException -> 0x01e8, all -> 0x01bb, blocks: (B:7:0x0016, B:42:0x012a, B:46:0x0153, B:48:0x015f, B:51:0x016b, B:52:0x0181, B:54:0x0184, B:55:0x0190, B:12:0x0029, B:37:0x00ff, B:39:0x010b, B:43:0x0132, B:44:0x0148, B:32:0x00db, B:34:0x00e1, B:45:0x0149, B:31:0x00d1, B:20:0x0047, B:21:0x0068, B:22:0x0079, B:57:0x01a1, B:58:0x01ba), top: B:78:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01d3  */
    /* JADX WARN: Type inference failed for: r0v20, types: [com.unity3d.services.core.request.WebRequest, T] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            Method dump skipped, instructions count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.domain.task.InitializeStateLoadWeb$doWork$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

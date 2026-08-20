package com.unity3d.services.core.domain.task;

import com.appodeal.ads.modules.common.internal.Constants;
import com.unity3d.services.core.configuration.Configuration;
import com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader;
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
/* compiled from: InitializeStateConfigWithLoader.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/unity3d/services/core/configuration/Configuration;", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 2})
@DebugMetadata(c = "com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader$doWork$2", f = "InitializeStateConfigWithLoader.kt", i = {0, 0, 0, 1, 1, 1, 2}, l = {58, 80, 83}, m = "invokeSuspend", n = {"$this$withContext", "configurationLoader", Constants.CONFIG, "$this$withContext", "configurationLoader", Constants.CONFIG, Constants.CONFIG}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0"})
/* loaded from: classes3.dex */
public final class InitializeStateConfigWithLoader$doWork$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Configuration>>, Object> {
    final /* synthetic */ InitializeStateConfigWithLoader.Params $params;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ InitializeStateConfigWithLoader this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateConfigWithLoader$doWork$2(InitializeStateConfigWithLoader initializeStateConfigWithLoader, InitializeStateConfigWithLoader.Params params, Continuation continuation) {
        super(2, continuation);
        this.this$0 = initializeStateConfigWithLoader;
        this.$params = params;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        InitializeStateConfigWithLoader$doWork$2 initializeStateConfigWithLoader$doWork$2 = new InitializeStateConfigWithLoader$doWork$2(this.this$0, this.$params, completion);
        initializeStateConfigWithLoader$doWork$2.L$0 = obj;
        return initializeStateConfigWithLoader$doWork$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends Configuration>> continuation) {
        return ((InitializeStateConfigWithLoader$doWork$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0130 A[Catch: all -> 0x01ca, CancellationException -> 0x01f7, TryCatch #4 {CancellationException -> 0x01f7, all -> 0x01ca, blocks: (B:8:0x001b, B:43:0x0196, B:47:0x01bf, B:13:0x0038, B:37:0x0157, B:39:0x0163, B:44:0x01a2, B:45:0x01b8, B:31:0x012a, B:33:0x0130, B:46:0x01b9, B:30:0x0120, B:21:0x0061), top: B:66:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0163 A[Catch: all -> 0x01ca, CancellationException -> 0x01f7, TryCatch #4 {CancellationException -> 0x01f7, all -> 0x01ca, blocks: (B:8:0x001b, B:43:0x0196, B:47:0x01bf, B:13:0x0038, B:37:0x0157, B:39:0x0163, B:44:0x01a2, B:45:0x01b8, B:31:0x012a, B:33:0x0130, B:46:0x01b9, B:30:0x0120, B:21:0x0061), top: B:66:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01a2 A[Catch: all -> 0x01ca, CancellationException -> 0x01f7, TryCatch #4 {CancellationException -> 0x01f7, all -> 0x01ca, blocks: (B:8:0x001b, B:43:0x0196, B:47:0x01bf, B:13:0x0038, B:37:0x0157, B:39:0x0163, B:44:0x01a2, B:45:0x01b8, B:31:0x012a, B:33:0x0130, B:46:0x01b9, B:30:0x0120, B:21:0x0061), top: B:66:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01b9 A[Catch: all -> 0x01ca, CancellationException -> 0x01f7, TryCatch #4 {CancellationException -> 0x01f7, all -> 0x01ca, blocks: (B:8:0x001b, B:43:0x0196, B:47:0x01bf, B:13:0x0038, B:37:0x0157, B:39:0x0163, B:44:0x01a2, B:45:0x01b8, B:31:0x012a, B:33:0x0130, B:46:0x01b9, B:30:0x0120, B:21:0x0061), top: B:66:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01e2  */
    /* JADX WARN: Type inference failed for: r0v16, types: [T, com.unity3d.services.core.configuration.Configuration] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.unity3d.services.core.configuration.IConfigurationLoader, T] */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.unity3d.services.core.configuration.IConfigurationLoader, T] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r23) {
        /*
            Method dump skipped, instructions count: 507
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader$doWork$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

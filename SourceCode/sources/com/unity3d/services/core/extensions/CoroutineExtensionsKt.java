package com.unity3d.services.core.extensions;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CoroutineExtensions.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a.\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0086\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\u0010\u0005\u001a.\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0086\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\u0010\u0005\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b\u009920\u0001¨\u0006\u0007"}, d2 = {"runReturnSuspendCatching", "Lkotlin/Result;", "R", "block", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "runSuspendCatching", "unity-ads_release"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class CoroutineExtensionsKt {
    public static final <R> Object runSuspendCatching(Function0<? extends R> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            Result.Companion companion = Result.Companion;
            return Result.m501constructorimpl(block.invoke());
        } catch (CancellationException e2) {
            throw e2;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m501constructorimpl(ResultKt.createFailure(th));
        }
    }

    public static final <R> Object runReturnSuspendCatching(Function0<? extends R> block) {
        Object m501constructorimpl;
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            Result.Companion companion = Result.Companion;
            m501constructorimpl = Result.m501constructorimpl(block.invoke());
        } catch (CancellationException e2) {
            throw e2;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m501constructorimpl = Result.m501constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m508isSuccessimpl(m501constructorimpl)) {
            Result.Companion companion3 = Result.Companion;
            return Result.m501constructorimpl(m501constructorimpl);
        }
        Throwable m504exceptionOrNullimpl = Result.m504exceptionOrNullimpl(m501constructorimpl);
        if (m504exceptionOrNullimpl != null) {
            Result.Companion companion4 = Result.Companion;
            return Result.m501constructorimpl(ResultKt.createFailure(m504exceptionOrNullimpl));
        }
        return m501constructorimpl;
    }
}

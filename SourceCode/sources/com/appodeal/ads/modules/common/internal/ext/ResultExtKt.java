package com.appodeal.ads.modules.common.internal.ext;

import com.appnext.base.b.f;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001e\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003ø\u0001\u0000¢\u0006\u0002\u0010\u0004\u001a\u001e\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\u0004\b\u0000\u0010\u0006*\u0002H\u0006ø\u0001\u0000¢\u0006\u0002\u0010\u0007\u001aJ\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0006\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00060\u00012\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u0002H\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00010\nH\u0086\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\u0010\u000b\u001a>\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u0002H\u00060\u00012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\nH\u0086\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\u0010\u000b\u001a8\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u0002H\u00060\u00012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0086\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\u0010\u0010\u001aS\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u0002H\u00060\u00012'\u0010\u0012\u001a#\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0015\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\nH\u0086\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\u0010\u000b\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b\u009920\u0001¨\u0006\u0016"}, d2 = {"asFailure", "Lkotlin/Result;", "R", "", "(Ljava/lang/Throwable;)Ljava/lang/Object;", "asSuccess", "T", "(Ljava/lang/Object;)Ljava/lang/Object;", "flatMap", f.TAG, "Lkotlin/Function1;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "mapError", "onAny", "Lkotlin/Function0;", "", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "recoverFromError", "transform", "Lkotlin/ParameterName;", "name", "cause", "apd_internal"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ResultExtKt {
    public static final <R> Object asFailure(Throwable th) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        Result.Companion companion = Result.Companion;
        return Result.m501constructorimpl(ResultKt.createFailure(th));
    }

    public static final <T> Object asSuccess(T t) {
        Result.Companion companion = Result.Companion;
        return Result.m501constructorimpl(t);
    }

    public static final <T, R> Object flatMap(Object obj, Function1<? super T, ? extends Result<? extends R>> f2) {
        Object createFailure;
        Intrinsics.checkNotNullParameter(f2, "f");
        Throwable m504exceptionOrNullimpl = Result.m504exceptionOrNullimpl(obj);
        if (m504exceptionOrNullimpl == null) {
            try {
                return f2.invoke(obj).m510unboximpl();
            } catch (Throwable th) {
                Result.Companion companion = Result.Companion;
                createFailure = ResultKt.createFailure(th);
            }
        } else {
            Result.Companion companion2 = Result.Companion;
            createFailure = ResultKt.createFailure(m504exceptionOrNullimpl);
        }
        return Result.m501constructorimpl(createFailure);
    }

    public static final <T> Object mapError(Object obj, Function1<? super Throwable, ? extends Throwable> f2) {
        Intrinsics.checkNotNullParameter(f2, "f");
        Throwable m504exceptionOrNullimpl = Result.m504exceptionOrNullimpl(obj);
        if (m504exceptionOrNullimpl == null) {
            return obj;
        }
        Result.Companion companion = Result.Companion;
        return Result.m501constructorimpl(ResultKt.createFailure(f2.invoke(m504exceptionOrNullimpl)));
    }

    public static final <T> Object onAny(Object obj, Function0<Unit> f2) {
        Intrinsics.checkNotNullParameter(f2, "f");
        f2.invoke();
        return obj;
    }

    public static final <T> Object recoverFromError(Object obj, Function1<? super Throwable, ? extends Result<? extends T>> transform) {
        Intrinsics.checkNotNullParameter(transform, "transform");
        Throwable m504exceptionOrNullimpl = Result.m504exceptionOrNullimpl(obj);
        return m504exceptionOrNullimpl == null ? obj : transform.invoke(m504exceptionOrNullimpl).m510unboximpl();
    }
}

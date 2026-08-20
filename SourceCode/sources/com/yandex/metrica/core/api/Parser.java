package com.yandex.metrica.core.api;

import kotlin.Result;
import kotlin.ResultKt;
/* loaded from: classes3.dex */
public interface Parser {

    /* loaded from: classes3.dex */
    public final class DefaultImpls {
        public static Object parseOrNull(Parser parser, Object obj) {
            Object m501constructorimpl;
            try {
                m501constructorimpl = Result.m501constructorimpl(parser.parse(obj));
            } catch (Throwable th) {
                m501constructorimpl = Result.m501constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m507isFailureimpl(m501constructorimpl)) {
                return null;
            }
            return m501constructorimpl;
        }
    }

    Object parse(Object obj);

    Object parseOrNull(Object obj);
}

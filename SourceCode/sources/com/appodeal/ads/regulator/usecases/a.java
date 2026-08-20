package com.appodeal.ads.regulator.usecases;

import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.common.internal.ext.ResultExtKt;
import com.appodeal.consent.Consent;
import com.appodeal.consent.ConsentInfoUpdateListener;
import com.appodeal.consent.ConsentManager;
import com.appodeal.consent.ConsentManagerError;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final ConsentManager f7429a;

    @DebugMetadata(c = "com.appodeal.ads.regulator.usecases.LoadConsentUseCase", f = "LoadConsentUseCase.kt", i = {0, 0, 0, 0, 0, 0}, l = {48}, m = "invoke-hUnOzRk", n = {"this", "context", Constants.APP_KEY, "status", "zone", "publisherConsent"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5"})
    /* renamed from: com.appodeal.ads.regulator.usecases.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0142a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        public /* synthetic */ Object f7430a;

        /* renamed from: c  reason: collision with root package name */
        public int f7432c;

        public C0142a(Continuation<? super C0142a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f7430a = obj;
            this.f7432c |= Integer.MIN_VALUE;
            Object a2 = a.this.a(null, null, null, null, null, this);
            return a2 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? a2 : Result.m500boximpl(a2);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends ConsentInfoUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ CancellableContinuation<Result<com.appodeal.ads.regulator.data.a>> f7433a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ a f7434b;

        public b(CancellableContinuationImpl cancellableContinuationImpl, a aVar) {
            this.f7433a = cancellableContinuationImpl;
            this.f7434b = aVar;
        }

        @Override // com.appodeal.consent.ConsentInfoUpdateListener, com.appodeal.consent.IConsentInfoUpdateListener
        public final void onConsentInfoUpdated(Consent consent) {
            Intrinsics.checkNotNullParameter(consent, "consent");
            CancellableContinuation<Result<com.appodeal.ads.regulator.data.a>> cancellableContinuation = this.f7433a;
            Result.Companion companion = Result.Companion;
            this.f7434b.f7429a;
            cancellableContinuation.resumeWith(Result.m501constructorimpl(Result.m500boximpl(ResultExtKt.asSuccess(new com.appodeal.ads.regulator.data.a(consent, ConsentManager.getShouldShow())))));
        }

        @Override // com.appodeal.consent.ConsentInfoUpdateListener, com.appodeal.consent.IConsentInfoUpdateListener
        public final void onFailedToUpdateConsentInfo(ConsentManagerError error) {
            Intrinsics.checkNotNullParameter(error, "error");
            CancellableContinuation<Result<com.appodeal.ads.regulator.data.a>> cancellableContinuation = this.f7433a;
            Result.Companion companion = Result.Companion;
            cancellableContinuation.resumeWith(Result.m501constructorimpl(Result.m500boximpl(ResultExtKt.asFailure(new Throwable(error.toString())))));
        }
    }

    public a(ConsentManager consentManager) {
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        this.f7429a = consentManager;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(android.content.Context r13, java.lang.String r14, com.appodeal.consent.Consent.Status r15, com.appodeal.consent.Consent.Zone r16, com.appodeal.consent.Consent r17, kotlin.coroutines.Continuation<? super kotlin.Result<com.appodeal.ads.regulator.data.a>> r18) {
        /*
            r12 = this;
            r0 = r12
            r1 = r18
            boolean r2 = r1 instanceof com.appodeal.ads.regulator.usecases.a.C0142a
            if (r2 == 0) goto L16
            r2 = r1
            com.appodeal.ads.regulator.usecases.a$a r2 = (com.appodeal.ads.regulator.usecases.a.C0142a) r2
            int r3 = r2.f7432c
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L16
            int r3 = r3 - r4
            r2.f7432c = r3
            goto L1b
        L16:
            com.appodeal.ads.regulator.usecases.a$a r2 = new com.appodeal.ads.regulator.usecases.a$a
            r2.<init>(r1)
        L1b:
            java.lang.Object r1 = r2.f7430a
            java.lang.Object r3 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r4 = r2.f7432c
            r5 = 1
            if (r4 == 0) goto L34
            if (r4 != r5) goto L2c
            kotlin.ResultKt.throwOnFailure(r1)
            goto L76
        L2c:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L34:
            kotlin.ResultKt.throwOnFailure(r1)
            r2.getClass()
            r2.getClass()
            r2.getClass()
            r2.getClass()
            r2.getClass()
            r2.getClass()
            r2.f7432c = r5
            kotlinx.coroutines.CancellableContinuationImpl r1 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r4 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r2)
            r1.<init>(r4, r5)
            r1.initCancellability()
            com.appodeal.ads.regulator.usecases.a$b r8 = new com.appodeal.ads.regulator.usecases.a$b
            r8.<init>(r1, r12)
            r6 = r13
            r7 = r14
            r9 = r17
            r10 = r15
            r11 = r16
            com.appodeal.consent.ConsentManager.requestConsentInfoUpdate(r6, r7, r8, r9, r10, r11)
            java.lang.Object r1 = r1.getResult()
            java.lang.Object r4 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r1 != r4) goto L73
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r2)
        L73:
            if (r1 != r3) goto L76
            return r3
        L76:
            kotlin.Result r1 = (kotlin.Result) r1
            java.lang.Object r1 = r1.m510unboximpl()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.regulator.usecases.a.a(android.content.Context, java.lang.String, com.appodeal.consent.Consent$Status, com.appodeal.consent.Consent$Zone, com.appodeal.consent.Consent, kotlin.coroutines.Continuation):java.lang.Object");
    }
}

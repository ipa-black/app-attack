package com.appodeal.ads.services;

import androidx.core.app.NotificationCompat;
import com.appodeal.ads.modules.common.internal.log.InternalLogKt;
import com.appodeal.ads.modules.common.internal.service.Service;
import com.appodeal.ads.modules.common.internal.service.ServiceInfo;
import com.appodeal.ads.modules.common.internal.service.ServiceVariant;
import com.appodeal.ads.modules.common.internal.service.ServicesRegistry;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* loaded from: classes2.dex */
public final class a implements ServicesRegistry {

    /* renamed from: a  reason: collision with root package name */
    public final EnumMap f7545a = new EnumMap(ServiceVariant.class);

    @DebugMetadata(c = "com.appodeal.ads.services.ServicesRegistryImpl", f = "ServicesRegistryImpl.kt", i = {0}, l = {48}, m = "initService-0E7RQCE", n = {NotificationCompat.CATEGORY_SERVICE}, s = {"L$0"})
    /* renamed from: com.appodeal.ads.services.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0144a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        public Service f7546a;

        /* renamed from: b  reason: collision with root package name */
        public /* synthetic */ Object f7547b;

        /* renamed from: d  reason: collision with root package name */
        public int f7549d;

        public C0144a(Continuation<? super C0144a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f7547b = obj;
            this.f7549d |= Integer.MIN_VALUE;
            Object a2 = a.this.a(null, null, this);
            return a2 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? a2 : Result.m500boximpl(a2);
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.services.ServicesRegistryImpl", f = "ServicesRegistryImpl.kt", i = {}, l = {17, 18, 19, 20, 21, 22}, m = "initialize-gIAlu-s", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        public /* synthetic */ Object f7550a;

        /* renamed from: c  reason: collision with root package name */
        public int f7552c;

        public b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f7550a = obj;
            this.f7552c |= Integer.MIN_VALUE;
            Object mo147initializegIAlus = a.this.mo147initializegIAlus(null, this);
            return mo147initializegIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? mo147initializegIAlus : Result.m500boximpl(mo147initializegIAlus);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009a A[Catch: Exception -> 0x0033, all -> 0x00b6, TryCatch #1 {Exception -> 0x0033, blocks: (B:12:0x0029, B:38:0x0094, B:40:0x009a, B:41:0x00a3, B:35:0x0089), top: B:48:0x0023, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a3 A[Catch: Exception -> 0x0033, all -> 0x00b6, TRY_LEAVE, TryCatch #1 {Exception -> 0x0033, blocks: (B:12:0x0029, B:38:0x0094, B:40:0x009a, B:41:0x00a3, B:35:0x0089), top: B:48:0x0023, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.appodeal.ads.modules.common.internal.service.ServiceVariant r7, com.appodeal.ads.modules.common.internal.service.ServiceOptions r8, kotlin.coroutines.Continuation<? super kotlin.Result<? extends com.appodeal.ads.modules.common.internal.service.Service<? extends com.appodeal.ads.modules.common.internal.service.ServiceOptions>>> r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof com.appodeal.ads.services.a.C0144a
            if (r0 == 0) goto L13
            r0 = r9
            com.appodeal.ads.services.a$a r0 = (com.appodeal.ads.services.a.C0144a) r0
            int r1 = r0.f7549d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f7549d = r1
            goto L18
        L13:
            com.appodeal.ads.services.a$a r0 = new com.appodeal.ads.services.a$a
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f7547b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f7549d
            java.lang.String r3 = "ServicesRegistry"
            r4 = 1
            if (r2 == 0) goto L3e
            if (r2 != r4) goto L36
            com.appodeal.ads.modules.common.internal.service.Service r7 = r0.f7546a
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Exception -> L33 java.lang.Throwable -> Lb6
            kotlin.Result r9 = (kotlin.Result) r9     // Catch: java.lang.Exception -> L33 java.lang.Throwable -> Lb6
            java.lang.Object r8 = r9.m510unboximpl()     // Catch: java.lang.Exception -> L33 java.lang.Throwable -> Lb6
            goto L94
        L33:
            r8 = move-exception
            goto La8
        L36:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3e:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlin.Result$Companion r9 = kotlin.Result.Companion     // Catch: java.lang.Throwable -> Lb6
            java.util.EnumMap r9 = r6.f7545a     // Catch: java.lang.Throwable -> Lb6
            java.lang.Object r9 = r9.remove(r7)     // Catch: java.lang.Throwable -> Lb6
            boolean r2 = r9 instanceof com.appodeal.ads.modules.common.internal.service.Service     // Catch: java.lang.Throwable -> Lb6
            r5 = 0
            if (r2 == 0) goto L51
            com.appodeal.ads.modules.common.internal.service.Service r9 = (com.appodeal.ads.modules.common.internal.service.Service) r9     // Catch: java.lang.Throwable -> Lb6
            goto L52
        L51:
            r9 = r5
        L52:
            if (r9 != 0) goto L7e
            java.lang.String r7 = r7.getClassName()     // Catch: java.lang.Throwable -> Lb6
            java.lang.Class<com.appodeal.ads.services.a> r9 = com.appodeal.ads.services.a.class
            java.lang.ClassLoader r9 = r9.getClassLoader()     // Catch: java.lang.Throwable -> Lb6
            r2 = 0
            java.lang.Class r7 = java.lang.Class.forName(r7, r2, r9)     // Catch: java.lang.Throwable -> Lb6
            if (r7 == 0) goto L76
            java.lang.Object r7 = r7.newInstance()     // Catch: java.lang.Throwable -> Lb6
            if (r7 == 0) goto L6e
            com.appodeal.ads.modules.common.internal.service.Service r7 = (com.appodeal.ads.modules.common.internal.service.Service) r7     // Catch: java.lang.Throwable -> Lb6
            goto L7f
        L6e:
            java.lang.NullPointerException r7 = new java.lang.NullPointerException     // Catch: java.lang.Throwable -> Lb6
            java.lang.String r8 = "null cannot be cast to non-null type com.appodeal.ads.modules.common.internal.service.Service<com.appodeal.ads.modules.common.internal.service.ServiceOptions>"
            r7.<init>(r8)     // Catch: java.lang.Throwable -> Lb6
            throw r7     // Catch: java.lang.Throwable -> Lb6
        L76:
            java.lang.NullPointerException r7 = new java.lang.NullPointerException     // Catch: java.lang.Throwable -> Lb6
            java.lang.String r8 = "null cannot be cast to non-null type java.lang.Class<com.appodeal.ads.modules.common.internal.service.Service<Options of com.appodeal.ads.services.ServicesRegistryImpl.obtainServiceClass>>"
            r7.<init>(r8)     // Catch: java.lang.Throwable -> Lb6
            throw r7     // Catch: java.lang.Throwable -> Lb6
        L7e:
            r7 = r9
        L7f:
            java.lang.String r9 = "service: "
            java.lang.String r9 = kotlin.jvm.internal.Intrinsics.stringPlus(r9, r7)     // Catch: java.lang.Throwable -> Lb6
            r2 = 4
            com.appodeal.ads.modules.common.internal.log.InternalLogKt.logInternal$default(r3, r9, r5, r2, r5)     // Catch: java.lang.Throwable -> Lb6
            r0.f7546a = r7     // Catch: java.lang.Exception -> L33 java.lang.Throwable -> Lb6
            r0.f7549d = r4     // Catch: java.lang.Exception -> L33 java.lang.Throwable -> Lb6
            java.lang.Object r8 = r7.m146initializegIAlus(r8, r0)     // Catch: java.lang.Exception -> L33 java.lang.Throwable -> Lb6
            if (r8 != r1) goto L94
            return r1
        L94:
            boolean r9 = kotlin.Result.m508isSuccessimpl(r8)     // Catch: java.lang.Exception -> L33 java.lang.Throwable -> Lb6
            if (r9 == 0) goto La3
            kotlin.Result$Companion r9 = kotlin.Result.Companion     // Catch: java.lang.Exception -> L33 java.lang.Throwable -> Lb6
            kotlin.Unit r8 = (kotlin.Unit) r8     // Catch: java.lang.Exception -> L33 java.lang.Throwable -> Lb6
            java.lang.Object r7 = kotlin.Result.m501constructorimpl(r7)     // Catch: java.lang.Exception -> L33 java.lang.Throwable -> Lb6
            goto Lb5
        La3:
            java.lang.Object r7 = kotlin.Result.m501constructorimpl(r8)     // Catch: java.lang.Exception -> L33 java.lang.Throwable -> Lb6
            goto Lb5
        La8:
            java.lang.String r9 = "service error: "
            java.lang.String r7 = kotlin.jvm.internal.Intrinsics.stringPlus(r9, r7)     // Catch: java.lang.Throwable -> Lb6
            com.appodeal.ads.modules.common.internal.log.InternalLogKt.logInternal(r3, r7, r8)     // Catch: java.lang.Throwable -> Lb6
            java.lang.Object r7 = com.appodeal.ads.modules.common.internal.ext.ResultExtKt.asFailure(r8)     // Catch: java.lang.Throwable -> Lb6
        Lb5:
            return r7
        Lb6:
            r7 = move-exception
            kotlin.Result$Companion r8 = kotlin.Result.Companion
            java.lang.Object r7 = kotlin.ResultKt.createFailure(r7)
            java.lang.Object r7 = kotlin.Result.m501constructorimpl(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.services.a.a(com.appodeal.ads.modules.common.internal.service.ServiceVariant, com.appodeal.ads.modules.common.internal.service.ServiceOptions, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.appodeal.ads.modules.common.internal.service.ServicesRegistry
    public final List<ServiceInfo> getAvailableServicesInfo() {
        Service service;
        Class<?> cls;
        ServiceVariant[] values = ServiceVariant.values();
        ArrayList arrayList = new ArrayList();
        int length = values.length;
        int i = 0;
        while (i < length) {
            ServiceVariant serviceVariant = values[i];
            i++;
            try {
                cls = Class.forName(serviceVariant.getClassName(), false, a.class.getClassLoader());
            } catch (Exception e2) {
                InternalLogKt.logInternal("ServicesRegistry", "service error:", e2);
                service = null;
            }
            if (cls != null) {
                Object newInstance = cls.newInstance();
                if (newInstance != null) {
                    service = (Service) newInstance;
                    this.f7545a.put((EnumMap) serviceVariant, (ServiceVariant) service);
                    if (service != null) {
                        arrayList.add(service);
                    }
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.appodeal.ads.modules.common.internal.service.Service<com.appodeal.ads.modules.common.internal.service.ServiceOptions>");
                }
            } else {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.Class<com.appodeal.ads.modules.common.internal.service.Service<Options of com.appodeal.ads.services.ServicesRegistryImpl.obtainServiceClass>>");
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((Service) it.next()).getInfo());
        }
        return arrayList2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0069  */
    @Override // com.appodeal.ads.modules.common.internal.service.ServicesRegistry
    /* renamed from: initialize-gIAlu-s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo147initializegIAlus(com.appodeal.ads.modules.common.internal.service.ServiceOptions r5, kotlin.coroutines.Continuation<? super kotlin.Result<? extends com.appodeal.ads.modules.common.internal.service.Service<? extends com.appodeal.ads.modules.common.internal.service.ServiceOptions>>> r6) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.services.a.mo147initializegIAlus(com.appodeal.ads.modules.common.internal.service.ServiceOptions, kotlin.coroutines.Continuation):java.lang.Object");
    }
}

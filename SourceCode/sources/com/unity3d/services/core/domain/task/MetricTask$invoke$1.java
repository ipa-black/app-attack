package com.unity3d.services.core.domain.task;

import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.onesignal.outcomes.data.OutcomeEventsTable;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MetricTask.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\n\b\u0000\u0010\u0002 \u0000*\u00020\u0003\"\u0004\b\u0001\u0010\u00042\u0006\u0010\u0005\u001a\u0002H\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0007H\u0096B"}, d2 = {"invoke", "", "P", "Lcom/unity3d/services/core/domain/task/BaseParams;", "R", OutcomeEventsTable.COLUMN_NAME_PARAMS, "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 2})
@DebugMetadata(c = "com.unity3d.services.core.domain.task.MetricTask", f = "MetricTask.kt", i = {0, 0, 0}, l = {23}, m = "invoke$suspendImpl", n = {"this", IronSourceConstants.EVENTS_RESULT, "start$iv"}, s = {"L$0", "L$1", "J$0"})
/* loaded from: classes3.dex */
public final class MetricTask$invoke$1 extends ContinuationImpl {
    long J$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ MetricTask this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MetricTask$invoke$1(MetricTask metricTask, Continuation continuation) {
        super(continuation);
        this.this$0 = metricTask;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return MetricTask.invoke$suspendImpl(this.this$0, null, this);
    }
}

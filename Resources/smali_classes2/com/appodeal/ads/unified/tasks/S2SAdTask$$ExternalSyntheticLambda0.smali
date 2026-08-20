.class public final synthetic Lcom/appodeal/ads/unified/tasks/S2SAdTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/appodeal/ads/unified/tasks/AdParamsResolverCallback;


# instance fields
.field public final synthetic f$0:Lcom/appodeal/ads/unified/tasks/S2SAdTask;


# direct methods
.method public synthetic constructor <init>(Lcom/appodeal/ads/unified/tasks/S2SAdTask;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask$$ExternalSyntheticLambda0;->f$0:Lcom/appodeal/ads/unified/tasks/S2SAdTask;

    return-void
.end method


# virtual methods
.method public final onResolve(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask$$ExternalSyntheticLambda0;->f$0:Lcom/appodeal/ads/unified/tasks/S2SAdTask;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->notifySuccess(Ljava/lang/Object;)V

    return-void
.end method

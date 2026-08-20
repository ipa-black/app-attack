.class Lcom/appodeal/ads/unified/tasks/S2SAdTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/unified/tasks/AdParamsProcessorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/unified/tasks/S2SAdTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appodeal/ads/unified/tasks/AdParamsProcessorCallback<",
        "TResponseType;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/appodeal/ads/unified/tasks/S2SAdTask;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/tasks/S2SAdTask;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask$1;->this$0:Lcom/appodeal/ads/unified/tasks/S2SAdTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessFail(Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask$1;->this$0:Lcom/appodeal/ads/unified/tasks/S2SAdTask;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->notifyFail(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public onProcessSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponseType;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask$1;->this$0:Lcom/appodeal/ads/unified/tasks/S2SAdTask;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->onParamsProcessSuccess(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask$1;->this$0:Lcom/appodeal/ads/unified/tasks/S2SAdTask;

    invoke-static {v0}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->access$100(Lcom/appodeal/ads/unified/tasks/S2SAdTask;)Lcom/appodeal/ads/unified/tasks/AdParamsResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask$1;->this$0:Lcom/appodeal/ads/unified/tasks/S2SAdTask;

    invoke-static {v1}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->access$000(Lcom/appodeal/ads/unified/tasks/S2SAdTask;)Lcom/appodeal/ads/unified/tasks/AdParamsResolverCallback;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/appodeal/ads/unified/tasks/AdParamsResolver;->processResponse(Ljava/lang/Object;Lcom/appodeal/ads/unified/tasks/AdParamsResolverCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask$1;->this$0:Lcom/appodeal/ads/unified/tasks/S2SAdTask;

    sget-object v0, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p1, v0}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->notifyFail(Lcom/appodeal/ads/networking/LoadingError;)V

    :goto_0
    return-void
.end method

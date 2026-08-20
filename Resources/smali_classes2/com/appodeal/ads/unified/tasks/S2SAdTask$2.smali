.class Lcom/appodeal/ads/unified/tasks/S2SAdTask$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/unified/tasks/S2SAdTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/ads/RestrictedData;Lcom/appodeal/ads/unified/tasks/AdResponseProcessor;Lcom/appodeal/ads/unified/tasks/AdParamsResolver;Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/appodeal/ads/unified/tasks/S2SAdTask;

.field public final synthetic val$callback:Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/tasks/S2SAdTask;Landroid/os/Looper;Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask$2;->this$0:Lcom/appodeal/ads/unified/tasks/S2SAdTask;

    iput-object p3, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask$2;->val$callback:Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;

    iput-object p4, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask$2;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask$2;->val$callback:Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;

    if-eqz v0, :cond_2

    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask$2;->val$context:Landroid/content/Context;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;->onSuccess(Landroid/content/Context;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/appodeal/ads/networking/LoadingError;

    invoke-interface {v0, p1}, Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;->onFail(Lcom/appodeal/ads/networking/LoadingError;)V

    :cond_2
    :goto_0
    return-void
.end method

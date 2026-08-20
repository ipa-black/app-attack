.class Lio/bidmachine/AdResponse$2;
.super Ljava/lang/Object;
.source "AdResponse.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdResponse;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/AdResponse;


# direct methods
.method constructor <init>(Lio/bidmachine/AdResponse;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lio/bidmachine/AdResponse$2;->this$0:Lio/bidmachine/AdResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 342
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/AdResponse$2;->this$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/AdResponse;->access$500(Lio/bidmachine/AdResponse;)Lio/bidmachine/models/AdObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lio/bidmachine/AdResponse$2;->this$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/AdResponse;->access$500(Lio/bidmachine/AdResponse;)Lio/bidmachine/models/AdObject;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/models/AdObject;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 346
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    .line 349
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/bidmachine/AdResponse$2;->this$0:Lio/bidmachine/AdResponse;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/bidmachine/AdResponse;->access$502(Lio/bidmachine/AdResponse;Lio/bidmachine/models/AdObject;)Lio/bidmachine/models/AdObject;

    return-void
.end method

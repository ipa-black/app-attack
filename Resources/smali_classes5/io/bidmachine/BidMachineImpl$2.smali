.class Lio/bidmachine/BidMachineImpl$2;
.super Ljava/lang/Object;
.source "BidMachineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/BidMachineImpl;->initialize(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/BidMachineImpl;

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$sourceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/bidmachine/BidMachineImpl;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lio/bidmachine/BidMachineImpl$2;->this$0:Lio/bidmachine/BidMachineImpl;

    iput-object p2, p0, Lio/bidmachine/BidMachineImpl$2;->val$applicationContext:Landroid/content/Context;

    iput-object p3, p0, Lio/bidmachine/BidMachineImpl$2;->val$sourceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 150
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl$2;->val$applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/Debugger;->setup(Landroid/content/Context;)V

    .line 152
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl$2;->this$0:Lio/bidmachine/BidMachineImpl;

    invoke-static {v0}, Lio/bidmachine/BidMachineImpl;->access$000(Lio/bidmachine/BidMachineImpl;)Lio/bidmachine/IABSharedPreference;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/BidMachineImpl$2;->val$applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/bidmachine/IABSharedPreference;->initialize(Landroid/content/Context;)V

    .line 153
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl$2;->this$0:Lio/bidmachine/BidMachineImpl;

    iget-object v1, p0, Lio/bidmachine/BidMachineImpl$2;->val$applicationContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lio/bidmachine/BidMachineImpl;->access$100(Lio/bidmachine/BidMachineImpl;Landroid/content/Context;)V

    .line 154
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl$2;->this$0:Lio/bidmachine/BidMachineImpl;

    iget-object v1, p0, Lio/bidmachine/BidMachineImpl$2;->val$applicationContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/BidMachineImpl;->initializeNetworks(Landroid/content/Context;Lio/bidmachine/NetworkRegistry$NetworksInitializeCallback;)V

    .line 156
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl$2;->this$0:Lio/bidmachine/BidMachineImpl;

    invoke-virtual {v0}, Lio/bidmachine/BidMachineImpl;->notifyInitializationFinished()V

    .line 158
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl$2;->this$0:Lio/bidmachine/BidMachineImpl;

    iget-object v1, p0, Lio/bidmachine/BidMachineImpl$2;->val$applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lio/bidmachine/BidMachineImpl$2;->val$sourceId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lio/bidmachine/BidMachineImpl;->access$200(Lio/bidmachine/BidMachineImpl;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 160
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

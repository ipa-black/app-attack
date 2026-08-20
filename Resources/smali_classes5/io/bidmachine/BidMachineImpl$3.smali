.class Lio/bidmachine/BidMachineImpl$3;
.super Ljava/lang/Object;
.source "BidMachineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/BidMachineImpl;->sendOnInitialized(Lio/bidmachine/InitializationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lio/bidmachine/InitializationCallback;


# direct methods
.method constructor <init>(Lio/bidmachine/InitializationCallback;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lio/bidmachine/BidMachineImpl$3;->val$callback:Lio/bidmachine/InitializationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 187
    iget-object v0, p0, Lio/bidmachine/BidMachineImpl$3;->val$callback:Lio/bidmachine/InitializationCallback;

    invoke-interface {v0}, Lio/bidmachine/InitializationCallback;->onInitialized()V

    return-void
.end method

.class Lio/bidmachine/NetworkRegistry$NetworkLoadTask$InitializationCallback;
.super Ljava/lang/Object;
.source "NetworkRegistry.java"

# interfaces
.implements Lio/bidmachine/InternalNetworkInitializationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/NetworkRegistry$NetworkLoadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitializationCallback"
.end annotation


# instance fields
.field private final weakNetworkLoadTask:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/NetworkRegistry$NetworkLoadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/NetworkRegistry$NetworkLoadTask;)V
    .locals 1

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask$InitializationCallback;->weakNetworkLoadTask:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onFail(Lio/bidmachine/NetworkAdapter;Ljava/lang/String;)V
    .locals 0

    .line 365
    iget-object p1, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask$InitializationCallback;->weakNetworkLoadTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;

    if-eqz p1, :cond_0

    .line 367
    invoke-virtual {p1, p2}, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->onInitializationFail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lio/bidmachine/NetworkAdapter;)V
    .locals 1

    .line 356
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask$InitializationCallback;->weakNetworkLoadTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0, p1}, Lio/bidmachine/NetworkRegistry$NetworkLoadTask;->onInitializationSuccess(Lio/bidmachine/NetworkAdapter;)V

    :cond_0
    return-void
.end method

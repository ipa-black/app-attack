.class Lio/bidmachine/AdResponse$ExpiredRunnable;
.super Ljava/lang/Object;
.source "AdResponse.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExpiredRunnable"
.end annotation


# instance fields
.field private final weakAdResponse:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/AdResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/AdResponse;)V
    .locals 1

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 856
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/bidmachine/AdResponse$ExpiredRunnable;->weakAdResponse:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 861
    iget-object v0, p0, Lio/bidmachine/AdResponse$ExpiredRunnable;->weakAdResponse:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/AdResponse;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, v0, Lio/bidmachine/AdResponse;->adCallbackComposite:Lio/bidmachine/AdResponse$AdProcessCallbackComposite;

    invoke-virtual {v0}, Lio/bidmachine/AdResponse$AdProcessCallbackComposite;->processExpired()V

    :cond_0
    return-void
.end method

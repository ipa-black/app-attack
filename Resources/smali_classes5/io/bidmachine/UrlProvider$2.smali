.class Lio/bidmachine/UrlProvider$2;
.super Ljava/util/concurrent/ConcurrentLinkedQueue;
.source "UrlProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/UrlProvider;->getAuctionUrlQueue()Ljava/util/Queue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentLinkedQueue<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 86
    invoke-static {}, Lio/bidmachine/UrlProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/UrlProvider$2;->add(Ljava/lang/Object;)Z

    return-void
.end method

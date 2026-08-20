.class public final Lcom/appodeal/ads/utils/x$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/utils/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Z

.field public final synthetic c:Lcom/appodeal/ads/utils/x;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/utils/x;Landroid/content/Context;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appodeal/ads/utils/x$c;->c:Lcom/appodeal/ads/utils/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appodeal/ads/utils/x$c;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/appodeal/ads/utils/x$c;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/utils/x$c;->c:Lcom/appodeal/ads/utils/x;

    invoke-static {v0}, Lcom/appodeal/ads/utils/x;->a(Lcom/appodeal/ads/utils/x;)J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/appodeal/ads/utils/x$c;->b:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/appodeal/ads/utils/x$c;->c:Lcom/appodeal/ads/utils/x;

    iget-object v3, p0, Lcom/appodeal/ads/utils/x$c;->a:Landroid/content/Context;

    invoke-static {v2, v3, v0, v1}, Lcom/appodeal/ads/utils/x;->a(Lcom/appodeal/ads/utils/x;Landroid/content/Context;J)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/appodeal/ads/modules/libs/network/NetworkStatus;->INSTANCE:Lcom/appodeal/ads/modules/libs/network/NetworkStatus;

    invoke-virtual {v0}, Lcom/appodeal/ads/modules/libs/network/NetworkStatus;->isConnected()Z

    move-result v0

    const-string v1, "sendSessions"

    const-string v2, "SessionManager"

    if-nez v0, :cond_2

    const-string v0, "skip: no network connection"

    invoke-static {v2, v1, v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/utils/x$c;->c:Lcom/appodeal/ads/utils/x;

    iget-object v1, p0, Lcom/appodeal/ads/utils/x$c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/appodeal/ads/utils/x;->c(Lcom/appodeal/ads/utils/x;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/appodeal/ads/utils/x;->a(Lcom/appodeal/ads/utils/x;Landroid/content/Context;J)V

    goto :goto_1

    :cond_2
    const-string v0, "start"

    invoke-static {v2, v1, v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/appodeal/ads/k0;->c()V

    :goto_1
    return-void
.end method

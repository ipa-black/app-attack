.class public final Lcom/appodeal/ads/utils/x$b;
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
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/utils/x;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/utils/x;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appodeal/ads/utils/x$b;->a:Lcom/appodeal/ads/utils/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/appodeal/ads/utils/x$b;->a:Lcom/appodeal/ads/utils/x;

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/x;->m()V

    iget-object v0, p0, Lcom/appodeal/ads/utils/x$b;->a:Lcom/appodeal/ads/utils/x;

    .line 1
    iget-wide v1, v0, Lcom/appodeal/ads/utils/x;->c:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 2
    iget-object v0, v0, Lcom/appodeal/ads/utils/x;->h:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

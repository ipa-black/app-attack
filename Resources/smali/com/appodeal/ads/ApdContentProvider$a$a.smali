.class public final Lcom/appodeal/ads/ApdContentProvider$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/ApdContentProvider$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/appodeal/ads/ApdContentProvider$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/appodeal/ads/ApdContentProvider$a;->b()V

    new-instance v0, Lcom/appodeal/ads/ApdContentProvider$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/ApdContentProvider$a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

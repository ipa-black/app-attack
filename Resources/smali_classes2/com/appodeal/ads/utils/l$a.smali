.class public final Lcom/appodeal/ads/utils/l$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/utils/l;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/appodeal/ads/utils/l$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/utils/l;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/utils/l;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/utils/l$a;->a:Lcom/appodeal/ads/utils/l;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/utils/l$a;->a:Lcom/appodeal/ads/utils/l;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/utils/l;->e:Lcom/appodeal/ads/utils/l$b;

    if-eqz v0, :cond_3

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1}, Lcom/appodeal/ads/utils/l$b;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/appodeal/ads/utils/l$b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/appodeal/ads/utils/l$b;->a()V

    :cond_3
    :goto_0
    return-void
.end method
